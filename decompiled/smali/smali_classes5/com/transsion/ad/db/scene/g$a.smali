.class Lcom/transsion/ad/db/scene/g$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/db/scene/g;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/db/scene/g;


# direct methods
.method constructor <init>(Lcom/transsion/ad/db/scene/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/db/scene/g$a;->a:Lcom/transsion/ad/db/scene/g;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/ad/db/scene/AdSceneLimit;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/db/scene/g$a;->f(Lz3/e;Lcom/transsion/ad/db/scene/AdSceneLimit;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `ad_scene_limit_table` (`sceneId`,`lastDisplayAdDate`,`lastDisplayAdTimestamp`,`displayTimes`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/ad/db/scene/AdSceneLimit;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getSceneId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getLastDisplayAdDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getLastDisplayAdDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getLastDisplayAdTimestamp()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/scene/AdSceneLimit;->getDisplayTimes()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x4

    invoke-interface {p1, p2, v0, v1}, Lz3/e;->c(IJ)V

    return-void
.end method
