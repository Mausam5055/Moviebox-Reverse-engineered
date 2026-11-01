.class Lcom/transsion/baselib/db/video/d$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/video/d;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/d$a;->a:Lcom/transsion/baselib/db/video/d;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/d$a;->f(Lz3/e;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `ShortTvFavoriteState` (`subjectId`,`favoriteNum`,`hasFavorite`,`favoriteTime`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getFavoriteNum()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getFavoriteNum()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getHasFavorite()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getFavoriteTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->getFavoriteTime()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
