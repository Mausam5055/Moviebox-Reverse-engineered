.class Lcom/transsion/baselib/db/video/h$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/video/h;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/h$a;->a:Lcom/transsion/baselib/db/video/h;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/h$a;->f(Lz3/e;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `playback_record_table` (`subjectId`,`se`,`ep`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardUnlock`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getSe()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getEp()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getLastAdStartTimeStamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getLastAdEndTimeStamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getRewardUnlock()Z

    move-result p2

    const/4 v0, 0x6

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    return-void
.end method
