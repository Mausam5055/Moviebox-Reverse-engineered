.class public final Lcom/transsion/baselib/db/AppDatabase_Impl;
.super Lcom/transsion/baselib/db/AppDatabase;


# instance fields
.field private volatile A0:Llj/v0;

.field private volatile B0:Llj/n0;

.field private volatile C0:Lcom/transsion/baselib/db/video/e1;

.field private volatile D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

.field private volatile E0:Llj/d1;

.field private volatile F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

.field private volatile G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

.field private volatile H0:Lcom/transsion/baselib/db/video/PlaybackRecordDao;

.field private volatile I0:Loj/a;

.field private volatile J0:Lcom/transsion/baselib/db/place/PlaceDao;

.field private volatile K0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

.field private volatile L0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

.field private volatile M0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

.field private volatile N0:Lmj/a;

.field private volatile x0:Ljj/a;

.field private volatile y0:Llj/c;

.field private volatile z0:Lrj/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baselib/db/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic F1(Lcom/transsion/baselib/db/AppDatabase_Impl;Lz3/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->Q(Lz3/b;)V

    return-void
.end method


# virtual methods
.method public A1()Llj/d1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Llj/d1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Llj/d1;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Llj/d1;

    if-nez v0, :cond_1

    new-instance v0, Llj/h1;

    invoke-direct {v0, p0}, Llj/h1;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Llj/d1;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->E0:Llj/d1;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public B1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/u;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/u;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->L0:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public C()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/n0;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/n0;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->K0:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/d1;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/d1;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->G0:Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E1()Lcom/transsion/baselib/db/video/e1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/e1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/e1;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/e1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/f1;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/f1;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/e1;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->C0:Lcom/transsion/baselib/db/video/e1;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected F()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Ljj/a;

    invoke-static {}, Ljj/j;->q()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Llj/c;

    invoke-static {}, Llj/l0;->q0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/o0;

    invoke-static {}, Lcom/transsion/baselib/db/video/p0;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Llj/t0;

    invoke-static {}, Llj/u0;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lrj/a;

    invoke-static {}, Lrj/e;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Llj/v0;

    invoke-static {}, Llj/c1;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lqj/c;

    invoke-static {}, Lqj/d;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lqj/a;

    invoke-static {}, Lqj/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lkj/a;

    invoke-static {}, Lkj/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lpj/a;

    invoke-static {}, Lpj/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lnj/a;

    invoke-static {}, Lnj/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Llj/n0;

    invoke-static {}, Llj/r0;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/e1;

    invoke-static {}, Lcom/transsion/baselib/db/video/f1;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    invoke-static {}, Lcom/transsion/baselib/db/video/q;->r()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Llj/d1;

    invoke-static {}, Llj/h1;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    invoke-static {}, Lcom/transsion/baselib/db/video/d;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    invoke-static {}, Lcom/transsion/baselib/db/video/d1;->E()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    invoke-static {}, Lcom/transsion/baselib/db/video/h;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Loj/a;

    invoke-static {}, Loj/h;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/place/PlaceDao;

    invoke-static {}, Lcom/transsion/baselib/db/place/d;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    invoke-static {}, Lcom/transsion/baselib/db/video/n0;->P()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    invoke-static {}, Lcom/transsion/baselib/db/video/u;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    invoke-static {}, Lcom/transsion/baselib/db/member/g;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lmj/a;

    invoke-static {}, Lmj/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected G1()Landroidx/room/d0;
    .locals 4

    new-instance v0, Lcom/transsion/baselib/db/AppDatabase_Impl$a;

    const-string v1, "af048d25b4883d8a347dd58538827738"

    const-string v2, "94e36e9c0bfc9353da5431720d60a683"

    const/16 v3, 0x3b

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/baselib/db/AppDatabase_Impl$a;-><init>(Lcom/transsion/baselib/db/AppDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public o1()Ljj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Ljj/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Ljj/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Ljj/a;

    if-nez v0, :cond_1

    new-instance v0, Ljj/j;

    invoke-direct {v0, p0}, Ljj/j;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Ljj/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->x0:Ljj/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p1()Llj/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Llj/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Llj/c;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Llj/c;

    if-nez v0, :cond_1

    new-instance v0, Llj/l0;

    invoke-direct {v0, p0}, Llj/l0;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Llj/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->y0:Llj/c;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 27

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v25, "home_preferences_interval_time"

    const-string v26, "playback_record_table"

    const-string v3, "audio"

    const-string v4, "download_table"

    const-string v5, "video"

    const-string v6, "download_thread_info"

    const-string v7, "room_table"

    const-string v8, "permanent_msg"

    const-string v9, "download_subtitle_table"

    const-string v10, "msg"

    const-string v11, "consume_bean"

    const-string v12, "download_thread_range"

    const-string v13, "video_land_ad"

    const-string v14, "subtitle_language_map_table"

    const-string v15, "non_ad_plans"

    const-string v16, "local_mcc"

    const-string v17, "short_tv_play"

    const-string v18, "ShortTvFavoriteState"

    const-string v19, "video_detail_play"

    const-string v20, "music_liked"

    const-string v21, "place_list"

    const-string v22, "ugc_video_detail_play"

    const-string v23, "ugc_collection_video_group"

    const-string v24, "member_resolution"

    filled-new-array/range {v3 .. v26}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public q1()Llj/n0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Llj/n0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Llj/n0;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Llj/n0;

    if-nez v0, :cond_1

    new-instance v0, Llj/r0;

    invoke-direct {v0, p0}, Llj/r0;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Llj/n0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->B0:Llj/n0;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic r()Landroidx/room/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baselib/db/AppDatabase_Impl;->G1()Landroidx/room/d0;

    move-result-object v0

    return-object v0
.end method

.method public r1()Lmj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->N0:Lmj/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->N0:Lmj/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->N0:Lmj/a;

    if-nez v0, :cond_1

    new-instance v0, Lmj/d;

    invoke-direct {v0, p0}, Lmj/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->N0:Lmj/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->N0:Lmj/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s1()Lcom/transsion/baselib/db/member/MemberResolutionDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/member/g;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/member/g;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->M0:Lcom/transsion/baselib/db/member/MemberResolutionDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t1()Loj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Loj/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Loj/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Loj/a;

    if-nez v0, :cond_1

    new-instance v0, Loj/h;

    invoke-direct {v0, p0}, Loj/h;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Loj/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->I0:Loj/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u1()Lcom/transsion/baselib/db/place/PlaceDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/place/PlaceDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/place/PlaceDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/place/PlaceDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/place/d;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/place/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/place/PlaceDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->J0:Lcom/transsion/baselib/db/place/PlaceDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public v1()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/h;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/h;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->H0:Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w1()Lrj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lrj/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lrj/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lrj/a;

    if-nez v0, :cond_1

    new-instance v0, Lrj/e;

    invoke-direct {v0, p0}, Lrj/e;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lrj/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->z0:Lrj/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/q;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/q;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->D0:Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public y1()Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/baselib/db/video/d;

    invoke-direct {v0, p0}, Lcom/transsion/baselib/db/video/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->F0:Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public z1()Llj/v0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Llj/v0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Llj/v0;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Llj/v0;

    if-nez v0, :cond_1

    new-instance v0, Llj/c1;

    invoke-direct {v0, p0}, Llj/c1;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Llj/v0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl;->A0:Llj/v0;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
