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
 * 电视剧表
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Teleplay extends Model<Teleplay> {

    private static final long serialVersionUID=1L;

    /**
     * 主键,自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 电视剧类别id
     */
    private Integer categoryId;

    /**
     * 语言id
     */
    private Integer languageId;

    /**
     * 国家地区id
     */
    private Integer countryId;

    /**
     * 剧名
     */
    private String title;

    /**
     * 电视剧 别名
     */
    private String alias;

    /**
     * 广电名
     */
    private String sartfTitle;

    /**
     * 搜索关键字
     */
    private String searchKeyword;

    /**
     * 电视播出时间
     */
    private LocalDate tvFirstPlayDate;

    /**
     * 电视播完时间
     */
    private LocalDate tvLastPlayDate;

    /**
     * 电视播出时间待定
     */
    private Integer tvFirstPlayDateWait;

    /**
     * 网络播出时间
     */
    private LocalDate netFirstPlayDate;

    /**
     * 网络播完时间
     */
    private LocalDate netLastPlayDate;

    /**
     * 集数
     */
    private Integer episodeNums;

    /**
     * 播放时长
     */
    private Integer runtime;

    /**
     * 电视剧状态，拍摄，播出等
     */
    private Integer status;

    /**
     * 电视剧介绍
     */
    private String description;

    /**
     * 已启用,是否计算指数
     */
    private Integer isEnabled;

    /**
     * 0,普通剧 1推荐热播
     */
    private Integer isDig;

    /**
     * 0,表示 未发行，1表示发行
     */
    private Integer isPublished;

    /**
     * 已编辑完整
     */
    private Integer isComplete;

    /**
     * 封面URL
     */
    private String coverImage;

    /**
     * 是否锁定
     */
    private Integer isLock;

    /**
     * 是否删除 0 正常 ；1已删除
     */
    private Integer isDeleted;

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
