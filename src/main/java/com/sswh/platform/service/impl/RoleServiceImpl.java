package com.sswh.platform.service.impl;

import com.sswh.dao.PlatformRolesDao;
import com.sswh.entity.PlatformRoles;
import com.sswh.platform.service.AbstractPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author nuanfeng
 * @date 2020/6/22 14:32
 */
@Service
public class RoleServiceImpl extends AbstractPageService<PlatformRoles, PlatformRolesDao> {


    @Autowired
    public RoleServiceImpl(PlatformRolesDao tempDao) {
        pageDao = tempDao;
    }

    @Override
    public List<PlatformRoles> findAll() {
        List<PlatformRoles> allRoles = pageDao.findAllRoles();
        return allRoles;
    }

    @Override
    public List<PlatformRoles> findByTitle(String title) {
        List<PlatformRoles> allRoles = pageDao.findAllRoles();
        return allRoles;
    }

    @Override
    public PlatformRoles findByIid(int iid) {
        return null;
    }

    @Override
    public int addByEntity(PlatformRoles entity) {
        return 0;
    }

    @Override
    public boolean deleteByIds(String ids) {
        return false;
    }

    @Override
    public boolean updateByEntity(PlatformRoles entity) {
        return false;
    }
}