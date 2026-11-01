.class Lcom/transsion/baselib/db/video/h$b;
.super Landroidx/room/e;


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

    iput-object p1, p0, Lcom/transsion/baselib/db/video/h$b;->a:Lcom/transsion/baselib/db/video/h;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/h$b;->d(Lz3/e;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `playback_record_table` WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V
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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getEp()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getSe()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Lz3/e;->c(IJ)V

    return-void
.end method
