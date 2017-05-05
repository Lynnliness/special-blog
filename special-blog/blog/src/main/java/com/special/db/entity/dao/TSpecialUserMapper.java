package com.special.db.entity.dao;

import com.special.db.entity.TSpecialUser;

public interface TSpecialUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TSpecialUser record);

    int insertSelective(TSpecialUser record);

    TSpecialUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TSpecialUser record);

    int updateByPrimaryKey(TSpecialUser record);
}