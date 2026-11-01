.class Lcom/transsion/shorttv/db/i$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/db/i;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/db/i;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/db/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/db/i$a;->a:Lcom/transsion/shorttv/db/i;

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/db/i$a;->f(Lz3/e;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `short_tv_favorite_state` (`subjectId`,`favoriteNum`,`hasFavorite`,`favoriteTime`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteNum()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteNum()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getHasFavorite()Z

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteTime()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
