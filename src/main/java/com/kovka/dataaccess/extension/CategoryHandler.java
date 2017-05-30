package com.kovka.dataaccess.extension;

/**
 * Created by Serozh on 6/21/2016.
 */

import com.kovka.common.data.lcp.Category;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryHandler extends BaseTypeHandler<Category> {
    public CategoryHandler() {
    }

    public void setNonNullParameter(PreparedStatement ps, int i, Category parameter, JdbcType jdbcType) throws SQLException {
        ps.setInt(i, parameter.getKey());
    }

    public Category getNullableResult(ResultSet rs, String columnName) throws SQLException {
        int value = rs.getInt(columnName);
        return value != 0 ? Category.valueOf(value) : null;
    }

    public Category getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
        int value = rs.getInt(columnIndex);
        return value != 0 ? Category.valueOf(value) : null;
    }

    public Category getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
        return null;
    }
}