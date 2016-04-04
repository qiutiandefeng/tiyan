package com.yfhl.tiyan.business.sys.bean;

public class SysLog {
    private Integer id;

    private String classname;

    private String methodname;

    private String parametertype;

    private String returnvalue;

    private String processtime;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname == null ? null : classname.trim();
    }

    public String getMethodname() {
        return methodname;
    }

    public void setMethodname(String methodname) {
        this.methodname = methodname == null ? null : methodname.trim();
    }

    public String getParametertype() {
        return parametertype;
    }

    public void setParametertype(String parametertype) {
        this.parametertype = parametertype == null ? null : parametertype.trim();
    }

    public String getReturnvalue() {
        return returnvalue;
    }

    public void setReturnvalue(String returnvalue) {
        this.returnvalue = returnvalue == null ? null : returnvalue.trim();
    }

    public String getProcesstime() {
        return processtime;
    }

    public void setProcesstime(String processtime) {
        this.processtime = processtime == null ? null : processtime.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}