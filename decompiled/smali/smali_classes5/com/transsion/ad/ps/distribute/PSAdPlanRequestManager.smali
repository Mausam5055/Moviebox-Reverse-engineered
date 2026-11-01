.class public final Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;

    iget v2, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;-><init>(Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "key_ps_link_request_gap"

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, v9

    move-object v9, v4

    move v4, v6

    goto/16 :goto_8

    :cond_3
    iget-wide v12, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->J$0:J

    iget-object v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    iget v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->I$0:I

    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object v12, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v12

    goto/16 :goto_5

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    sget-object v4, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    iput v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    invoke-virtual {v0, v4, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    :goto_1
    check-cast v0, Ljava/util/List;

    sget-object v4, Lhi/f;->a:Lhi/f;

    invoke-virtual {v4}, Lhi/f;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8

    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v12}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    sget-object v13, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_3

    :cond_9
    move-object v12, v11

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " --> updatePsLink(\u5305\u65ad\u5e7f\u544a\u8ba1\u5212\u66f4\u65b0\u5b8c\u6210) --> \u5f00\u59cb\u66f4\u65b0PS\u5546\u5355\u6570\u636e --> plansBySource = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " --> sceneIdList = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_a
    if-eqz v0, :cond_12

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v12, -0x1

    if-nez v9, :cond_b

    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :cond_b
    if-lez v12, :cond_11

    sget-object v9, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;

    iput-object v0, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    iput v12, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->I$0:I

    iput v8, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    invoke-virtual {v9, v4, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->d(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_c

    return-object v3

    :cond_c
    move-object v15, v0

    move-object v0, v9

    move-object v9, v4

    move v4, v12

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v13, 0x0

    invoke-virtual {v0, v12, v13, v14}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget-object v0, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v0}, Lcom/transsion/ad/scene/b;->f()I

    move-result v0

    int-to-long v7, v0

    const-wide/16 v16, 0x3e8

    mul-long v7, v7, v16

    sub-long v12, v5, v12

    cmp-long v0, v12, v7

    if-lez v0, :cond_e

    sget-object v12, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v16

    iput-object v15, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    iput-wide v5, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->J$0:J

    const/4 v7, 0x3

    iput v7, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    const/4 v13, 0x0

    const/16 v14, 0xa

    move-object v8, v15

    move-object v15, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    return-object v3

    :cond_d
    move-wide v12, v5

    move-object v4, v9

    move-object v9, v8

    :goto_6
    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v12, v13}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-object v15, v9

    :goto_7
    const/4 v4, 0x4

    goto/16 :goto_9

    :cond_e
    move-object v8, v15

    const/4 v7, 0x3

    sget-object v19, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> updatePsLink() --> ID = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> name = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> psScene = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> \u5f53\u524d\u6709\u8d44\u6e90\uff0c\u4e14\u5728\u8bf7\u6c42\u95f4\u9694\u5185 --> \u4e0d\u505a\u5904\u7406"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    :cond_f
    move-object v8, v15

    sget-object v12, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v16

    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    const/4 v13, 0x0

    const/16 v14, 0xa

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    :goto_8
    sget-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v0}, Lcom/transsion/ad/strategy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v0, v5, v12, v13}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-object v15, v8

    :goto_9
    move-object v0, v15

    goto :goto_a

    :cond_11
    move v4, v6

    :goto_a
    move v6, v4

    const/4 v5, 0x5

    const/4 v8, 0x2

    goto/16 :goto_4

    :cond_12
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsStorageManager;->a:Lcom/transsion/ad/ps/distribute/PsStorageManager;

    iput-object v11, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    invoke-virtual {v0, v1}, Lcom/transsion/ad/ps/distribute/PsStorageManager;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_13

    return-object v3

    :cond_13
    :goto_b
    sget-object v0, Lhi/f;->a:Lhi/f;

    invoke-virtual {v0}, Lhi/f;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> analyzeData() --> \u5220\u9664\u65e0\u6548\u7d20\u6750\u6587\u4ef6"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
