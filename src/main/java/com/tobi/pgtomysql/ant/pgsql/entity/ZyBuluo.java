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
public class ZyBuluo extends Model<ZyBuluo> {

    private static final long serialVersionUID=1L;

    private Integer zyId;


    private String title;

    private String url;

    private String uid;

    private Boolean isEnabled;

    private LocalDateTime created;

    private LocalDateTime updated;


    @Override
    protected Serializable pkVal() {
        return this.zyId;
    }

}
