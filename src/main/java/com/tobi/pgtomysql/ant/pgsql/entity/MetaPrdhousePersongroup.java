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
public class MetaPrdhousePersongroup extends Model<MetaPrdhousePersongroup> {

    private static final long serialVersionUID=1L;

    private Long id;

    private LocalDate startTime;

    private LocalDate finishTime;

    private Integer weight;

    private Integer creditId;

    private Integer persongroupId;

    private Integer prdhouseId;


    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
