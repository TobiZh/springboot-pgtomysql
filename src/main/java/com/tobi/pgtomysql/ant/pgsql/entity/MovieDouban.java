package com.tobi.pgtomysql.ant.pgsql.entity;

import java.math.BigDecimal;
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
public class MovieDouban extends Model<MovieDouban> {

    private static final long serialVersionUID=1L;

    private Integer movieId;


    private String title;

    private String url;

    private String uid;

    private Boolean isEnabled;

    private BigDecimal score;

    private Integer shortComment;

    private Integer filmComment;

    private Integer commentNums;

    private String imdb;

    private LocalDate spiderDate;

    private Integer grabTime;

    private LocalDateTime updated;

    private LocalDateTime created;


    @Override
    protected Serializable pkVal() {
        return this.movieId;
    }

}
