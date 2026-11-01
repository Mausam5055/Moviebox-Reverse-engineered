.class public final Llm/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkm/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DR_VersionDiffCompareStep"

    iput-object v0, p0, Llm/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;Lkm/b$a;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "request"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "chain"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;->getLocalPageData()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;->getRemotePageData()Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v1}, Lkm/b$a;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lgm/i;->a:Lgm/i;

    invoke-virtual/range {p0 .. p0}, Llm/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "<VersionDiffCompareStep> load start"

    invoke-virtual {v1, v2, v5}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getLocalFileMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v9, v7

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/lib_web/download_render/data/FileData;

    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getSize()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_1

    :cond_2
    move-wide v12, v7

    :goto_1
    add-long/2addr v9, v12

    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/lib_web/download_render/data/FileData;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getMd5()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    sget-object v14, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DELETE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    invoke-virtual {v12, v14}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    invoke-interface {v3, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, v11}, Llm/a;->c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    move-result-object v12

    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    if-nez v12, :cond_4

    sget-object v12, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DOWNLOAD:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    invoke-virtual {v11, v12}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v11}, Llm/a;->c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    move-result-object v12

    invoke-virtual {v11}, Lcom/transsion/lib_web/download_render/data/FileData;->getFileUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    if-nez v12, :cond_7

    sget-object v12, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DOWNLOAD:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    invoke-virtual {v11, v12}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    move-wide/from16 v18, v9

    goto :goto_2

    :cond_9
    move-wide/from16 v18, v7

    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/transsion/lib_web/download_render/data/FileData;

    sget-object v9, Lcom/transsion/lib_web/download_render/data/FileOperateStatus;->DELETE:Lcom/transsion/lib_web/download_render/data/FileOperateStatus;

    invoke-virtual {v8, v9}, Lcom/transsion/lib_web/download_render/data/FileData;->setFileOperateStatus$lib_web_release(Lcom/transsion/lib_web/download_render/data/FileOperateStatus;)V

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    sget-object v1, Lgm/i;->a:Lgm/i;

    invoke-virtual/range {p0 .. p0}, Llm/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v6, "<VersionDiffCompareStep> load end"

    invoke-virtual {v1, v2, v6}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v16

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v17

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llm/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;
    .locals 0

    invoke-static {p0, p1}, Lkm/b$b;->a(Lkm/b;Lcom/transsion/lib_web/download_render/data/FileData;)Lcom/transsion/lib_web/download_render/data/FileData;

    move-result-object p1

    return-object p1
.end method
