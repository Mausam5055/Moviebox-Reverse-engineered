.class public abstract Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->l(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->m(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->p(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->i(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/String;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Ljava/util/List;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "viewModel"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "baseList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0, v2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->E(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyHomePreferencesInsertToList$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyHomePreferencesInsertToList$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lel/a;

    invoke-virtual {v1}, Lel/a;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v3

    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    move-object v4, v15

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

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

    const/16 v16, 0x0

    move-object/from16 v38, v15

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

    const/16 v35, 0x0

    invoke-direct/range {v4 .. v37}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lel/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v1

    move-object/from16 v4, v38

    invoke-virtual {v4, v1}, Lcom/transsion/home/bean/OperateItem;->setHomePreferencesConfig(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final g(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "data"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "blockList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "instructions"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyPreferencesInsertWithBlocksForUgc$$inlined$sortedBy$1;

    invoke-direct {v5}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$applyPreferencesInsertWithBlocksForUgc$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lel/a;

    invoke-virtual {v5}, Lel/a;->b()I

    move-result v6

    const/4 v7, 0x2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v7, v8}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v6

    invoke-virtual {v5}, Lel/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    if-lt v6, v8, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    goto/16 :goto_6

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_PORTRAIT_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, -0x1

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v11, v9

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/home/bean/OperateItem;

    if-ne v12, v6, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    move v6, v10

    :goto_3
    if-ltz v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    move-result-object v8

    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v11, v9

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v12}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    move-result-object v12

    if-ne v12, v8, :cond_a

    move v6, v11

    goto :goto_5

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_b
    move v6, v10

    goto :goto_5

    :cond_c
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    :goto_5
    if-ltz v6, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_6
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_e

    move v9, v6

    :cond_e
    sget-object v10, Llg/a;->a:Llg/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyPreferencesInsertWithBlocksForUgc, \u63d2\u5165\u8fd0\u8425\u4f4d targetPos:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "HomePreferences"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v6, Lcom/transsion/home/bean/OperateItem;

    move-object/from16 v16, v6

    sget-object v8, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v18

    const v48, 0x7ffffffd

    const/16 v49, 0x0

    const/16 v17, 0x0

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

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-direct/range {v16 .. v49}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5}, Lel/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/transsion/home/bean/OperateItem;->setHomePreferencesConfig(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v3, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->clear()V

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    :goto_7
    return-void
.end method

.method public static final h(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v8, p0

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layoutManager"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewModel"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "currentListSize"

    move-object/from16 v7, p4

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const v2, 0x7fffffff

    iput v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->v()Landroidx/lifecycle/b0;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v14

    new-instance v15, Lcom/transsion/home/fragment/tab/f;

    move-object v2, v15

    move-object/from16 v3, p0

    move-object v4, v1

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/fragment/tab/f;-><init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;)V

    new-instance v2, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;

    invoke-direct {v2, v15}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v13, v14, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    new-instance v13, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;

    move-object v2, v13

    move-object v3, v1

    move-object/from16 v4, p2

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method

.method private static final i(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-virtual {p0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_5

    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getRefreshType()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/transsion/home/bean/HomePreferencesRefreshType;->NO_REFRESH:Lcom/transsion/home/bean/HomePreferencesRefreshType;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iput-object p5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getPos()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p0

    iput p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iput-object p5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getPos()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_4
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_1
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p0

    iput p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final j(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;ILjava/lang/String;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/home/fragment/tab/b;

    invoke-direct {v0, p1, p3, p4}, Lcom/transsion/home/fragment/tab/b;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/home/adapter/trending/provider/e;->L(Lkotlin/jvm/functions/Function3;)V

    new-instance v0, Lcom/transsion/home/fragment/tab/c;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/transsion/home/fragment/tab/c;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V

    invoke-virtual {p0, v0}, Lcom/transsion/home/adapter/trending/provider/e;->J(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/transsion/home/fragment/tab/d;

    invoke-direct {p2, p1, p3, p4}, Lcom/transsion/home/fragment/tab/d;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/home/adapter/trending/provider/e;->K(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final k(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scene"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4, p5}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->M(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;Ljava/lang/String;)V

    sget-object p0, Lrl/c;->a:Lrl/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lrl/c;->r(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 2

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->C(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object p0, Lrl/c;->a:Lrl/c;

    invoke-virtual {p0, p1, p2, p4}, Lrl/c;->p(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {p3, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->C0(I)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final m(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)Lkotlin/Unit;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->D(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object p0, Lrl/c;->a:Lrl/c;

    invoke-virtual {p0, p1, p2, p3}, Lrl/c;->q(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final n(Ljava/util/List;)Ljava/util/List;
    .locals 9

    const-string v0, "flatList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_MARGIN:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->FEEDS_TITLE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v8}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_4
    move-object v6, v7

    :goto_2
    check-cast v6, Lcom/transsion/home/bean/OperateItem;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    move-result-object v7

    :cond_5
    if-eqz v7, :cond_7

    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    move-result-object v4

    if-nez v4, :cond_8

    move-object v4, v3

    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-object v1
.end method

.method public static final o(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->u()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/fragment/tab/e;

    invoke-direct {v1, p0, p2}, Lcom/transsion/home/fragment/tab/e;-><init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)V

    new-instance p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;

    invoke-direct {p0, v1}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method private static final p(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 40

    invoke-virtual/range {p2 .. p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v4}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P0(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$observeHomePreferencesInsertInstructions$lambda$12$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$observeHomePreferencesInsertInstructions$lambda$12$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lel/a;

    invoke-virtual {v3}, Lel/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lel/a;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v4

    new-instance v15, Lcom/transsion/home/bean/OperateItem;

    move-object v5, v15

    sget-object v6, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

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

    const/16 v16, 0x0

    move-object/from16 v39, v15

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

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v5 .. v38}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/memberapi/MemberRemindData;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/tv/bean/TvChannelItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Lel/a;->a()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v3

    move-object/from16 v5, v39

    invoke-virtual {v5, v3}, Lcom/transsion/home/bean/OperateItem;->setHomePreferencesConfig(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v3, p1

    invoke-virtual {v3, v4, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_8
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
