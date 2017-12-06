package cn.laoma.domain;

public class Article {
    private Integer articleid;

    private Integer userid;

    private String title;

    private String content;
    /**
     * 是否展示
     * */
    private Short showstatus;
    /**
     * 文章类型
     * */
    private Short articletype;
    
    /**
     * 是否评论
     * */
    private Short isdiscuss;

    private Long createtime;

    private Long updatetime;

    public Integer getArticleid() {
        return articleid;
    }

    public void setArticleid(Integer articleid) {
        this.articleid = articleid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Short getShowstatus() {
        return showstatus;
    }

    public void setShowstatus(Short showstatus) {
        this.showstatus = showstatus;
    }

    public Short getArticletype() {
        return articletype;
    }

    public void setArticletype(Short articletype) {
        this.articletype = articletype;
    }

    public Short getIsdiscuss() {
        return isdiscuss;
    }

    public void setIsdiscuss(Short isdiscuss) {
        this.isdiscuss = isdiscuss;
    }

    public Long getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Long createtime) {
        this.createtime = createtime;
    }

    public Long getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Long updatetime) {
        this.updatetime = updatetime;
    }
}