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
 * 品牌天猫信息表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BrandTmall extends Model<BrandTmall> {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 品牌id
     */
    private Integer brandId;

    /**
     * 标题
     */
    private String title;

    /**
     * 网址
     */
    private String url;

    /**
     * uid
     */
    private String uid;

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
