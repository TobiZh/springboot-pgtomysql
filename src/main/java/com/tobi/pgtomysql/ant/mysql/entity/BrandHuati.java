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
 * 品牌话题关联表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BrandHuati extends Model<BrandHuati> {

    private static final long serialVersionUID=1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 品牌id
     */
    private Integer brandId;

    /**
     * 话题id
     */
    private Integer huatiId;

    /**
     * 权重
     */
    private Integer weight;

    /**
     * 是否启用 0 不启用 ；1 启用
     */
    private Boolean isEnabled;

    /**
     * 是专属话题 0 不是；1 是
     */
    private Boolean isExclusive;

    /**
     * 是否删除 0 正常；1 删除
     */
    private Boolean isDeleted;

    /**
     * 修改时间执行update自动填充
     */
    private LocalDateTime updated;

    /**
     * 创建时间 自动获取当前时间
     */
    private LocalDateTime created;

    private Integer uTimestamp;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
