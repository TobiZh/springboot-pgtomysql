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
public class MetaBrandPersonSite extends Model<MetaBrandPersonSite> {

    private static final long serialVersionUID=1L;

    private Long id;

    private String title;

    private String url;

    private String urlGen;

    private Boolean isEnabled;

    private LocalDateTime finishTimeNew;

    private LocalDateTime finishTimeExclusive;

    private Long brandPersonId;

    private Integer siteId;

    private Long promotionId;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
