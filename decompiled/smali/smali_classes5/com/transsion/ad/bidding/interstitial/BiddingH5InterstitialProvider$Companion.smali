.class public final Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;

    iget v3, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;-><init>(Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v10

    iget v4, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->label:I

    const/4 v11, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v12, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v11, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    iput-object v0, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->label:I

    invoke-virtual {v1, v0, v2}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_5

    return-object v10

    :cond_5
    :goto_1
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    sget-object v1, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v6, v12}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_7
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-array v8, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    iput-object v0, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->label:I

    const-string v9, "H5_PRELOAD"

    move-object v4, v1

    move-object v5, v0

    move-object v6, v7

    move-object v7, v9

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_8

    return-object v10

    :cond_8
    :goto_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_H5:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->b(Ljava/util/List;)Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    move-object v1, v12

    :goto_4
    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v13, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BiddingH5InterstitialProvider() preloadWebview --> sceneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ## url = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/4 v14, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v4, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$2$1;

    invoke-direct {v4, v1, v12}, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$2$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v12, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->L$0:Ljava/lang/Object;

    iput v11, v2, Lcom/transsion/ad/bidding/interstitial/BiddingH5InterstitialProvider$Companion$preloadWebview$1;->label:I

    invoke-static {v0, v4, v2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_d

    return-object v10

    :cond_d
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
