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
public class Teleplay extends Model<Teleplay> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String title;

    private String alias;

    private String sartfTitle;

    private LocalDate tvFirstPlayDate;

    private Boolean tvFirstPlayDateWait;

    private LocalDate netFirstPlayDate;

    private Integer episodeNums;

    private Integer runtime;

    private String description;

    private Integer orderby;

    private Boolean isEnabled;

    private Boolean isDig;

    private Boolean isPublished;

    private Boolean isComplete;

    private Boolean hasCover;

    private Integer categoryId;

    private Integer countryId;

    private Integer languageId;

    private Integer lifecycleId;

    private String searchKeyword;

    private LocalDate netLastPlayDate;

    private LocalDate tvLastPlayDate;

    private String memo;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
