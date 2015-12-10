/*
 * Copyright (c) 2015 by Rafael Angel Aznar Aparici (rafaaznar at gmail dot com)
 * 
 * openAUSIAS: The stunning micro-library that helps you to develop easily 
 *             AJAX web applications by using Java and jQuery
 * openAUSIAS is distributed under the MIT License (MIT)
 * Sources at https://github.com/rafaelaznar/openAUSIAS
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package net.daw.dao.specific.implementation;

import net.daw.dao.generic.implementation.TableDaoGenImpl;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import net.daw.bean.specific.implementation.DocumentoBean;
import net.daw.bean.specific.implementation.PostBean;
import net.daw.data.specific.implementation.MysqlDataSpImpl;

public class PostDao extends TableDaoGenImpl<PostBean> {

    public PostDao(Connection pooledConnection) throws Exception {
        super(pooledConnection);
    }

    @Override
    public PostBean set(PostBean oPostBean) throws Exception {

        MysqlDataSpImpl oMysql = new MysqlDataSpImpl(oConnection);

        try {
            if (oPostBean.getId() == 0) {
                oPostBean.setId(oMysql.insertOne(strTableOrigin));
            }
            oMysql.updateOne(oPostBean.getId(), strTableOrigin, "mensaje", oPostBean.getMensaje().toString());
            oMysql.updateOne(oPostBean.getId(), strTableOrigin, "id_documento", oPostBean.getId_documento().toString());
            oMysql.updateOne(oPostBean.getId(), strTableOrigin, "id_usuario", oPostBean.getId_usuario().toString());

            //se pone la fecha y hora del edit 
            Date date = new Date();
            //BUG FECHAS SOLUCIONADO
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            oPostBean.setFecha(date);
            String str_fecha = formatter.format(oPostBean.getFecha());

            oMysql.updateOne(oPostBean.getId(), strTableOrigin, "fecha", str_fecha);
        } catch (Exception e) {
            throw new Exception(this.getClass().getName() + ".set: Error: " + e.getMessage());
        }
        return oPostBean;
    }

}
