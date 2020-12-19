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
 * 艺人话题
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class PersonHuati extends Model<PersonHuati> {

    private static final long serialVersionUID=1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 艺人id
     */
    private Integer personId;

    /**
     * 话题id
     */
    private Integer huatiId;

    /**
     * 权重
     */
    private Integer weight;

    /**
     * 是否启用 0 不启用；1启用
     */
    private Boolean isEnabled;

    /**
     * 是否专属话题 0 否；1是
     */
    private Boolean isExclusive;

    /**
     * 是否删除 0正常；1删除
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
