.class public final Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;
.super Lcom/transsion/shorttv/db/ShortTvDatabase;


# instance fields
.field private volatile s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

.field private volatile t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;-><init>()V

    return-void
.end method

.method static synthetic l0(Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;Lz3/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->Q(Lz3/b;)V

    return-void
.end method


# virtual methods
.method public C()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected F()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    invoke-static {}, Lcom/transsion/shorttv/db/i;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    invoke-static {}, Lcom/transsion/shorttv/db/d;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/shorttv/db/d;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/db/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/shorttv/db/i;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/db/i;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected m0()Landroidx/room/d0;
    .locals 4

    new-instance v0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;

    const-string v1, "7d0cc9a2b371c1f7329d0d00d8bd31c1"

    const-string v2, "8d7f57b404f63d2b99b6f547f57644e9"

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;-><init>(Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "short_tv_favorite_state"

    const-string v4, "short_tv_ad_unlock_state"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic r()Landroidx/room/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->m0()Landroidx/room/d0;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
