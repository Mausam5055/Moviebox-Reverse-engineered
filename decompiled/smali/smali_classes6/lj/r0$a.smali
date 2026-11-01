.class Llj/r0$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llj/r0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llj/r0;


# direct methods
.method constructor <init>(Llj/r0;)V
    .locals 0

    iput-object p1, p0, Llj/r0$a;->a:Llj/r0;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {p0, p1, p2}, Llj/r0$a;->f(Lz3/e;Lcom/transsion/baselib/db/download/DownloadRange;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `download_thread_range` (`threadId`,`rangeId`,`resourceId`,`start`,`end`,`progress`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    return-void
.end method
