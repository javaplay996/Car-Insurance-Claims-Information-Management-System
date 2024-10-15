package com.dao;

import com.entity.ShiguEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ShiguView;

/**
 * 事故调查 Dao 接口
 *
 * @author 
 */
public interface ShiguDao extends BaseMapper<ShiguEntity> {

   List<ShiguView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
