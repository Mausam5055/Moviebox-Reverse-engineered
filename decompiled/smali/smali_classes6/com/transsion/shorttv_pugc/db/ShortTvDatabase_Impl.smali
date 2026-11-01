.class public final Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;
.super Lcom/transsion/shorttv_pugc/db/ShortTvDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase;-><init>()V

    return-void
.end method

.method static synthetic g0(Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;Lz3/b;)V
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

    const-class v1, Lpt/a;

    invoke-static {}, Lpt/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected h0()Landroidx/room/d0;
    .locals 4

    new-instance v0, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl$a;

    const-string v1, "e90a38f8313cd010419e55bde1e55126"

    const-string v2, "0c797eb7adf7787e513fa3e6ff4af75e"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl$a;-><init>(Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "short_tv_favorite_state"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic r()Landroidx/room/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/db/ShortTvDatabase_Impl;->h0()Landroidx/room/d0;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
