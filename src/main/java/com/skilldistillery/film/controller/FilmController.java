package com.skilldistillery.film.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.database.DatabaseAccessorObject;
import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	@Autowired
	private DatabaseAccessorObject filmDao;

	@RequestMapping(path = "home.do")
	public String goHome() {
		return "WEB-INF/index.html";
	}

	@RequestMapping(path = "searchFilmByIDForm.do")
	public ModelAndView searchFilmByID() {
		ModelAndView mv = new ModelAndView("WEB-INF/searchFilmByIDForm.html");
		return mv;
	}

	@RequestMapping(path = "searchFilmByID.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView doSearch(int filmID) {
		ModelAndView mv = new ModelAndView();

		Film foundFilm = filmDao.findFilmById(filmID);
		List<Actor> actors = filmDao.findActorsByFilmId(filmID);

		mv.addObject("film", foundFilm);
		mv.addObject("actors", actors);
		mv.setViewName("WEB-INF/searchFilmByID.jsp");
		return mv;
	}

	@RequestMapping(path = "addFilmForm.do", method = RequestMethod.GET)
	public ModelAndView newFilmForm(@Valid Film film) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/addFilmForm.jsp");
		return mv;
	}

	@RequestMapping(path = "addFilmNew.do", method = RequestMethod.POST)
	public ModelAndView newFilm(@Valid Film film) {
		Film newFilm = filmDao.createFilm(film);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", newFilm);
		mv.setViewName("WEB-INF/searchFilmByID.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", params = "filmID", method = RequestMethod.POST)
	public ModelAndView deleteFilmFromSearch(@RequestParam("filmID") int filmID) {

		boolean delete = filmDao.deleteFilm(filmID);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.do");
		return mv;
	}

	@RequestMapping(path = "getFilmFields.do", params = "filmID", method = RequestMethod.GET)
	public ModelAndView getFilmFields(@RequestParam("filmID") int filmID) {
		ModelAndView mv = new ModelAndView();

		Film foundFilm = filmDao.findFilmById(filmID);
//		List<Actor> actors = filmDao.findActorsByFilmId(filmID);

		mv.addObject("film", foundFilm);
	//	mv.addObject("actors", actors);
		mv.setViewName("WEB-INF/update.jsp");
		return mv;
	}

	@RequestMapping(path = "saveFilmFields.do", params = "filmID", method = RequestMethod.POST)
	public ModelAndView saveFilmFields(@RequestParam("filmID") int filmID, @Valid Film film) {
		ModelAndView mv = new ModelAndView();

		Film updatedFilm = filmDao.saveFilmAllFields(filmID, film);
		Film display = filmDao.findFilmById(filmID);
		mv.addObject("film", display);
		mv.setViewName("WEB-INF/searchFilmByID.jsp");
		return mv;
	}

//	@RequestMapping(path = "searchKeywordForm.do")
//	public ModelAndView searchFilmByKeyword() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("keywordSearchForm.html");
//		return mv;
//	}

	@RequestMapping(path = "searchKeyword.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView doKeywordSearch(@RequestParam("keyword") String keyword) {
		ModelAndView mv = new ModelAndView();

		List<Film> foundFilms = filmDao.findFilmByKeyword(keyword);
	//	List<Actor> actors = filmDao.findActorsByFilmId();

		mv.addObject("films", foundFilms);
	//	mv.addObject("actors", actors);
		mv.setViewName("WEB-INF/keywordSearch.jsp");
		return mv;
	}

}