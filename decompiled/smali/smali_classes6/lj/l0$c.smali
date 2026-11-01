.class Llj/l0$c;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llj/l0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llj/l0;


# direct methods
.method constructor <init>(Llj/l0;)V
    .locals 0

    iput-object p1, p0, Llj/l0$c;->a:Llj/l0;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2}, Llj/l0$c;->d(Lz3/e;Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `download_table` SET `url` = ?,`resourceId` = ?,`name` = ?,`cover` = ?,`size` = ?,`postId` = ?,`sizeFormat` = ?,`path` = ?,`duration` = ?,`updateTimeStamp` = ?,`progress` = ?,`supportRanges` = ?,`status` = ?,`type` = ?,`readProgress` = ?,`createAt` = ?,`isRead` = ?,`episode` = ?,`ep` = ?,`se` = ?,`resolution` = ?,`resourcePosition` = ?,`multiresolution` = ?,`videoWidth` = ?,`videoHeight` = ?,`downloadErrorCount` = ?,`subtitleStarted` = ?,`subjectId` = ?,`pageFrom` = ?,`lastPageFrom` = ?,`subjectName` = ?,`lastPlayTimeStamp` = ?,`fileType` = ?,`totalEpisode` = ?,`uploadBy` = ?,`sourceUrl` = ?,`urlCreateAt` = ?,`subtitleSelectId` = ?,`taskId` = ?,`sessionTime` = ?,`reportStatus` = ?,`downloadHeaderSize` = ?,`rootPath` = ?,`rootPathType` = ?,`thumbnail` = ?,`averageHueLight` = ?,`isTransferFailed` = ?,`isClosedTransferFailed` = ?,`subjectType` = ?,`genre` = ?,`subjectDurationSeconds` = ?,`currentDubLanName` = ?,`currentDubLanCode` = ?,`ops` = ?,`restrictLevel` = ?,`releaseDate` = ?,`countryName` = ?,`seNum` = ?,`subtitles` = ?,`imdbRate` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`subtitleIdType` = ?,`ugcVideoCollectionId` = ?,`ugcVideoId` = ?,`ugcVideoName` = ?,`ugcVideoCollectionName` = ?,`ugcVideoPosition` = ?,`ugcVideoType` = ?,`ugcCateLev1Id` = ?,`ugcCateLev2Id` = ?,`ugcCateLev3Id` = ?,`ugcCateLev4Id` = ?,`ugcVideoTrackId` = ?,`ugcVideoParentVideoId` = ?,`ugcVideoParentTrackId` = ?,`ugcVideoEpTitle` = ?,`ugcVideoIsVertical` = ?,`originData` = ?,`kidId` = ? WHERE `url` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_9
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSupportRanges()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    const/16 v0, 0xf

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/16 v0, 0x10

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isRead()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourcePosition()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getMultiresolution()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x17

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x19

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadErrorCount()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1a

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleStarted()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1b

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    if-nez v0, :cond_a

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1d

    if-nez v0, :cond_b

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPageFrom()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    if-nez v0, :cond_c

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPageFrom()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f

    if-nez v0, :cond_d

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_d
    const/16 v0, 0x20

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPlayTimeStamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x21

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x22

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    if-nez v0, :cond_e

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    if-nez v0, :cond_f

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_f
    const/16 v0, 0x25

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrlCreateAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26

    if-nez v0, :cond_10

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_10

    :cond_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x27

    if-nez v0, :cond_11

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_11
    const/16 v0, 0x28

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSessionTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReportStatus()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x29

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    const/16 v0, 0x2a

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_12

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_12

    :cond_12
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_12
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x2c

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    if-nez v0, :cond_13

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_13

    :cond_13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getAverageHueLight()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    if-nez v0, :cond_14

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_14

    :cond_14
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getAverageHueLight()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_14
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v0

    const/16 v1, 0x2f

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isClosedTransferFailed()Z

    move-result v0

    const/16 v1, 0x30

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x31

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x32

    if-nez v0, :cond_15

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_15

    :cond_15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_16

    const/16 v0, 0x33

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_16

    :cond_16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x33

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/16 v0, 0x34

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_17

    :cond_17
    const/16 v0, 0x34

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_17
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const/16 v0, 0x35

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_18

    :cond_18
    const/16 v0, 0x35

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_18
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const/16 v0, 0x36

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_19

    :cond_19
    const/16 v0, 0x36

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_19
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestrictLevel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/16 v0, 0x37

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1a

    :cond_1a
    const/16 v0, 0x37

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestrictLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const/16 v0, 0x38

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1b

    :cond_1b
    const/16 v0, 0x38

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCountryName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const/16 v0, 0x39

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1c

    :cond_1c
    const/16 v0, 0x39

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeNum()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1d

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1d

    :cond_1d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x3a

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_1d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitles()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const/16 v0, 0x3b

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1e

    :cond_1e
    const/16 v0, 0x3b

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitles()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getImdbRate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1f

    :cond_1f
    const/16 v0, 0x3c

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getImdbRate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_20

    const/16 v0, 0x3d

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_20

    :cond_20
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x3d

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_20
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_21

    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_21

    :cond_21
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x3e

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_21
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_22

    :cond_22
    const/16 v0, 0x3f

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_22
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    const/16 v0, 0x40

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_23

    :cond_23
    const/16 v0, 0x40

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_23
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const/16 v0, 0x41

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_24

    :cond_24
    const/16 v0, 0x41

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_24
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const/16 v0, 0x42

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_25

    :cond_25
    const/16 v0, 0x42

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_25
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    const/16 v0, 0x43

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_26

    :cond_26
    const/16 v0, 0x43

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_26
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_27

    const/16 v0, 0x44

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_27

    :cond_27
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x44

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_27
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    const/16 v0, 0x45

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_28

    :cond_28
    const/16 v0, 0x45

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_28
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_29

    const/16 v0, 0x46

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_29

    :cond_29
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x46

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_29
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2a

    const/16 v0, 0x47

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_2a

    :cond_2a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x47

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_2a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2b

    const/16 v0, 0x48

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_2b

    :cond_2b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x48

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_2b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2c

    const/16 v0, 0x49

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_2c

    :cond_2c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x49

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_2c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    const/16 v0, 0x4a

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_2d

    :cond_2d
    const/16 v0, 0x4a

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    const/16 v0, 0x4b

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_2e

    :cond_2e
    const/16 v0, 0x4b

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    const/16 v0, 0x4c

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_2f

    :cond_2f
    const/16 v0, 0x4c

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoEpTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    const/16 v0, 0x4d

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_30

    :cond_30
    const/16 v0, 0x4d

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoEpTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_30
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoIsVertical()Z

    move-result v0

    const/16 v1, 0x4e

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    const/16 v0, 0x4f

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_31

    :cond_31
    const/16 v0, 0x4f

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_31
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getKidId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    const/16 v0, 0x50

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_32

    :cond_32
    const/16 v0, 0x50

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getKidId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_32
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    const/16 p2, 0x51

    invoke-interface {p1, p2}, Lz3/e;->g(I)V

    goto :goto_33

    :cond_33
    const/16 v0, 0x51

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_33
    return-void
.end method
