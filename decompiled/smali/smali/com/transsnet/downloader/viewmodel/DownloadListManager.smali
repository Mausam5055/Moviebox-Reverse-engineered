.class public final Lcom/transsnet/downloader/viewmodel/DownloadListManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

.field private static final n:Lkotlin/Lazy;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Landroidx/lifecycle/b0;

.field private h:Landroidx/lifecycle/b0;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;

.field private j:Landroidx/lifecycle/b0;

.field private k:Z

.field private l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsnet/downloader/viewmodel/c;

    invoke-direct {v1}, Lcom/transsnet/downloader/viewmodel/c;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->n:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsnet/downloader/viewmodel/d;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/e;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/f;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/g;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/h;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/viewmodel/i;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->f:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    return-void
.end method

.method public static synthetic I(Lcom/transsnet/downloader/viewmodel/DownloadListManager;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->H(ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method

.method private final L()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method public static synthetic N(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/lang/String;IILjava/lang/String;IILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x1

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/16 p3, 0x14

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const-string p4, ""

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    sget-object p2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    const-string p3, "download_last_resolution"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p5

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->M(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method private final R(Ljava/util/List;)Ljava/util/List;
    .locals 101

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v4, p1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-array v7, v1, [Lcom/transsion/baselib/db/download/DownloadBean;

    aput-object v5, v7, v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 p1, v3

    goto/16 :goto_5

    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v9, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v6, v9

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v98, 0x0

    invoke-static/range {v98 .. v99}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    move-result-wide v24

    const v96, 0xffff

    const/16 v97, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const v94, -0x8220

    const/16 v95, -0x1

    const-string v7, "series"

    const-string v8, "series"

    const-string v100, ""

    move-object v0, v9

    move-object/from16 v9, v100

    invoke-direct/range {v6 .. v97}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v1, :cond_7

    new-instance v7, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$lambda$14$$inlined$sortBy$1;

    invoke-direct {v7}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$lambda$14$$inlined$sortBy$1;-><init>()V

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v15, v5

    move-wide/from16 v9, v98

    move-wide v11, v9

    move-wide v13, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    move-object/from16 p1, v3

    const/16 v3, 0xe

    if-ne v1, v3, :cond_8

    move-object/from16 v3, p1

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    :cond_9
    if-nez v16, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v15, v17

    const/16 v16, 0x1

    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_3

    :cond_b
    move-wide/from16 v19, v98

    :goto_3
    add-long v9, v9, v19

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_4

    :cond_c
    move-wide/from16 v19, v98

    :goto_4
    add-long v11, v11, v19

    invoke-virtual/range {v17 .. v17}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v19

    add-long v13, v13, v19

    move-object/from16 v3, p1

    const/4 v1, 0x1

    goto :goto_2

    :cond_d
    move-object/from16 p1, v3

    invoke-virtual {v0, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCount(I)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSize(Ljava/lang/Long;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->c0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v3, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    move-object/from16 v1, p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_f

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$$inlined$sortByDescending$1;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$handleDownloaded$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    return-object v2
.end method

.method private final S(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final T(Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 95

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    const-string v4, "ad"

    const-string v5, "ad"

    const-string v6, "ad"

    const-string v7, ""

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const v93, 0xffff

    const/16 v94, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, -0x20

    const/16 v92, -0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v94}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setWrapNativeManager(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V0()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v3, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    return-void
.end method

.method private static final U()Lcom/transsnet/downloader/viewmodel/DownloadListManager;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;-><init>()V

    return-object v0
.end method

.method private static final W()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final X()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method public static synthetic a()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->X()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->y()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->w()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private final c0(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic d()Lcom/transsnet/downloader/viewmodel/DownloadListManager;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->U()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Llj/c;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->t()Llj/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->W()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->u()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->q(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->s(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->v(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->n:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/viewmodel/DownloadListManager;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->L()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->S(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic o(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->T(Ljava/util/List;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-void
.end method

.method private final q(Ljava/util/List;)V
    .locals 9

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v8, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final s(Ljava/util/List;)V
    .locals 3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->s()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "download_ops"

    const-string v0, "delete_download_file"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "download"

    const-string v2, "app_perf"

    invoke-virtual {v0, v1, v2, p1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private static final t()Llj/c;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->p1()Llj/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final u()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final v(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->R(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2-  get getDownloadedList success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadPanel"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object p2
.end method

.method private static final w()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;

    iget v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p1

    iput v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$downloadingList$1;->label:I

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, -0x1

    :goto_3
    if-lez v4, :cond_6

    invoke-static {p1, v4, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 -- get getDownloadingList success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "DownloadPanel"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v0
.end method

.method private static final y()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final C()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final E()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getDownloadedList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getDownloadedList$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final F()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final G()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final H(ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->E()V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;

    const/4 v7, 0x0

    move-object v2, v0

    move v3, p2

    move-object v4, p0

    move v5, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/DownloadListManager;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final J(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->G(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final K()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final M(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1;

    const/4 v9, 0x0

    move-object v2, v0

    move v3, p5

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$getShortTVList$1;-><init>(ILcom/transsnet/downloader/viewmodel/DownloadListManager;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final O(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "linkUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->L()Lqy/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p1}, Lqy/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;

    invoke-direct {p2, p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final Q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k:Z

    return v0
.end method

.method public final Y(Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->g:Landroidx/lifecycle/b0;

    return-void
.end method

.method public final Z(Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    return-void
.end method

.method public final a0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->k:Z

    return-void
.end method

.method public final b0(Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->j:Landroidx/lifecycle/b0;

    return-void
.end method

.method public final p(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    const-string v0, "downloadBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->h:Landroidx/lifecycle/b0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Landroidx/lifecycle/b0;

    invoke-direct {v1}, Landroidx/lifecycle/b0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method
