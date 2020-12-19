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
public class MetaTeleplaySotrend extends Model<MetaTeleplaySotrend> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String keyword;

    private Boolean isEnabled;

    private LocalDateTime updated;

    private Integer spiderId;

    private Integer teleplayId;

    private LocalDateTime created;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
