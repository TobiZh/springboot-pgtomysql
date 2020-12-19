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
 * 
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class ZySiteEpi extends Model<ZySiteEpi> {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 综艺关联网站id
     */
    private Integer zySiteId;

    /**
     * 标题
     */
    private String title;

    /**
     * 期数
     */
    private Integer episodeNo;

    /**
     * 该期播出时间
     */
    private LocalDate episodeTime;

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
     * 是否删除
     */
    private Integer isDeleted;

    /**
     * 爬虫id
     */
    private Integer spiderId;

    /**
     * 0:success,1:crawling,2:waiting,3:404
     */
    private Integer crawledInfo;

    /**
     * 是否是正确的URL
     */
    private Integer isMinId;

    /**
     * 爬虫状态
     */
    private Integer spiderStatus;

    /**
     * 记录创建日期
     */
    private LocalDate created;

    /**
     * 记录修改时间戳
     */
    private LocalDateTime updated;

    /**
     * 记录更新unix时间戳
     */
    private Integer uTimestamp;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
