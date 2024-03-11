from flask import render_template, request, url_for, redirect
from pokedex import app, db, bcrypt
from flask_login import login_user, logout_user, login_required
from pokedex.models import PokemonType, Pokemon, User

@app.route('/')
def index():
  return render_template('index.html', title='Home Page')

@app.route('/pokedex/types')
@login_required
def pokemon_types():
  types = db.session.scalars(db.select(PokemonType).order_by(PokemonType.tname)).all()
  return render_template('/pokemontype/index.html', 
                         title='Show Pokemon Types',
                         types=types)

@app.route('/pokedex/types/new', methods=['GET', 'POST'])
@login_required
def new_pokemon_type():
  if request.method == 'POST':
    tname = request.form.get('tname')
    # tname = request.form['tname']
    type = PokemonType(tname=tname)
    db.session.add(type)
    db.session.commit()

    return redirect(url_for('pokemon_types'))

  return render_template('/pokemontype/new_pokemon_type.html', 
                         title='New Pokemon Type',
                         )
@app.route('/pokedex/types/<int:id>/edit', methods=['GET', 'POST'])
@login_required
def edit_pokemon_type(id):
  type = db.session.get(PokemonType, id)
  if request.method == 'POST':
    tname = request.form.get('tname')
    # tname = request.form['tname']
    type.tname = tname
    db.session.commit()

    return redirect(url_for('pokemon_types'))

  return render_template('/pokemontype/edit_pokemon_type.html', 
                         title='Edit Pokemon Type',
                         type=type
                         )

@app.route('/pokedex/types/<int:id>/remove')
@login_required
def remove_pokemon_type(id):
  type = db.session.get(PokemonType, id)
  db.session.delete(type)
  db.session.commit()

  return redirect(url_for('pokemon_types'))

@app.route('/pokedex/pokemons')
@login_required
def pokemons():
  pokemon_type = request.args.get('type', None)
  types = db.session.scalars(db.select(PokemonType)).all()
  query = db.select(Pokemon)
  if pokemon_type != None:
    query = query.filter(Pokemon.types.any(PokemonType.tname == pokemon_type))
  pokedex = db.session.scalars(query).all()

  return render_template('/pokemons/index.html',
                         title='Show All Pokemons',
                         pokemons=pokedex,
                         types=types)

@app.route('/pokedex/pokemons/new', methods=['GET', 'POST'])
@login_required
def new_pokemon():

  types = db.session.scalars(db.select(PokemonType)).all()
  if request.method == 'POST':
    pname = request.form.get('pname')
    # pname = request.form['pname']
    height = request.form.get('height')
    weight = request.form.get('weight')
    description = request.form.get('description')
    picture = request.form.get('picture')

    type_id = request.form.getlist('type_id')
    # print(type_id)
    ptypes = []
    for id in type_id:
      ptypes.append(db.session.get(PokemonType, id))

    pokemon = Pokemon(pname=pname,
                      height=height,
                      weight=weight,
                      description=description,
                      picture=picture,
                      types=ptypes)
    db.session.add(pokemon)
    db.session.commit()

    return redirect(url_for('pokemons'))

    

  return render_template('/pokemons/new_pokemon.html',
                         title='New Pokemon',
                         types=types)

@app.route('/pokedex/pokemons/<int:id>/details')
@login_required
def pokemon_detail(id):
  pokemon = db.session.get(Pokemon, id)
  return render_template('/pokemons/pokemon_detail.html',
                         title='Pokemon Details',
                         pokemon=pokemon)

@app.route('/pokedex/users/register', methods=['GET', 'POST'])
# @login_required
def register():
  if request.method == 'POST':
    username = request.form.get('username')
    email = request.form.get('email')
    password = request.form.get('password')
    confirm_password = request.form.get('confirm_password')

    user = db.session.scalar(db.select(User).where(User.username==username))

    if user:
      return redirect(url_for('register'))
    else:
      if password != confirm_password:
        return redirect(url_for('register'))
      else:
        hash_password = bcrypt.generate_password_hash(password).decode('utf-8')
        user = User(username=username, email=email, password=hash_password)
        db.session.add(user)
        db.session.commit()

        return redirect(url_for('login'))

  return render_template('/users/register.html',
                         title='Register Form')

@app.route('/pokedex/user/login', methods=['GET', 'POST'])
def login():
  if request.method == 'POST':
    username = request.form.get('username')
    password = request.form.get('password')
    user = db.session.scalar(db.select(User).where(User.username==username))
    if user and bcrypt.check_password_hash(user.password, password):
      login_user(user)
      return redirect(url_for('pokemon_types'))
  return render_template('/users/login.html',
                                title='Login Form')

@app.route('/podedex/user/logout')
@login_required
def logout():
  logout_user()
  return redirect(url_for('index'))