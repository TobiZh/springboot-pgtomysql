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
public class Zy extends Model<Zy> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String title;

    private String description;

    private LocalDate firstPlayDate;

    private LocalDateTime playTime;

    private Integer orderby;

    private Boolean isEnabled;

    private Boolean isComplete;

    private Integer frequencyId;

    private Integer mediaId;

    private Boolean isSearch;

    private String top100;

    private String listImg;

    private Integer categoryId;

    private Integer countryId;

    private Integer lifecycleId;

    private Integer typeId;

    private String searchKeyword;

    private String memo;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
