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
public class Brand extends Model<Brand> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String name;

    private String logo;

    private Integer orderby;

    private Boolean isEnabled;

    private String description;

    private String memo;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
