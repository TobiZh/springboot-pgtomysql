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
 * 品牌艺人网站关联表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class BrandPersonSite extends Model<BrandPersonSite> {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 品牌关联艺人id
     */
    private Integer brandPersonId;

    /**
     * 网站id
     */
    private Integer siteId;

    /**
     * 标题
     */
    private String title;

    /**
     * 推广位ID
     */
    private Long promotionId;

    /**
     * 网址
     */
    private String url;

    /**
     * 生成网址
     */
    private String urlGen;

    /**
     * 网页上标记为新的结束时间
     */
    private LocalDate finishTimeNew;

    /**
     * 网页上标记为独家的结束时间
     */
    private LocalDate finishTimeExclusive;

    /**
     * 是否删除 0 正常 ；1已删除
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

    /**
     * 记录更新unix时间戳
     */
    private Integer uTimestamp;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
