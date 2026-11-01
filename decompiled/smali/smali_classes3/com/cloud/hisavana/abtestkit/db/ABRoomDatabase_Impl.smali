.class public final Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;
.super Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;


# instance fields
.field public volatile q:Lv6/y;

.field public volatile r:Lv6/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;-><init>()V

    return-void
.end method

.method public static synthetic i0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->j:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;La4/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:La4/d;

    return-void
.end method

.method public static synthetic k0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->j:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;La4/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->P(La4/d;)V

    return-void
.end method

.method public static synthetic m0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->j:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final C()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public final F()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lv6/s;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lv6/m;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final g0()Lv6/m;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lv6/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lv6/q;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lv6/q;

    if-nez v0, :cond_1

    new-instance v0, Lv6/q;

    invoke-direct {v0, p0}, Lv6/q;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lv6/q;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lv6/q;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h0()Lv6/s;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lv6/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lv6/y;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lv6/y;

    if-nez v0, :cond_1

    new-instance v0, Lv6/y;

    invoke-direct {v0, p0}, Lv6/y;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    iput-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lv6/y;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lv6/y;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q()Landroidx/room/InvalidationTracker;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "hisavana_ab_room"

    const-string v4, "hisavana_local_ab_room"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final s(Landroidx/room/c;)La4/e;
    .locals 4

    new-instance v0, Landroidx/room/f0;

    new-instance v1, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    const-string v2, "c3731bb55f7c1b83c5a17ab41e6dc2b1"

    const-string v3, "59a3f677eceb796bf1de1bde197864ae"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/f0;-><init>(Landroidx/room/c;Landroidx/room/f0$b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/c;->a:Landroid/content/Context;

    invoke-static {v1}, La4/e$b;->a(Landroid/content/Context;)La4/e$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, La4/e$b$a;->d(Ljava/lang/String;)La4/e$b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, La4/e$b$a;->c(La4/e$a;)La4/e$b$a;

    move-result-object v0

    invoke-virtual {v0}, La4/e$b$a;->b()La4/e$b;

    move-result-object v0

    iget-object p1, p1, Landroidx/room/c;->c:La4/e$c;

    invoke-interface {p1, v0}, La4/e$c;->a(La4/e$b;)La4/e;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
