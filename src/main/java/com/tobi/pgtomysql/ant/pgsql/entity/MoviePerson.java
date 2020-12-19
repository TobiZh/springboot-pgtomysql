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
public class MoviePerson extends Model<MoviePerson> {

    private static final long serialVersionUID=1L;

    private Long id;

    private Integer weight;

    private Integer creditId;

    private Integer movieId;


    private Integer personId;

    private Integer characterId;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
