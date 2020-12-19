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
public class PersonDouban extends Model<PersonDouban> {

    private static final long serialVersionUID=1L;

    private Integer personId;


    private String title;

    private String url;

    private String uid;

    private Boolean isEnabled;

    private String imdb;

    private Integer sum;

    private LocalDate spiderDate;

    private Integer grabTime;

    private Boolean crawled;

    private LocalDateTime updated;

    private LocalDateTime created;


    @Override
    protected Serializable pkVal() {
        return this.personId;
    }

}
