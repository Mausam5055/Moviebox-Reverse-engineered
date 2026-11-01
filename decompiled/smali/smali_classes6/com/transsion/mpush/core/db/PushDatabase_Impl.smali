.class public final Lcom/transsion/mpush/core/db/PushDatabase_Impl;
.super Lcom/transsion/mpush/core/db/PushDatabase;


# instance fields
.field private volatile s:Lmn/a;

.field private volatile t:Lmn/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mpush/core/db/PushDatabase;-><init>()V

    return-void
.end method

.method static synthetic l0(Lcom/transsion/mpush/core/db/PushDatabase_Impl;Lz3/b;)V
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

    const-class v1, Lmn/a;

    invoke-static {}, Lmn/i;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lmn/j;

    invoke-static {}, Lmn/o;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public j0()Lmn/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->s:Lmn/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->s:Lmn/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->s:Lmn/a;

    if-nez v0, :cond_1

    new-instance v0, Lmn/i;

    invoke-direct {v0, p0}, Lmn/i;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->s:Lmn/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->s:Lmn/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k0()Lmn/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->t:Lmn/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->t:Lmn/j;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->t:Lmn/j;

    if-nez v0, :cond_1

    new-instance v0, Lmn/o;

    invoke-direct {v0, p0}, Lmn/o;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->t:Lmn/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->t:Lmn/j;

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

    new-instance v0, Lcom/transsion/mpush/core/db/PushDatabase_Impl$a;

    const-string v1, "6879119c203ebc050de023191e9ef136"

    const-string v2, "5b9d663bce9d2f7c2d3d3dbab0ef866e"

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/mpush/core/db/PushDatabase_Impl$a;-><init>(Lcom/transsion/mpush/core/db/PushDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

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

    const-string v3, "msg_standard"

    const-string v4, "permanent_push_message"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic r()Landroidx/room/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/mpush/core/db/PushDatabase_Impl;->m0()Landroidx/room/d0;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
