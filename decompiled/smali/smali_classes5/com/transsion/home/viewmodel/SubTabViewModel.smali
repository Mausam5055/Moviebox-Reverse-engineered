.class public final Lcom/transsion/home/viewmodel/SubTabViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/SubTabViewModel$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/home/viewmodel/SubTabViewModel$a;

.field public static final i:I


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Lkotlin/Lazy;

.field private final e:Lol/e;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/viewmodel/SubTabViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->h:Lcom/transsion/home/viewmodel/SubTabViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/home/viewmodel/n;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/n;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->d:Lkotlin/Lazy;

    sget-object p1, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p1}, Lzg/c$a;->a()Lzg/c;

    move-result-object p1

    const-class v0, Lol/e;

    invoke-virtual {p1, v0}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol/e;

    iput-object p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lol/e;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    sget-object p1, Lak/g;->a:Lak/g;

    invoke-virtual {p1}, Lak/g;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/SubTabViewModel;->x()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/SubTabViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/viewmodel/SubTabViewModel;->r(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/home/viewmodel/SubTabViewModel;)Lol/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lol/e;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/SubTabViewModel;Lcom/transsion/home/bean/SubOperateData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/SubTabViewModel;->u(Lcom/transsion/home/bean/SubOperateData;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/home/viewmodel/SubTabViewModel;ILcom/transsion/home/bean/SubOperateData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->v(ILcom/transsion/home/bean/SubOperateData;)V

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/home/viewmodel/SubTabViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/home/viewmodel/SubTabViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    return-void
.end method

.method private final l(Ljava/util/List;)Ljava/util/List;
    .locals 38

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/home/bean/TrendingRespItem;

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getType()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/transsion/home/bean/TrendingRespItemType;->SUBJECT:Lcom/transsion/home/bean/TrendingRespItemType;

    invoke-virtual {v4}, Lcom/transsion/home/bean/TrendingRespItemType;->getValue()I

    move-result v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    move-object v4, v3

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v6

    const v36, 0x7ffffffd

    const/16 v37, 0x0

    const/4 v5, 0x0

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

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/home/bean/OperateItem;->setFeedsSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final m(Ljava/util/List;)Ljava/util/List;
    .locals 73

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

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
    new-instance v3, Lcom/transsion/home/bean/OperateItem;

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v41

    invoke-virtual {v2}, Lcom/transsion/home/bean/TrendingRespItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    :cond_5
    move-object/from16 v60, v4

    const v71, 0x7feffffd

    const/16 v72, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

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

    move-object/from16 v39, v3

    invoke-direct/range {v39 .. v72}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private final o(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final r(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move/from16 v9, p1

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;

    iget v3, v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;-><init>(Lcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v2, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    const-string v11, ""

    const-string v12, "sub_operation_version_prefix"

    const/4 v3, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v13, :cond_2

    if-ne v2, v3, :cond_1

    iget v2, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    iget-object v3, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v2, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    iget-object v3, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lrl/e;->a:Lrl/e;

    invoke-virtual {v1}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-direct {p0, v12, v9}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-boolean v1, v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lol/e;

    iput-object v14, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    iput v9, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    iput v13, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lol/e$a;->f(Lol/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_4

    return-object v10

    :cond_4
    move v2, v9

    move-object v3, v14

    :goto_2
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/transsion/home/viewmodel/SubTabViewModel;->e:Lol/e;

    iput-object v14, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->L$0:Ljava/lang/Object;

    iput v9, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->I$0:I

    iput v3, v6, Lcom/transsion/home/viewmodel/SubTabViewModel$getSubOperation$1;->label:I

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lol/e$a;->d(Lol/e;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_6

    return-object v10

    :cond_6
    move v2, v9

    move-object v3, v14

    :goto_3
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    :goto_4
    const-string v4, "sub_operation_prefix"

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/SubOperateData;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-ne v3, v13, :cond_8

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/SubOperateData;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/home/bean/SubOperateData;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_8

    sget-object v3, Lrl/e;->a:Lrl/e;

    invoke-virtual {v3}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-direct {p0, v4, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v11}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/transsion/home/bean/SubOperateData;

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    :goto_5
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/SubOperateData;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v13

    if-ne v3, v13, :cond_a

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lrl/e;->a:Lrl/e;

    invoke-virtual {v5}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    invoke-direct {p0, v4, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v5}, Lrl/e;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-direct {p0, v12, v2}, Lcom/transsion/home/viewmodel/SubTabViewModel;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/home/bean/SubOperateData;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/transsion/home/bean/SubOperateData;->getVersion()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v2, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a
    :goto_7
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private final u(Lcom/transsion/home/bean/SubOperateData;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_SUBJECT_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UGC_VIDEO_LIST_METADATA"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_VERTICAL_OPT_LIST:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/home/bean/OperateItem;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final v(ILcom/transsion/home/bean/SubOperateData;)V
    .locals 37

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v3, v1}, Lcom/transsion/edcation/CourseManager;->s(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    move-object v3, v15

    sget-object v4, Lcom/transsion/moviedetailapi/bean/PostItemType;->MY_COURSE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    const v35, 0x7ffffffd

    const/16 v36, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v1, v15

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

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v3 .. v36}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getTrendingTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/SubOperateData;->getTrendingTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/transsion/home/bean/OperateItem;

    move-object v2, v1

    const v34, 0x7ffffffc

    const/16 v35, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

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

    invoke-direct/range {v2 .. v35}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final x()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final n(IZLjava/lang/String;)V
    .locals 10

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v8

    new-instance v9, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p2

    move-object v2, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/viewmodel/SubTabViewModel$fetchOperateData$1;-><init>(ZLcom/transsion/home/viewmodel/SubTabViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    move-object v4, v7

    move-object v5, v8

    move-object v7, v9

    move v8, p1

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t(ILjava/lang/String;Z)V
    .locals 8

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    iput p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    :cond_0
    new-instance v1, Lcom/transsion/home/bean/TrendingRequestEntity;

    invoke-direct {v1}, Lcom/transsion/home/bean/TrendingRequestEntity;-><init>()V

    iget p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->f:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPage(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    if-eqz p3, :cond_1

    const/16 p3, 0xe

    goto :goto_0

    :cond_1
    const/16 p3, 0xc

    :goto_0
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPerPage(I)V

    sget-object p3, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {p3}, Lyg/b$a;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setSessionId(Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {p3}, Lcom/transsion/baselib/report/h;->c()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    :cond_2
    const-string p3, ""

    :cond_3
    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDeepLink(Ljava/lang/String;)V

    new-instance p3, Lwj/a;

    sget-object v0, Lwj/b;->a:Lwj/b$a;

    invoke-virtual {v0}, Lwj/b$a;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-direct {p3, v0}, Lwj/a;-><init>(Ljava/util/Queue;)V

    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    sget-object p3, Lak/o;->a:Lak/o;

    invoke-virtual {p3}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lak/o;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/transsion/home/bean/TrendingRequestEntity;->setGrade(Ljava/lang/String;)V

    :cond_4
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object p3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v6

    new-instance v7, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/viewmodel/SubTabViewModel$getTrendingList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/SubTabViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, v6

    move-object v5, v7

    move v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/SubTabViewModel;->g:Z

    return-void
.end method
