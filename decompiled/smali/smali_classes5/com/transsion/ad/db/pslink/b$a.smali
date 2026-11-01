.class Lcom/transsion/ad/db/pslink/b$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/db/pslink/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/db/pslink/b;


# direct methods
.method constructor <init>(Lcom/transsion/ad/db/pslink/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/pslink/b$a;->a:Lcom/transsion/ad/db/pslink/b;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/ad/db/pslink/AttributionPoint;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/db/pslink/b$a;->f(Lz3/e;Lcom/transsion/ad/db/pslink/AttributionPoint;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `attribution_points` (`id`,`psId`,`failCount`,`reportUrl`,`type`,`updateTimestamp`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/ad/db/pslink/AttributionPoint;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b$a;->a:Lcom/transsion/ad/db/pslink/b;

    invoke-static {v0}, Lcom/transsion/ad/db/pslink/b;->k(Lcom/transsion/ad/db/pslink/b;)Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/pslink/AttributionPoint$b;->a(Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getUpdateTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    return-void
.end method
