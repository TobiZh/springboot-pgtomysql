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
 * 电视剧组织机构关联表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class TeleplayPrdhouse extends Model<TeleplayPrdhouse> {

    private static final long serialVersionUID=1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 电视剧id
     */
    private Integer teleplayId;

    private Integer prdhouseId;

    /**
     * 演职员id
     */
    private Integer creditId;

    /**
     * 权重
     */
    private Integer weight;

    /**
     * 是否删除 0 正常 ；1已删除
     */
    private Boolean isDeleted;

    private LocalDateTime updated;

    /**
     * 创建时间
     */
    private LocalDateTime created;

    private Integer uTimestamp;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
