.class Llj/c1$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llj/c1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llj/c1;


# direct methods
.method constructor <init>(Llj/c1;)V
    .locals 0

    iput-object p1, p0, Llj/c1$a;->a:Llj/c1;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/SubtitleBean;

    invoke-virtual {p0, p1, p2}, Llj/c1$a;->f(Lz3/e;Lcom/transsion/baselib/db/download/SubtitleBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `download_subtitle_table` (`resourceId`,`postId`,`url`,`path`,`lan`,`lanName`,`subtitleName`,`size`,`delayDuration`,`status`,`type`,`fileCharsetName`,`subjectId`,`ep`,`se`,`resolution`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/download/SubtitleBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLan()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLanName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getLanName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubtitleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubtitleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getDelayDuration()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getDelayDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getStatus()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xb

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getFileCharsetName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_9

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getFileCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_a

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getEp()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getSe()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResolution()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    invoke-interface {p1, p2, v0, v1}, Lz3/e;->c(IJ)V

    return-void
.end method
