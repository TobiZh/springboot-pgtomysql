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
public class MetaMovieMaoyan extends Model<MetaMovieMaoyan> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private String title;

    private String url;

    private Boolean isEnabled;

    private String uid;

    private LocalDateTime updated;

    private Integer movieId;

    private Integer spiderId;

    private LocalDateTime created;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
