.class public final Lcom/transsion/ad/ps/distribute/PsOfferProvider;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsOfferProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->a:Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/ps/distribute/PsOfferProvider;Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->c(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz p3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsLinkAdInfoStr()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsInfoJson()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-virtual/range {p2 .. p3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setPsLinkAdPlan(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDownloadMaterialSuccess(Z)V

    const-string v4, "TextAdMaterial"

    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setType(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v1, v5}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setTitle(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getDesc()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setDesc(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setPsRecommendInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    new-instance v3, Lcom/transsion/ad/monopoly/model/MbAdImage;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    :goto_3
    const/16 v19, 0xdfd

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v20}, Lcom/transsion/ad/monopoly/model/MbAdImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setImage(Lcom/transsion/ad/monopoly/model/MbAdImage;)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getButtonText()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->setButtonText(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserName(Ljava/lang/String;)V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatar(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v0, v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdvertiserAvatarPath(Ljava/lang/String;)V

    :cond_8
    if-eqz v0, :cond_9

    new-instance v1, Lcom/transsion/ad/monopoly/model/MbAdImage;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0xdfd

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v19}, Lcom/transsion/ad/monopoly/model/MbAdImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setExtImage(Lcom/transsion/ad/monopoly/model/MbAdImage;)V

    :cond_9
    return-void
.end method

.method private final c(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;

    iget v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;

    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;-><init>(Lcom/transsion/ad/ps/distribute/PsOfferProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    if-ne v5, v6, :cond_2

    iget-boolean v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->Z$0:Z

    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$2:I

    iget v8, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    iget v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    iget-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lcom/transsion/ad/ps/model/RecommendInfo;

    iget-object v12, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    iget-object v13, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroid/app/Application;

    iget-object v14, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_1
    move-object v2, v14

    move-object/from16 v22, v12

    move v12, v5

    move v5, v10

    move-object v10, v13

    move-object/from16 v13, v22

    goto/16 :goto_4

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-boolean v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->Z$0:Z

    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$2:I

    iget v8, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    iget v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    iget-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    check-cast v11, Landroid/app/Application;

    iget-object v12, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v11

    move-object v14, v12

    goto/16 :goto_3

    :cond_4
    iget-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v22, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, v22

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto/16 :goto_8

    :cond_6
    sget-object v5, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    iput-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    iput v8, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    invoke-virtual {v5, v2, v3}, Lcom/transsion/ad/ps/distribute/PsDbManager;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    return-object v4

    :cond_7
    :goto_1
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-nez v5, :cond_8

    sget-object v2, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->a:Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;

    invoke-virtual {v2, v1}, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    return-object v9

    :cond_8
    mul-int/lit8 v8, v5, 0x5

    sget-object v10, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v10}, Lcom/transsion/ad/MBAd;->g()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v11, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> getAvailableAdPlan() --> maxAttempts = "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_9
    invoke-virtual {v0, v1}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->g(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_14

    add-int/lit8 v11, v11, 0x1

    if-le v11, v8, :cond_a

    sget-object v12, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> getAvailableAdPlan() --> \u8d76\u7d27\u627e\u5f00\u53d1\uff0c\u51fa\u73b0\u6b7b\u5faa\u73af\u4e86\u3001\u8d76\u7d27\u627e\u5f00\u53d1\uff0c\u51fa\u73b0\u6b7b\u5faa\u73af\u4e86\u3001\u8d76\u7d27\u627e\u5f00\u53d1\uff0c\u51fa\u73b0\u6b7b\u5faa\u73af\u4e86"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v9

    :cond_a
    sget-object v12, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    iput-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$3:Ljava/lang/Object;

    iput v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    iput v8, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    iput v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$2:I

    iput-boolean v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->Z$0:Z

    iput v7, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    invoke-virtual {v12, v2, v3}, Lcom/transsion/ad/ps/distribute/PsDbManager;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_b

    return-object v4

    :cond_b
    move-object v14, v2

    move-object v13, v10

    move-object v2, v12

    move v10, v5

    move v5, v11

    :goto_3
    move-object v12, v2

    check-cast v12, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    if-nez v12, :cond_c

    return-object v9

    :cond_c
    invoke-virtual {v12}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsInfoJson()Ljava/lang/String;

    move-result-object v2

    const-class v11, Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-static {v2, v11}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/transsion/ad/ps/model/RecommendInfo;

    if-nez v11, :cond_d

    return-object v9

    :cond_d
    iput-object v14, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$0:Ljava/lang/Object;

    iput-object v13, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$1:Ljava/lang/Object;

    iput-object v12, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->L$3:Ljava/lang/Object;

    iput v10, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$0:I

    iput v8, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$1:I

    iput v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->I$2:I

    iput-boolean v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->Z$0:Z

    iput v6, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getAvailablePsOffer$1;->label:I

    invoke-direct {v0, v12, v3}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->i(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :goto_4
    invoke-direct {v0, v13}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->h(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)Z

    move-result v14

    if-eqz v14, :cond_13

    xor-int/lit8 v14, v1, 0x1

    invoke-virtual {v11}, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer()I

    move-result v15

    if-eq v15, v14, :cond_e

    sget-object v16, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer()I

    move-result v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " --> getAvailablePsOffer() --> \u8ba1\u5212\u7c7b\u578b\u4e0eOffer\u7c7b\u578b\u4e0d\u5339\u914d\uff0c\u8df3\u8fc7 --> isReferral="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " --> isOffer="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v11}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdType()Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_ACQUISITION_0:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    invoke-virtual {v15}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    move-result v15

    if-nez v14, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v15, :cond_10

    return-object v13

    :cond_10
    :goto_5
    sget-object v6, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_RETENTION_1:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    invoke-virtual {v6}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    move-result v6

    if-nez v14, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v6, :cond_12

    sget-object v6, Lti/e;->a:Lti/e;

    invoke-virtual {v11}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lti/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    return-object v13

    :cond_12
    :goto_6
    return-object v9

    :cond_13
    :goto_7
    move v11, v12

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_14
    :goto_8
    return-object v9
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final f(Ljava/lang/String;)Z
    .locals 7

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private final h(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)Z
    .locals 10

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, " --> isTimesAvailable() --> \u4e0d\u7b26\u5408\u5c55\u793a\u6761\u4ef6 --> id = "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-lt v0, v3, :cond_2

    sget-object v4, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowMax()Ljava/lang/Integer;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> showedTimes = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> showMax = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-lt v0, v3, :cond_5

    sget-object v4, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickMax()Ljava/lang/Integer;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> clickedTimes = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> clickMax = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowHours()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowHours()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> showHours = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> currentHour = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    return v2

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private final i(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lti/p;->a:Lti/p;

    invoke-virtual {v1}, Lti/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setShowedTimes(I)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setClickedTimes(I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setUpdateTimestamp(Ljava/lang/Long;)V

    :cond_3
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/ad/ps/distribute/PsDbManager;->n(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final e(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;

    iget v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;

    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;-><init>(Lcom/transsion/ad/ps/distribute/PsOfferProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v1, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->L$0:Ljava/lang/Object;

    iput v6, v3, Lcom/transsion/ad/ps/distribute/PsOfferProvider$getPsAdPlans$1;->label:I

    invoke-direct {v0, v1, v3}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->c(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    :goto_1
    check-cast v2, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    if-nez v2, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_4
    new-instance v3, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    const/16 v21, 0x1fff

    const/16 v22, 0x0

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

    move-object v7, v3

    invoke-direct/range {v7 .. v22}, Lcom/transsion/ad/monopoly/model/AdMaterialList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Lcom/transsion/ad/monopoly/model/MbAdVideo;ZLcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v1, :cond_5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/ad/monopoly/model/AdPlans;->setAdMaterialList(Ljava/util/List;)V

    :cond_5
    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->b(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public final g(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS_REFERRAL:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
