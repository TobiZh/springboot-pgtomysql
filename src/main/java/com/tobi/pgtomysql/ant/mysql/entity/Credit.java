package com.tobi.pgtomysql.ant.mysql.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 演职员表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Credit extends Model<Credit> {

    private static final long serialVersionUID=1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 名称
     */
    private String name;

    /**
     * 是否在电影关联艺人中启用
     */
    private Integer isEnabledMoviePerson;

    /**
     * 是否在电视剧关联艺人中启用
     */
    private Integer isEnabledTeleplayPerson;

    /**
     * 是否在综艺关联艺人中启用
     */
    private Integer isEnabledZyPerson;

    /**
     * 是否在品牌关联艺人中启用
     */
    private Integer isEnabledBrandPerson;

    /**
     * 是否在音乐关联艺人中启用
     */
    private Integer isEnabledMusicPerson;

    /**
     * 是否在音乐专辑关联艺人中启用
     */
    private Integer isEnabledMusicalbumPerson;

    /**
     * 是否在组织机构关联艺人中启用
     */
    private Integer isEnabledPrdhousePerson;

    /**
     * 是否在组织机构关联艺人组合中启用
     */
    private Integer isEnabledPrdhousePersongroup;

    /**
     * 是否在电影关联组织机构中启用
     */
    private Integer isEnabledMoviePrdhouse;

    /**
     * 是否在电视剧关联组织机构中启用
     */
    private Integer isEnabledTeleplayPrdhouse;

    /**
     * 是否在综艺关联组织机构中启用
     */
    private Integer isEnabledZyPrdhouse;

    /**
     * 是否在品牌关联组织机构中启用
     */
    private Integer isEnabledBrandPrdhouse;

    /**
     * 是否在音乐关联组织机构中启用
     */
    private Integer isEnabledMusicPrdhouse;

    /**
     * 是否在音乐专辑关联组织机构中启用
     */
    private Integer isEnabledMusicalbumPrdhouse;

    /**
     * 是否删除 0 正常 ；1已删除
     */
    private Boolean isDeleted;

    /**
     * 记录修改时间戳
     */
    private LocalDateTime updated;

    /**
     * 记录创建日期
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
