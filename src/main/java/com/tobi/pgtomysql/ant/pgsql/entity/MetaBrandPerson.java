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
public class MetaBrandPerson extends Model<MetaBrandPerson> {

    private static final long serialVersionUID=1L;

    private Long id;

    private Integer weight;

    private Boolean isComplete;

    private LocalDate startTime;

    private LocalDate finishTime;

    private Integer brandId;

    private Integer creditId;

    private Integer personId;

    private Integer productId;

    private LocalDateTime created;

    private LocalDateTime updated;

    private Boolean isEnabled;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
