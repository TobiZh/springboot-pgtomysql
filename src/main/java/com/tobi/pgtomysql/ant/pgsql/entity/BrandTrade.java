package com.tobi.pgtomysql.ant.pgsql.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
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
public class BrandTrade extends Model<BrandTrade> {

    private static final long serialVersionUID=1L;

    private Integer id;

    private Integer brandId;


    private Integer tradeId;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
