package com.skilldistillery.film.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(path = "deleteFilm.do", params = "film", method = RequestMethod.GET)
	public ModelAndView deleteFilmFromSearch(@Valid Film film) {
		
		boolean delete = filmDao.deleteFilm(film);
		System.out.println("*************");
		System.out.println(delete);
		System.out.println("*************");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.do"); 
		return mv;
	}
	


//	@RequestMapping(path = "filmCreated.do", method = RequestMethod.GET) 
//	public ModelAndView created() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/addFilm.jsp");
//		return mv;
//	}

}

//@RequestMapping(path = "addFilmForm.do", params = { "title", "description", "languageID",
//"releaseYear" }, method = RequestMethod.GET)
//public ModelAndView addFilm(String title, String description, int languageID, int release_year) {
//ModelAndView mv = new ModelAndView();
//
//Film newFilm = filmDao.createFilm(title, description, languageID, release_year);
//
//mv.addObject("film", newFilm);
//mv.setViewName("WEB-INF/addFilmForm.jsp");
//
//return mv;
//}

