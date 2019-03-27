package com.objis.spring.controller;


import com.objis.spring.demodomaine.Formation;
import com.objis.spring.service.FormationService;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;



/**
 * Created by jose on 25/03/2019.
 */
@Transactional
@Controller
public class AppController {

    @Autowired
    private FormationService formationService;

    @RequestMapping({"/", "/index"})
    public ModelAndView index() {
        ModelAndView MAV = new ModelAndView ();
        MAV.setViewName ( "index" );
        MAV.addObject ( "formationList", this.formationService.getAll () );
        return MAV;
    }

    @RequestMapping("/form")
    public ModelAndView showForm() {
        ModelAndView MAV = new ModelAndView ();
        MAV.setViewName ( "form" );
        return MAV;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/form")
    public String validateForm(@RequestParam Integer id, @RequestParam(name = "theme") String theme) {
        final Formation newForm = new Formation ( id, theme );
        this.formationService.create(newForm);
        //return this.index();
        return "redirect:/index.html";
    }

    @GetMapping("/delete")
    public String delete(Integer id) {
        this.formationService.deleteForm ( id );
        //return this.index();
        return "redirect:/index.html";
    }

    @GetMapping("/update")
    public ModelAndView update(Integer id) {
        ModelAndView mav = new ModelAndView ( "/form" );
        Formation formation = this.formationService.updateForm ( id );
        Hibernate.initialize ( formation.getId () );
        Hibernate.initialize ( formation.getTheme () );
        mav.addObject ( "updateForm", formation );
        //return this.index();
        return mav;
    }

    @PostMapping("/update")
    public String valideUpdate(Formation formation) {
        this.formationService.valideUpdate ( formation );
        return "redirect:/index.html";
    }
    @RequestMapping("/rech")
    public ModelAndView showRech() {
        ModelAndView MAV = new ModelAndView ();
        MAV.setViewName ( "rech" );
        return MAV;
    }

    @PostMapping("/rech")
    public ModelAndView  recherche(String theme) {
        ModelAndView MAV = new ModelAndView ();
        MAV.addObject ( "formationList", this.formationService.findByKeyword (theme));
        return MAV;
    }
}

