.class public final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;
    }
.end annotation


# static fields
.field public static final s:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;


# instance fields
.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Ldi/a;

.field private i:I

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private l:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private final m:Lkotlin/Lazy;

.field private final n:Ljava/lang/Runnable;

.field private o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

.field private p:Lcom/transsion/ad/bidding/icon/f;

.field private final q:Ljava/util/Set;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->s:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ldi/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/transsion/ad/bidding/icon/b;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->m:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/ad/bidding/icon/c;

    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/icon/c;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->n:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->q:Ljava/util/Set;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->r:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->T()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic B(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->P(Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ldi/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->U(Ldi/a;Ljava/lang/String;)V

    return-void
.end method

.method private final F(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->Q()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->G(Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v4, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    goto :goto_3

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    iget-object v4, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v2

    :goto_3
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    invoke-virtual {v7}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getEcpm()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "\u7ade\u4ef7\u5931\u8d25 --> \u65e0\u5e7f\u544a\u6570\u636e"

    goto :goto_8

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getEcpm()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_5

    :cond_8
    move-object v5, v2

    :goto_5
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v2

    :goto_6
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_a
    move-object v8, v2

    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7ade\u4ef7\u6210\u529f --> ecpmList = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " --> max item: ecpm = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", plans.id = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", plans.name = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8
    sget-object v7, Lri/c;->a:Lri/c;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v20, ""

    if-nez v9, :cond_b

    move-object/from16 v9, v20

    :cond_b
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    sget-object v10, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_FAIL:Lcom/transsion/ad/report/BiddingStateEnum;

    :goto_9
    move-object v12, v10

    goto :goto_a

    :cond_c
    sget-object v10, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_SUCCESS:Lcom/transsion/ad/report/BiddingStateEnum;

    goto :goto_9

    :goto_a
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getEcpm()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_b

    :cond_d
    move-object v3, v2

    :goto_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_e
    move-object v3, v2

    :goto_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_f
    move-object v3, v2

    :goto_d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_e

    :cond_10
    move-object/from16 v19, v2

    :goto_e
    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v18, ""

    const/4 v11, 0x6

    move-object v13, v5

    invoke-virtual/range {v7 .. v19}, Lri/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/transsion/ad/report/BiddingStateEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v4

    iget v6, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->i:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> sceneId = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> onBiddingLoad() --> "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> targetNum = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> data.size = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x2

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    iget v3, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->i:I

    if-lez v3, :cond_11

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :cond_11
    iget-object v3, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_12
    iget-object v3, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    if-eqz v3, :cond_13

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    if-eqz v0, :cond_17

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "values is empty"

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_f

    :cond_14
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0}, Ldi/a;->w(Ljava/util/List;)V

    :cond_15
    sget-object v0, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->g:Ljava/lang/String;

    if-nez v2, :cond_16

    move-object/from16 v2, v20

    :cond_16
    invoke-virtual {v0, v2}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->b(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_17
    :goto_f
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_11

    :goto_10
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    return-void
.end method

.method private final G(Z)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/bean/TAdNativeInfo;

    invoke-direct {p0, v2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->J(Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-direct {p0, v2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->N(Lcom/transsion/ad/ps/model/RecommendInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$compareByDescending$1;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$compareByDescending$1;-><init>()V

    new-instance v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;

    invoke-direct {v2, v1, p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;Z)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method private static final H(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 1

    const-string v0, "\u7ade\u4ef7\u65f6\u95f4\u5230"

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->F(Ljava/lang/String;)V

    return-void
.end method

.method private final J(Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;
    .locals 10

    new-instance v9, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v4

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;-><init>(ILcom/transsion/ad/ps/model/RecommendInfo;Lcom/hisavana/common/bean/TAdNativeInfo;DZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method private final L()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final N(Lcom/transsion/ad/ps/model/RecommendInfo;)Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;
    .locals 10

    new-instance v9, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;-><init>(ILcom/transsion/ad/ps/model/RecommendInfo;Lcom/hisavana/common/bean/TAdNativeInfo;DZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method private final O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->r:Ljava/lang/String;

    return-object v0
.end method

.method private final P(Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p4

    const-string v2, "Collection contains no element matching the predicate."

    instance-of v3, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;

    iget v5, v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    :goto_0
    move-object v6, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;

    invoke-direct {v3, v1, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v9

    iget v3, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget v2, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->I$0:I

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const/4 v3, 0x2

    invoke-virtual {v0, v4, v3}, Lcom/transsion/ad/scene/a;->b(Ljava/lang/String;I)I

    move-result v10

    sget-object v11, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " --> sceneId = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> loadAd() --> \u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a --> biddingTime = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v15

    move v15, v0

    invoke-static/range {v11 .. v16}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v11}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    check-cast v8, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x0

    if-eqz v8, :cond_5

    move-object v0, v11

    :cond_5
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    const/4 v8, 0x5

    const/4 v12, 0x0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-static {v0, v4, v12, v3, v11}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    if-nez v0, :cond_6

    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;-><init>()V

    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->g(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f(Ldi/a;)V

    :cond_6
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e()V

    :cond_7
    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " --> innerLoadAd() --> \u7a0b\u5e8f\u5316\u5e7f\u544a\u65e0\u8ba1\u5212\u6216\u573a\u666f\u5173\u95ed"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v8, v12}, Loi/a;->h(Ljava/lang/String;IZ)V

    :cond_9
    :goto_4
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v14}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_ICON:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v15}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    check-cast v13, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v11

    :cond_c
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-static {v0, v4, v12, v3, v11}, Lcom/transsion/ad/scene/c;->d(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/f;

    if-nez v0, :cond_d

    new-instance v0, Lcom/transsion/ad/bidding/icon/f;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/f;-><init>()V

    iput-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/f;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/icon/f;->C(Ldi/a;)V

    iget-object v0, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/f;

    if-eqz v0, :cond_d

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/transsion/ad/bidding/icon/f;->B(Z)V

    :cond_d
    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/f;

    if-eqz v2, :cond_10

    iput v10, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->I$0:I

    iput v5, v6, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$innerLoadAd$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/transsion/ad/bidding/icon/f;->A(Lcom/transsion/ad/bidding/icon/f;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_e

    return-object v9

    :cond_e
    move v2, v10

    :goto_7
    move v10, v2

    goto :goto_8

    :cond_f
    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> innerLoadAd() --> \u5305\u65ad\u5e7f\u544a\u65e0\u8ba1\u5212\u6216\u573a\u666f\u5173\u95ed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8, v12}, Loi/a;->h(Ljava/lang/String;IZ)V

    :cond_10
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->n:Ljava/lang/Runnable;

    int-to-long v3, v10

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final Q()Z
    .locals 3

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "hi"

    if-eqz v0, :cond_0

    const-string v2, "priority"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic S(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->R(Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final T()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private final U(Ldi/a;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Loi/a;->a:Loi/a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x44d

    invoke-direct {v0, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method private static final V(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 1

    const-string v0, "\u6570\u636e\u90fd\u56de\u6765\u4e86 --> onHiIconAdReady"

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->F(Ljava/lang/String;)V

    return-void
.end method

.method private static final W(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 1

    const-string v0, "\u6570\u636e\u90fd\u56de\u6765\u4e86 --> onPSDistributionReady"

    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->F(Ljava/lang/String;)V

    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic x(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->W(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->H(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->V(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    return-void
.end method


# virtual methods
.method public final E(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;)V
    .locals 1

    const-string v0, "iconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final I()V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->p:Lcom/transsion/ad/bidding/icon/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/f;->x()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->q:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->destroy()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->b()V

    :cond_3
    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> sceneId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> destroy() --> \u8d44\u6e90\u56de\u6536"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public final K()Ldi/a;
    .locals 0

    return-object p0
.end method

.method public final M()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->o:Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->d()Lcom/hisavana/mediation/ad/TNativeAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final R(Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;

    iget v3, v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;

    invoke-direct {v2, v7, v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v9

    iget v2, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    const/4 v10, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v10, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->I$0:I

    iget-boolean v2, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->Z$0:Z

    iget-object v4, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ldi/a;

    iget-object v6, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v5

    move v5, v2

    move-object v2, v4

    move-object/from16 v4, v18

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$0:Ljava/lang/Object;

    move-object/from16 v2, p4

    iput-object v2, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p5

    iput-object v4, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$2:Ljava/lang/Object;

    move/from16 v5, p2

    iput-boolean v5, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->Z$0:Z

    move/from16 v6, p3

    iput v6, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->I$0:I

    iput v3, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    invoke-virtual {v1, v0, v8}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_4

    return-object v9

    :cond_4
    move/from16 v18, v6

    move-object v6, v0

    move/from16 v0, v18

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    :goto_2
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v4, v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->U(Ldi/a;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    iget-object v1, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-object v1, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lti/n;->a:Lti/n;

    invoke-virtual {v1}, Lti/n;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->r:Ljava/lang/String;

    sget-object v11, Lri/c;->a:Lri/c;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    move-result-object v12

    const-string v16, ""

    const-string v17, ""

    const/4 v14, 0x6

    const/16 v15, 0x66

    move-object v13, v6

    invoke-virtual/range {v11 .. v17}, Lri/c;->l(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v4, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    iput-object v6, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->g:Ljava/lang/String;

    iput v0, v7, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->i:I

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v11

    new-instance v12, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;

    const/4 v13, 0x0

    move-object v0, v12

    move-object v1, v6

    move-object/from16 v3, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ldi/a;ZLkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$0:Ljava/lang/Object;

    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$1:Ljava/lang/Object;

    iput-object v0, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->L$2:Ljava/lang/Object;

    iput v10, v8, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$1;->label:I

    invoke-static {v11, v12, v8}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_7

    return-object v9

    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    invoke-super {p0, p1, p2}, Ldi/a;->e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> sceneId = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onBiddingBuyOutError() --> errorMessage = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "additionalInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    sget-object v4, Lri/c;->a:Lri/c;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    iget-object v7, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_1

    :cond_1
    move-object/from16 v17, v3

    :goto_1
    const/16 v18, 0x6c0

    const/16 v19, 0x0

    const-string v7, ""

    const-string v9, ""

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    invoke-static/range {v4 .. v19}, Lri/c;->b(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1, v2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_2
    sget-object v5, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> sceneId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onBiddingWrapperAdClick() --> name = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> sceneId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onLoadFailure() --> placementId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> errorMessage = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "additionalInfo"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    sget-object v2, Lri/c;->a:Lri/c;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, v1

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, ""

    goto :goto_0

    :goto_2
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    const/16 v18, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_3

    :cond_2
    move-object/from16 v15, v18

    :goto_3
    const/16 v16, 0xec0

    const/16 v17, 0x0

    const-string v7, ""

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v17}, Lri/c;->h(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v19, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v18

    :cond_3
    move-object/from16 v3, v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> sceneId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onBiddingWrapperAdDisplay() --> name = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->k:Lcom/transsion/ad/monopoly/model/AdPlans;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> sceneId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onIconShowError() --> name = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", errorMessage = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 7

    const-string v0, "tAdNativeInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ldi/a;->q(Ljava/util/List;)V

    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> sceneId = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onIconAdReady() --> tAdNativeInfos.size = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/ad/bidding/icon/d;

    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/icon/d;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public r(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Ldi/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    sget-object v1, Lri/c;->a:Lri/c;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    const-string v17, ""

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v4, v17

    :cond_1
    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x6c0

    const/16 v16, 0x0

    const-string v6, ""

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v16}, Lri/c;->b(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/b;->k(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v3, v17

    :cond_2
    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v6, p1

    invoke-virtual {v1, v6, v5, v3, v4}, Lqi/b;->a(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)V

    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->h:Ldi/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6}, Ldi/a;->r(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    :cond_4
    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> sceneId = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onBiddingWrapperAdClick() --> name = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public t(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Ldi/a;->t(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    sget-object v1, Lri/c;->a:Lri/c;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, ""

    :cond_1
    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    const/16 v17, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    goto :goto_0

    :cond_2
    move-object/from16 v14, v17

    :goto_0
    const/16 v15, 0x6c0

    const/16 v16, 0x0

    const-string v6, ""

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v16}, Lri/c;->h(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->f:Ljava/util/List;

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object/from16 v3, v17

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object/from16 v4, v17

    :goto_3
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->setDisplay(Z)V

    goto :goto_1

    :cond_6
    sget-object v4, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v17

    :cond_7
    move-object/from16 v3, v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> sceneId = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onBiddingWrapperAdDisplay() --> name = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public u(Lcom/transsion/ad/ps/model/RecommendInfo;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->u(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->l:Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> sceneId = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onIconShowError() --> name = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 6

    invoke-super {p0, p1}, Ldi/a;->v(Ljava/util/List;)V

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onPSDistributionReady() --> mSceneId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> data.size = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->e:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->d:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->L()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/ad/bidding/icon/e;

    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/icon/e;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
