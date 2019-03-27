package com.objis.spring.service;

import com.objis.spring.demodao.IFormationDao;
import com.objis.spring.demodomaine.Formation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by jose on 25/03/2019.
 */
@Service
public class FormationService {

    @Autowired
    private IFormationDao iFormationDao;

    public List<Formation> getAll(){
        return iFormationDao.findAll();
    }

    public void create(Formation newform){
        iFormationDao.save(newform);
    }

    public void deleteForm(Integer id){
        iFormationDao.deleteById(id);
    }

    public Formation updateForm(Integer id){
        return iFormationDao.getOne(id);
    }

    public Formation valideUpdate(Formation formation) {
        return this.iFormationDao.save(formation);
    }

    public List<Formation> findByKeyword(String theme) {
        return this.iFormationDao.findByThemeContaining(theme);
    }
}

