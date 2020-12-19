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
 * 电视剧网站关联表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class TeleplaySite extends Model<TeleplaySite> {

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

    /**
     * 网站id
     */
    private Integer siteId;

    /**
     * 标题
     */
    private String title;

    /**
     * 对应网站的uid
     */
    private String uid;

    /**
     * 网址
     */
    private String showUrl;

    /**
     * 数据网址
     */
    private String numUrl;

    /**
     * 是正片
     */
    private Integer isFullepi;

    /**
     * 爬虫id
     */
    private Integer spiderId;

    /**
     * 0:success,1:crawling,2:waiting,3:404
     */
    private String crawledInfo;

    /**
     * 是否是正确的URL
     */
    private Integer isMinId;

    /**
     * 爬虫状态
     */
    private Integer spiderStatus;

    /**
     * 是否删除 0 正常 ；1已删除
     */
    private Integer isDeleted;

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
