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
 * 
 * </p>
 *
 * @author tobi
 * @since 2020-12-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class PersonSotrend extends Model<PersonSotrend> {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String keyword;

    private Integer personId;

    private Boolean isEnabled;

    private Integer isDeleted;

    private LocalDate created;

    private LocalDateTime updated;

    private Integer uTimestamp;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}