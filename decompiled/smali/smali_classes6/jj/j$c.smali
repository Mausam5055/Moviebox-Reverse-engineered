.class Ljj/j$c;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljj/j;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljj/j;


# direct methods
.method constructor <init>(Ljj/j;)V
    .locals 0

    iput-object p1, p0, Ljj/j$c;->a:Ljj/j;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/audio/AudioBean;

    invoke-virtual {p0, p1, p2}, Ljj/j$c;->d(Lz3/e;Lcom/transsion/baselib/db/audio/AudioBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `audio` SET `audioId` = ?,`cover` = ?,`duration` = ?,`size` = ?,`url` = ?,`title` = ?,`desc` = ?,`bitrate` = ?,`updateTimeStamp` = ?,`readProcess` = ?,`localPath` = ?,`ops` = ?,`resourceId` = ?,`postId` = ?,`subjectId` = ?,`groupId` = ?,`status` = ?,`subjectTitle` = ?,`se` = ?,`ep` = ? WHERE `audioId` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getBitrate()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getBitrate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUpdateTimeStamp()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getUpdateTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_a

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_b

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getOps()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_c

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_d

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_e

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_f

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_10

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_10

    :cond_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getSe()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getEp()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    if-nez v0, :cond_11

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_11
    return-void
.end method
