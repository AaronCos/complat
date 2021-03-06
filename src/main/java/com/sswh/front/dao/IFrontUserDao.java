package com.sswh.front.dao;

import com.sswh.front.entity.FrontUserEntity;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Aaron
 */
@Repository(value = "frontUserDao")
public interface IFrontUserDao {

    /**
     * 通过登录名查找前台用户的详细信息
     * @param loginname 前台用户登录名称
     * @return 前台用户实体
     */
    FrontUserEntity findByLoginName(String loginname);

    /**
     * 查询所有的前台用户
     *
     * @return 前台用户实体列表
     */
    List<FrontUserEntity> findAllFrontUser();

    /**
     * 查询所有的会员，无论是否有效
     *
     * @return
     */
    List<FrontUserEntity> findAllMembers();

    /**
     * 通过登录名，获取密码
     *
     * @param loginName 登录名
     * @return
     */
    String getPasswordByLoginame(String loginName);

    /**
     * 通过登录名，获取盐值
     *
     * @param userName 登录名
     * @return
     */
    String getPasswordSaltByLoginname(String userName);

    /**
     * 注册前台用户
     *
     * @param user 必须包含登录名
     * @return
     */
    Integer registUser(FrontUserEntity user);

    /**
     * 通过唯一键删除前台用户
     *
     * @param iid
     * @return
     */
    int deleteByUserId(int iid);

    /**
     * 通过iid 修改前台用户信息
     *
     * @param user
     * @return
     */
    int updateByUserIid(FrontUserEntity user);

    /**
     * cha
     * @Description 查询相同姓名的人数
     *
     * @param loginname  登录名
     * @return 相同姓名的人数
     */
    Integer findCountByLoginname(String loginname);

    /**
     * 修改前台用户信息
     *
     * @param user 修改完的前台用户实体
     * @return 修改成功>0
     */
    int updateByLoginname(FrontUserEntity user);


    void updateStatusOrIsStudent(@Param("iid") String iid, @Param("name") String name, @Param("state") String state);

    List<FrontUserEntity> findFrontUsers(@Param("username") String username, @Param("start") String start, @Param("end") String end, @Param("page") int page, @Param("limit") int limit);

    int findFrontUsersCount(@Param("username") String username, @Param("start") String start, @Param("end") String end);

    boolean deleteFrontUser(@Param("ids") String ids);

    FrontUserEntity findFrontUserByIid(@Param("iid") String iid);

    boolean editUser(FrontUserEntity frontUser);

    int findFrontUsersByName(@Param("username") String username);
}
