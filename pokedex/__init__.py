from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_login import LoginManager
from flask_bcrypt import Bcrypt

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///pokemondb.sqlite'
app.config['SECRET_KEY'] = b'uhjilkjhftyiko9opoi'
db = SQLAlchemy(app)
migrate = Migrate(app, db)
bcrypt = Bcrypt()
bcrypt.init_app(app)
login_manager = LoginManager()
login_manager.init_app(app)


from pokedex import routes, models