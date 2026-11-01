.class public final Lcom/transsion/lib_web/download_render/utils/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/utils/a;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/download_render/utils/a;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/utils/a;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final l(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/RenderSource;)V
    .locals 18

    move-object/from16 v14, p1

    const-string v0, "url"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v15, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/lib_web/download_render/utils/RenderSource;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v12, 0x3f8

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/transsion/lib_web/download_render/utils/RenderStage;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b()V
    .locals 10

    :try_start_0
    sget-object v0, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageListData;->getH5Pages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/data/PageListData;->getLocalH5Pages()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    :cond_3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/lib_web/download_render/data/PageData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/lib_web/download_render/data/PageData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    const/4 v7, 0x0

    if-nez v5, :cond_7

    :try_start_1
    new-instance v5, Lcom/transsion/lib_web/download_render/utils/DownloadData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v8

    :goto_1
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v7

    :goto_2
    invoke-direct {v5, v4, v6, v3, v7}, Lcom/transsion/lib_web/download_render/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    new-instance v8, Lcom/transsion/lib_web/download_render/utils/DownloadData;

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    move-object v6, v9

    :goto_3
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    :cond_9
    invoke-virtual {v5}, Lcom/transsion/lib_web/download_render/data/PageData;->getLocalFileMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v8, v4, v6, v7, v3}, Lcom/transsion/lib_web/download_render/utils/DownloadData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    invoke-virtual {v0, v2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setException(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setException(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setException(I)V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileDataNull(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileDataNull(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileDataNull(I)V

    :cond_2
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileOperateStatusAbort(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileOperateStatusAbort(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileOperateStatusAbort(I)V

    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileUnExist(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileUnExist(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setFileUnExist(I)V

    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setHtmlFromRemote(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setHtmlFromRemote(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setHtmlFromRemote(I)V

    :cond_2
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setScore(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setScore(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getStageFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setScore(I)V

    :cond_2
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setNeedReport(Z)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x64

    if-ne p3, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setRenderWithDownload(Z)V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 4

    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "<get-keys>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "first(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/lib_web/download_render/utils/a;->q(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v3, "<get-values>(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    invoke-virtual {v2, v0}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->c(Lcom/transsion/lib_web/download_render/utils/RenderStage;)V

    invoke-direct {p0, v1}, Lcom/transsion/lib_web/download_render/utils/a;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;Lcom/transsion/lib_web/download_render/utils/CacheType;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/lib_web/download_render/utils/CacheType;->getDes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setStageFinished(Z)V

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setRenderTime(J)V

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setStageFinished(Z)V

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setRenderTime(J)V

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/lib_web/download_render/utils/a;->c(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setStageFinished(Z)V

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->setRenderTime(J)V

    :cond_0
    return-void
.end method
