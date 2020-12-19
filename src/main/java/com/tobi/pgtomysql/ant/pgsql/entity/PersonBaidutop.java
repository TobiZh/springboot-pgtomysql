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
public class PersonBaidutop extends Model<PersonBaidutop> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String keyword;

    private Boolean isEnabled;

    private String trend;

    private Integer searchNum;

    private LocalDate created;

    private LocalDateTime updated;

    private Integer personId;

    private Integer spiderId;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
