package com.tobi.pgtomysql.ant.mysql.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.time.LocalDate;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 综艺表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Zy extends Model<Zy> {

    private static final long serialVersionUID=1L;

    /**
     * 主键,自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 剧名
     */
    private String title;

    /**
     * 搜索关键字
     */
    private String searchKeyword;

    /**
     * 播出时间
     */
    private LocalDate firstPlayDate;

    /**
     * 国家地区，外键
     */
    private Integer countryId;

    /**
     * 状态，拍摄，播出等
     */
    private Integer status;

    /**
     * 综艺分类
     */
    private Integer categoryId;

    /**
     * 综艺类型
     */
    private Integer typeId;

    /**
     * 介绍
     */
    private String description;

    /**
     * 已启用,是否计算指数
     */
    private Integer isEnabled;

    /**
     * 已编辑完整
     */
    private Integer isComplete;

    private Integer isLock;

    /**
     * 是否删除 0 正常 ；1已删除
     */
    private Boolean isDeleted;

    /**
     * 修改日期
     */
    private LocalDateTime updated;

    /**
     * 创建日期
     */
    private LocalDateTime created;

    /**
     * 记录更新unix时间戳
     */
    private Integer uTimestamp;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
