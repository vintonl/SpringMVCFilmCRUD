package com.skilldistillery.film.database;

import java.util.List;
import java.util.Scanner;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Category;
import com.skilldistillery.film.entities.Film;



public interface DatabaseAccessor {
	public Film findFilmById(int filmId);

	public List<Film> findFilmByKeyword(String keyword);

	public List<Actor> findActorsByFilmId(int filmId);

	public Actor findActorById(int actorId);

	public List<Film> findFilmsByActorId(int actorId);
	
	public Film createFilm(Film film);

	String findCategoryByFilmId(int filmId);

}
