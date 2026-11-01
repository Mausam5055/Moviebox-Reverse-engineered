.class public final Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;
.super Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;


# instance fields
.field private volatile u:Lmu/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;-><init>()V

    return-void
.end method

.method static synthetic m0(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;Lz3/b;)V
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

    const-class v1, Lmu/a;

    invoke-static {}, Lmu/i;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public l0()Lmu/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lmu/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lmu/a;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lmu/a;

    if-nez v0, :cond_1

    new-instance v0, Lmu/i;

    invoke-direct {v0, p0}, Lmu/i;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lmu/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lmu/a;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected n0()Landroidx/room/d0;
    .locals 4

    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;

    const-string v1, "b69203d51150b93b225b86bfd78bf875"

    const-string v2, "a207c71dcb7f4328cd120ce375a1f942"

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

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

    const-string v3, "st_download_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic r()Landroidx/room/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->n0()Landroidx/room/d0;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
