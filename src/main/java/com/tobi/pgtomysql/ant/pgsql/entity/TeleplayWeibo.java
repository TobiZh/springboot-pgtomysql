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
public class TeleplayWeibo extends Model<TeleplayWeibo> {

    private static final long serialVersionUID=1L;

    private Integer teleplayId;


    private String title;

    private String url;

    private String uid;

    private Boolean isEnabled;

    private Boolean isLogin;

    private Integer sum;

    private Integer postSum;

    private LocalDate spiderDate;

    private Integer grabTime;

    private LocalDateTime updated;

    private String type;

    private Boolean isCrawled;

    private LocalDateTime created;


    @Override
    protected Serializable pkVal() {
        return this.teleplayId;
    }

}
