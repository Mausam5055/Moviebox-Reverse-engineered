.class public final Ljm/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljm/d;


# instance fields
.field private final a:J

.field private final b:Lcom/transsion/lib_web/download_render/data/PageData;

.field private final c:Ljava/lang/String;

.field private final d:Lkm/a;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(JLcom/transsion/lib_web/download_render/data/PageData;)V
    .locals 3

    const-string v0, "pageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljm/c;->a:J

    iput-object p3, p0, Ljm/c;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    const-string p1, "DR_FileDownloadTask"

    iput-object p1, p0, Ljm/c;->c:Ljava/lang/String;

    new-instance p1, Lkm/a;

    new-instance p2, Llm/b;

    invoke-direct {p2}, Llm/b;-><init>()V

    new-instance p3, Llm/a;

    invoke-direct {p3}, Llm/a;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lkm/b;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, v2, v0, p3}, Lkm/a;-><init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ljm/c;->d:Lkm/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljm/c;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;ZLjava/lang/String;IJ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Ljm/c;->b(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;ZLjava/lang/String;IJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;ZLjava/lang/String;IJ)Lkotlin/Unit;
    .locals 1

    const-string v0, "loadingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    invoke-virtual {v0, p4}, Lcom/transsion/lib_web/download_render/utils/a;->m(Ljava/lang/String;)V

    iput-boolean p3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput p5, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-wide p6, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lgm/i;->a:Lgm/i;

    iget-object v2, v0, Ljm/c;->c:Ljava/lang/String;

    iget-wide v3, v0, Ljm/c;->a:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<FileDownloadTask> start id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/c;->l()Lcom/transsion/lib_web/download_render/data/PageListData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageListData;->getH5Pages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/lib_web/download_render/data/PageData;

    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljm/c;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Collection contains no element matching the predicate."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    new-instance v2, Lcom/transsion/lib_web/download_render/data/PageData;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/transsion/lib_web/download_render/data/PageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const-string v3, "<FileDownloadTask> end id:"

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    sget-object v1, Lgm/i;->a:Lgm/i;

    iget-object v2, v0, Ljm/c;->c:Ljava/lang/String;

    iget-wide v4, v0, Ljm/c;->a:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pageData.url.isNull"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v1, Lgm/i;->a:Lgm/i;

    iget-object v2, v0, Ljm/c;->c:Ljava/lang/String;

    iget-wide v4, v0, Ljm/c;->a:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pageData.versionCode.isNull"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    sget-object v4, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    invoke-virtual {v4, v5}, Lcom/transsion/lib_web/download_render/c;->g(Ljava/lang/String;)Lcom/transsion/lib_web/download_render/data/PageData;

    move-result-object v6

    if-nez v6, :cond_7

    new-instance v6, Lcom/transsion/lib_web/download_render/data/PageData;

    const/16 v17, 0x1ff

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v18}, Lcom/transsion/lib_web/download_render/data/PageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_7
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iget-object v12, v0, Ljm/c;->d:Lkm/a;

    new-instance v13, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;

    invoke-direct {v13, v6, v2}, Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;-><init>(Lcom/transsion/lib_web/download_render/data/PageData;Lcom/transsion/lib_web/download_render/data/PageData;)V

    invoke-virtual {v12, v13}, Lkm/a;->a(Lcom/transsion/lib_web/download_render/task/compare/CompareRequest;)Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/transsion/lib_web/download_render/c;->u(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1}, Lcom/transsion/lib_web/download_render/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getRemoveFileList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    const/4 v14, 0x0

    if-eqz v12, :cond_9

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getCopyFileList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_1

    :cond_8
    move v4, v14

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {v4, v5}, Lcom/transsion/lib_web/download_render/c;->t(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v14}, Lcom/transsion/lib_web/download_render/c;->s(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    :goto_2
    iget-object v12, v0, Ljm/c;->e:Ljava/util/List;

    new-instance v15, Lmm/b;

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getRemoveFileList()Ljava/util/List;

    move-result-object v14

    invoke-direct {v15, v5, v1, v14}, Lmm/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v0, Ljm/c;->e:Ljava/util/List;

    new-instance v14, Lmm/a;

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getCopyFileList()Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v5, v1, v15}, Lmm/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v0, Ljm/c;->e:Ljava/util/List;

    new-instance v14, Lmm/c;

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    move-result-object v15

    new-instance v13, Ljm/b;

    invoke-direct {v13, v7, v10, v11}, Ljm/b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    invoke-direct {v14, v5, v1, v15, v13}, Lmm/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Ljm/c;->e:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmm/d;

    invoke-interface {v12}, Lmm/d;->invoke()V

    goto :goto_3

    :cond_a
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v1, v12, :cond_b

    sget-object v1, Lcom/transsion/lib_web/download_render/c;->a:Lcom/transsion/lib_web/download_render/c;

    const/4 v12, 0x1

    invoke-virtual {v1, v5, v12}, Lcom/transsion/lib_web/download_render/c;->s(Ljava/lang/String;Z)V

    :cond_b
    if-eqz v4, :cond_e

    sget-object v4, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->a:Lcom/transsion/lib_web/download_render/utils/ReportUtil;

    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getRemoveFileList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getCopyFileList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getDownloadFileList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getFiles()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v16, v2

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    :goto_4
    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v8

    iget-boolean v15, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v6}, Lcom/transsion/lib_web/download_render/task/compare/CompareResponse;->getTotalFileSize()J

    move-result-wide v19

    iget-wide v10, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v6, v1

    move v7, v12

    move v8, v13

    move v9, v14

    move-wide/from16 v21, v10

    move/from16 v10, v16

    move v11, v2

    move-wide/from16 v12, v17

    move v14, v15

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    invoke-virtual/range {v4 .. v18}, Lcom/transsion/lib_web/download_render/utils/ReportUtil;->b(Ljava/lang/String;Ljava/lang/String;IIIIIJZJJ)V

    :cond_e
    sget-object v1, Lgm/i;->a:Lgm/i;

    iget-object v2, v0, Ljm/c;->c:Ljava/lang/String;

    iget-wide v4, v0, Ljm/c;->a:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_5
    sget-object v1, Lgm/i;->a:Lgm/i;

    iget-object v2, v0, Ljm/c;->c:Ljava/lang/String;

    iget-wide v4, v0, Ljm/c;->a:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", pageData.files.isNullOrEmpty"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgm/i;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
