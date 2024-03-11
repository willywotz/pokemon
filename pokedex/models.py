from pokedex import db, login_manager
from flask_login import UserMixin
from sqlalchemy import Integer, String, Table, ForeignKey, Column, Text
from sqlalchemy.orm import Mapped, mapped_column, WriteOnlyMapped, relationship

@login_manager.user_loader
def load_user(user_id):
  return db.session.get(User, int(user_id))

class User(db.Model, UserMixin):
  id: Mapped[int] = mapped_column(Integer, primary_key=True)
  username: Mapped[str] = mapped_column(String(50), unique=True, nullable=False)
  email: Mapped[str] = mapped_column(String(50), unique=True, nullable=False)
  password: Mapped[str] = mapped_column(String(100), nullable=False)
  fname: Mapped[str] = mapped_column(String(25), nullable=True)
  lname: Mapped[str] = mapped_column(String(25), nullable=True)
  avatar: Mapped[str] = mapped_column(String(50), nullable=True)

  def __repr__(self):
    return f'<User: {self.username}>'


pokedex = Table(
  'pokedex',
  db.metadata,
  Column('type_id', Integer, ForeignKey('type.id'), primary_key=True),
  Column('pokemon_id', Integer, ForeignKey('pokemon.id'), primary_key=True)
)

class PokemonType(db.Model):
  __tablename__ = 'type'
  id: Mapped[int] = mapped_column(Integer, primary_key=True)
  tname: Mapped[str] = mapped_column(String(10), nullable=False, unique=True)
  color1: Mapped[str] = mapped_column(String(6), nullable=True)
  color2: Mapped[str] = mapped_column(String(6), nullable=True)
  colort: Mapped[str] = mapped_column(String(6), nullable=True)

  pokemons: WriteOnlyMapped['Pokemon'] = relationship(
    back_populates='types', secondary=pokedex
  )

  def __repr__(self):
    return f'<PokemonType: {self.tname}>'
  
class Pokemon(db.Model):
  __tablename__ = 'pokemon'
  id: Mapped[int] = mapped_column(Integer, primary_key=True)
  pname: Mapped[str] = mapped_column(String(15), nullable=False, unique=True)
  height: Mapped[str] = mapped_column(String(15), nullable=False)
  weight: Mapped[str] = mapped_column(String(15), nullable=False)
  description: Mapped[str] = mapped_column(Text, nullable=False)
  picture: Mapped[str] = mapped_column(String(100), nullable=False)

  types: WriteOnlyMapped['PokemonType'] = relationship(
    back_populates='pokemons', secondary=pokedex
  )

  def get_types(self):
    return db.session.scalars(self.types.select()).all()
  
  def __repr__(self):
    return f'<Pokemon: {self.pname}>'