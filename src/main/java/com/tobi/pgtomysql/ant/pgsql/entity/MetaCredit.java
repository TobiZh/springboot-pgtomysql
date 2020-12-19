package com.tobi.pgtomysql.ant.pgsql.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
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
public class MetaCredit extends Model<MetaCredit> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String name;

    private Integer orderby;

    private Boolean isEnabledMovie;

    private Boolean isEnabledTeleplay;

    private Boolean isEnabledZy;

    private Boolean isEnabledBrand;

    private Boolean isEnabledPersonPrdhouse;

    private Boolean isEnabledPrdhouseBrand;

    private Boolean isEnabledPrdhouseMovie;

    private Boolean isEnabledPrdhouseTeleplay;

    private Boolean isEnabledPrdhouseZy;

    private Boolean isEnabledMusic;

    private Boolean isEnabledMusicalbum;

    private Boolean isEnabledPersongroupPrdhouse;

    private Boolean isEnabledPrdhouseMusic;

    private Boolean isEnabledPrdhouseMusicalbum;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
