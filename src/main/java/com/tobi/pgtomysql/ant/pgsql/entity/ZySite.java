package com.tobi.pgtomysql.ant.pgsql.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.time.LocalDate;
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
public class ZySite extends Model<ZySite> {

    private static final long serialVersionUID=1L;

    private Long id;

    private String title;

    private String uid;

    private String showUrl;

    private String numUrl;

    private Boolean isEnabled;

    private LocalDate created;

    private LocalDateTime updated;

    private String httpStatus;

    private Boolean meiju;

    private Integer siteId;


    private Integer spiderId;

    private Integer zyId;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
