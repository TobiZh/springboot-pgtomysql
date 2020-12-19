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
 * 电视剧贴吧信息表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class TeleplayTieba extends Model<TeleplayTieba> {

    private static final long serialVersionUID=1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer teleplayId;

    /**
     * 标题
     */
    private String title;

    /**
     * 网址
     */
    private String url;

    /**
     * 贴吧uid
     */
    private String uid;

    /**
     * 会员数
     */
    private Integer sum;

    /**
     * 帖子总数
     */
    private Integer postSum;

    /**
     * 主题总数
     */
    private Integer subjectSum;

    /**
     * 会员总数
     */
    private Integer memberSum;

    /**
     * 签到数
     */
    private Integer checkSum;

    /**
     * 采集数据的日期
     */
    private LocalDate spiderDate;

    /**
     * 抓取失败的次数
     */
    private Integer grabTime;

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
