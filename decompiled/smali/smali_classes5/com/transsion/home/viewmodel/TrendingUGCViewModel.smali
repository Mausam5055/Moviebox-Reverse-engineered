.class public final Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;

.field public static final m:I

.field private static n:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->l:Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    const-string p1, "1"

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    const/16 p1, 0xe

    iput p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    new-instance p1, Lcom/transsion/home/viewmodel/o;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/o;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/p;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/p;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/q;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/q;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/r;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/r;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->i:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/s;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/s;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->j:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/t;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/t;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final C()Lol/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/e;

    return-object v0
.end method

.method private final F(Lcom/transsion/home/bean/MainOperateData;)V
    .locals 78

    move-object/from16 v0, p1

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object/from16 v2, p0

    goto/16 :goto_12

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$handlerOperateData$$inlined$sortedBy$1;

    invoke-direct {v4}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$handlerOperateData$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/home/bean/MainOperateData;->setItems(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->SPORT_LIVE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getLiveList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/transsion/home/bean/LiveListItem;

    invoke-virtual {v9}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MatchEnded"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v7, v3

    :cond_6
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_MOVIE_RANK:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_d

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/transsion/moviedetailapi/bean/PostItemType;->CUSTOM_DATA:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_d

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v5}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_3

    :cond_d
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getGroupPos()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x1

    if-lez v3, :cond_12

    sget-object v3, Laq/h;->a:Laq/h;

    invoke-virtual {v3, v4}, Laq/h;->m(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getGroupPos()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_11

    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    move-object v7, v1

    sget-object v3, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v9

    const v39, 0x7fffffed

    const/16 v40, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "TrendingRoom"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

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

    const/16 v38, 0x0

    invoke-direct/range {v7 .. v40}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    move-object/from16 v41, v1

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v43

    const v73, 0x7fffffed

    const/16 v74, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-string v46, "TrendingRoom"

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

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

    invoke-direct/range {v41 .. v74}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_12
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_SUBJECT_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    move-result-object v5

    const-string v8, "UGC_VIDEO_PORTRAIT_LINES"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_14

    move v5, v4

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_15

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    move v7, v4

    :goto_d
    if-nez v7, :cond_17

    sget-object v7, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getDeepLink()Ljava/lang/String;

    move-result-object v12

    new-instance v7, Lcom/transsion/home/bean/OperateItem;

    move-object v8, v7

    const v40, 0x7ffffff4

    const/16 v41, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

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

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v8 .. v41}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1d

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    const/4 v7, 0x0

    :goto_e
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v42, v7, 0x1

    if-gez v7, :cond_18

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_18
    check-cast v8, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    if-nez v7, :cond_19

    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    move-object v7, v15

    sget-object v9, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v28

    const v39, 0x6feffffd

    const/16 v40, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v6, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v36, v3

    invoke-direct/range {v7 .. v40}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_19
    if-eqz v5, :cond_1b

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v7, v6, :cond_1a

    move v6, v4

    goto :goto_f

    :cond_1a
    const/4 v6, 0x0

    :goto_f
    if-nez v6, :cond_1c

    :cond_1b
    new-instance v6, Lcom/transsion/home/bean/OperateItem;

    move-object v7, v6

    sget-object v9, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v28

    const v39, 0x6feffffd

    const/16 v40, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v36, v3

    invoke-direct/range {v7 .. v40}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_10
    move/from16 v7, v42

    goto/16 :goto_e

    :cond_1d
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    move-object/from16 v44, v3

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_MARGIN:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v46

    const v76, 0x7ffffffd

    const/16 v77, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

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

    invoke-direct/range {v44 .. v77}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1e
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UGC_VIDEO_SHORT_TV"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_PORTRAIT_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/transsion/home/bean/OperateItem;->setType(Ljava/lang/String;)V

    :cond_1f
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->e()Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->x(Ljava/util/List;)I

    move-result v3

    if-ltz v3, :cond_22

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_22

    new-instance v4, Lcom/transsion/home/bean/OperateItem;

    move-object v5, v4

    sget-object v6, Lcom/transsion/moviedetailapi/bean/PostItemType;->NO_NETWORK:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v7

    const v37, 0x7ffffffd

    const/16 v38, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

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

    invoke-direct/range {v5 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_11

    :cond_21
    move-object/from16 v2, p0

    :cond_22
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getTrendingTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/MainOperateData;->getTrendingTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    move-object v4, v3

    const v36, 0x7ffffffc

    const/16 v37, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

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

    invoke-direct/range {v4 .. v37}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/MainOperateData;->setItems(Ljava/util/List;)V

    :goto_12
    return-void
.end method

.method private static final G()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final H()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final K()V
    .locals 3

    new-instance v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$1;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$2;

    invoke-direct {v2, p0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestOperateData$2;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, v2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->b(Landroidx/lifecycle/t0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final L()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final M(Lcom/transsion/home/bean/MainOperateData;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "trending_operating_version"

    invoke-virtual {p1}, Lcom/transsion/home/bean/MainOperateData;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v1, "trending_operating_data"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method private static final O()Lol/e;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lol/e;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/e;

    return-object v0
.end method

.method private static final P()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->G()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->P()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->H()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->v(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->L()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->s()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Lol/e;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->O()Lol/e;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k()Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
    .locals 1

    sget-object v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->n:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lol/e;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->C()Lol/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/bean/MainOperateData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->F(Lcom/transsion/home/bean/MainOperateData;)V

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lcom/transsion/home/bean/MainOperateData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->M(Lcom/transsion/home/bean/MainOperateData;)V

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V
    .locals 0

    sput-object p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->n:Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->d:Z

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    return-void
.end method

.method private static final s()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 1

    new-instance v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    invoke-direct {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;-><init>()V

    return-object v0
.end method

.method private final t(Ljava/util/List;)Ljava/util/List;
    .locals 39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/home/bean/TrendingRespItem;

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getDisplayMeta()Lcom/transsion/home/bean/DisplayMeta;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/home/bean/DisplayMeta;->getLayoutType()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    sget-object v5, Lcom/transsion/home/bean/FeedsLayoutType;->FULL:Lcom/transsion/home/bean/FeedsLayoutType;

    invoke-virtual {v5}, Lcom/transsion/home/bean/FeedsLayoutType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    :cond_3
    move-object/from16 v26, v4

    const v37, 0x7feffffd

    const/16 v38, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

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

    move-object v5, v3

    invoke-direct/range {v5 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getDisplayMeta()Lcom/transsion/home/bean/DisplayMeta;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/home/bean/DisplayMeta;->getLayoutType()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    sget-object v5, Lcom/transsion/home/bean/FeedsLayoutType;->HALF:Lcom/transsion/home/bean/FeedsLayoutType;

    invoke-virtual {v5}, Lcom/transsion/home/bean/FeedsLayoutType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    :cond_6
    move-object/from16 v26, v4

    const v37, 0x7feffffd

    const/16 v38, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

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

    move-object v5, v3

    invoke-direct/range {v5 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private static final v(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)Lkotlin/Unit;
    .locals 4

    sget-object v0, Lrl/e;->a:Lrl/e;

    invoke-virtual {v0}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "trending_room_entrance_cache_v2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TrendingUGCFragment"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-class v3, Lcom/transsion/home/bean/RoomEntranceResponse;

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/RoomEntranceResponse;

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->B()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p0, Llg/a;->a:Llg/a$a;

    const-string v0, "fetchGroupInfo use cache"

    invoke-virtual {p0, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const-string v0, "fetchGroupInfo failed without cache"

    invoke-virtual {p0, v2, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final w()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    return-object v0
.end method


# virtual methods
.method public final A(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "trending_operating_data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->w()Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingBuiltInHelper;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 p1, 0x1

    const-string v1, "PreloadTrending"

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-class v2, Lcom/transsion/home/bean/MainOperateData;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/MainOperateData;

    if-eqz v0, :cond_5

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Lcom/transsion/home/bean/MainOperateData;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load operating cache size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->F(Lcom/transsion/home/bean/MainOperateData;)V

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "preloadOperatingCache json is null"

    invoke-virtual {v0, v1, v2, p1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when from json "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0, p1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->K()V

    return-void
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->e:Ljava/util/List;

    return-object v0
.end method

.method public final E()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final I()V
    .locals 1

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    const/16 v0, 0xe

    iput v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->K()V

    return-void
.end method

.method public final J()V
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->d:Z

    new-instance v0, Lcom/transsion/home/bean/TrendingRequestEntity;

    invoke-direct {v0}, Lcom/transsion/home/bean/TrendingRequestEntity;-><init>()V

    iget-object v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPage(Ljava/lang/String;)V

    iget v1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->c:I

    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPerPage(I)V

    sget-object v1, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v1}, Lyg/b$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setSessionId(Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/h;->c()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDeepLink(Ljava/lang/String;)V

    new-instance v1, Lwj/a;

    sget-object v2, Lwj/b;->a:Lwj/b$a;

    invoke-virtual {v2}, Lwj/b$a;->e()Ljava/util/Queue;

    move-result-object v2

    invoke-direct {v1, v2}, Lwj/a;-><init>(Ljava/util/Queue;)V

    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    new-instance v6, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;

    const/4 v1, 0x0

    invoke-direct {v6, v0, p0, v1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$requestFeedsList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final N(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->e:Ljava/util/List;

    return-void
.end method

.method public final u(Z)V
    .locals 7

    new-instance v0, Lcom/transsion/home/viewmodel/u;

    invoke-direct {v0, p0}, Lcom/transsion/home/viewmodel/u;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$fetchGroupInfo$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$fetchGroupInfo$1;-><init>(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final x(Ljava/util/List;)I
    .locals 1

    const-string v0, "operateItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method
