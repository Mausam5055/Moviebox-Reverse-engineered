.class Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl$a;
.super Landroidx/room/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;->h0()Landroidx/room/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl$a;->d:Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;

    invoke-direct {p0, p2, p3, p4}, Landroidx/room/d0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lz3/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `short_tv_favorite_state` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'e90a38f8313cd010419e55bde1e55126\')"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lz3/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `short_tv_favorite_state`"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lz3/b;)V
    .locals 0

    return-void
.end method

.method public g(Lz3/b;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl$a;->d:Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;->g0(Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;Lz3/b;)V

    return-void
.end method

.method public h(Lz3/b;)V
    .locals 0

    return-void
.end method

.method public i(Lz3/b;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/util/b;->b(Lz3/b;)V

    return-void
.end method

.method public j(Lz3/b;)Landroidx/room/d0$a;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/util/o$a;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "subjectId"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "subjectId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/o$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "favoriteNum"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "favoriteNum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/o$a;

    const-string v4, "hasFavorite"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "hasFavorite"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/util/o$a;

    const-string v4, "favoriteTime"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "favoriteTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Landroidx/room/util/o;

    const-string v5, "short_tv_favorite_state"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/o;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v5}, Landroidx/room/util/o;->b(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/room/util/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/room/d0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "short_tv_favorite_state(com.transsion.shorttv_pugc.db.ShortTvFavoriteStateBean).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroidx/room/d0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Landroidx/room/d0$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/room/d0$a;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
