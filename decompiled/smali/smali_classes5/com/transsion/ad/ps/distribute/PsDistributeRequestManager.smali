.class public final Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    new-instance v0, Lcom/transsion/ad/ps/distribute/c;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->b:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lqi/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->p()Lqi/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/PsLinkDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->h(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/PsLinkDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;IILjava/lang/Integer;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->l(IILjava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->m(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic g(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;)Lqi/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->o()Lqi/a;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/PsLinkDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;

    iget v2, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;-><init>(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v1, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object v4, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v4

    goto/16 :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lhi/f;->a:Lhi/f;

    invoke-virtual {v0}, Lhi/f;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v9, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v8

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> analyzeData() --> PS\u63a5\u53e3\u8fd4\u56de --> psScene = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " --> adPlanId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " --> data.size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " --> \u5f00\u59cb\u589e\u91cf\u66f4\u65b0"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v15, p2

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/PsLinkDto;->getData()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_b

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/ad/ps/model/RecommendInfo;

    sget-object v11, Lqi/b;->a:Lqi/b;

    invoke-virtual {v11}, Lqi/b;->n()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v16, Loi/a;->a:Loi/a;

    sget-object v10, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-direct {v10}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> analyzeData() --> \u5982\u679c\u4e0d\u652f\u6301pslink \u4e14\u6ca1\u6709gplink\u94fe\u63a5 \u8fc7\u6ee4\u6389\u5546\u5355"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    iput-object v0, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$0:Ljava/lang/Object;

    iput-object v15, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$4:Ljava/lang/Object;

    iput v7, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->label:I

    invoke-direct {v11, v0, v15, v10, v1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->m(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_8

    return-object v3

    :cond_8
    move-object v12, v0

    move-object v0, v10

    move-object v11, v15

    move-object v10, v4

    :goto_4
    move-object v4, v0

    check-cast v4, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    if-eqz v4, :cond_a

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    iput-object v12, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$3:Ljava/lang/Object;

    iput-object v4, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$4:Ljava/lang/Object;

    iput v6, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->label:I

    invoke-virtual {v0, v4, v1}, Lcom/transsion/ad/ps/distribute/PsDbManager;->j(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_5
    sget-object v0, Lhi/f;->a:Lhi/f;

    invoke-virtual {v0}, Lhi/f;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v13, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> analyzeData() --> PS\u63a5\u53e3\u8fd4\u56de --> \u6570\u636e\u5e93\u66f4\u65b0 --> it = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_a
    move-object v4, v10

    move-object v15, v11

    move-object v0, v12

    goto/16 :goto_3

    :cond_b
    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    iput-object v0, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->L$4:Ljava/lang/Object;

    iput v5, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$analyzeData$1;->label:I

    invoke-virtual {v6, v0, v4, v1}, Lcom/transsion/ad/ps/distribute/PsDbManager;->c(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    :cond_c
    move-object v1, v0

    :goto_6
    move-object v0, v1

    :cond_d
    sget-object v1, Lhi/f;->a:Lhi/f;

    invoke-virtual {v1}, Lhi/f;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> analyzeData() --> \u5220\u9664\u6570\u636e\u5e93\u65e0\u6548Offer --> sceneStr = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {v1}, Lcom/transsion/ad/a;->a()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mineType"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lti/h;->a:Lti/h;

    invoke-virtual {v1, v0}, Lti/h;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/ad/strategy/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final j(Lcom/transsion/ad/monopoly/model/MbAdImage;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {v2}, Lcom/transsion/ad/a;->a()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mineType"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-lez v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    return v4

    :cond_0
    sget-object v3, Lcom/transsion/ad/strategy/h;->a:Lcom/transsion/ad/strategy/h;

    invoke-virtual {v3, v0, v1}, Lcom/transsion/ad/strategy/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    if-eqz v0, :cond_1

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    invoke-virtual {p1, v1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setPath(Ljava/lang/String;)V

    return v4

    :cond_1
    sget-object v6, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> downloadAdPlan() --> \u56fe\u7247\u7d20\u6750\u4e0b\u8f7d\u5931\u8d25 --  downloadFileSuccess = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -- localFileSize = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " -- destination = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final k()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l(IILjava/lang/Integer;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bu"

    const-string v2, "mb"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pageSize"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "media"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "scene"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lqi/a;->a:Lqi/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lqi/a$a;->a(J)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final m(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;

    iget v4, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v4, v6

    if-eqz v7, :cond_0

    sub-int/2addr v4, v6

    iput v4, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->label:I

    :goto_0
    move-object v14, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;

    invoke-direct {v2, v0, v1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;-><init>(Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v14, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v6

    iget v2, v14, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->label:I

    const/4 v13, 0x1

    const/16 v20, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v13, :cond_1

    iget-object v2, v14, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    iget-object v3, v14, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/ad/ps/model/RecommendInfo;

    iget-object v4, v14, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, v5

    move-object/from16 v40, v4

    move-object v4, v3

    move-object/from16 v3, v40

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_TRIGGER:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    invoke-virtual {v1, v2, v15, v5, v3}, Lcom/transsion/ad/ps/PSReportUtil;->c(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v2

    new-instance v4, Lcom/transsion/ad/monopoly/model/MbAdImage;

    const/16 v34, 0xfff

    const/16 v35, 0x0

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

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v35}, Lcom/transsion/ad/monopoly/model/MbAdImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getShowContent()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg0()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object/from16 v7, v20

    :cond_4
    :goto_2
    invoke-virtual {v4, v7}, Lcom/transsion/ad/monopoly/model/MbAdImage;->setUrl(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->j(Lcom/transsion/ad/monopoly/model/MbAdImage;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v8, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/ItemDetail;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_3

    :cond_5
    move-object/from16 v25, v20

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/ItemDetail;->getSimpleDescription()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_4

    :cond_6
    move-object/from16 v26, v20

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getButtonText()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v21, v8

    invoke-direct/range {v21 .. v29}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    move v2, v12

    new-instance v11, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-object v1, v11

    sget-object v4, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getShowMax()Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v36, v11

    move-object/from16 v11, v16

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getClickMax()Ljava/lang/Integer;

    move-result-object v16

    move/from16 v37, v12

    move-object/from16 v12, v16

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getShowHours()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer()I

    move-result v17

    const/16 v18, 0x7000

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v38, v6

    move/from16 v6, v16

    move-object/from16 v39, v14

    move/from16 v14, v16

    move/from16 v15, v16

    const/16 v16, 0x0

    move-object/from16 v3, p2

    move-object v0, v5

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v19}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    move-object/from16 v2, v39

    iput-object v0, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$1:Ljava/lang/Object;

    move-object/from16 v4, p3

    iput-object v4, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$2:Ljava/lang/Object;

    move-object/from16 v5, v36

    iput-object v5, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v2, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkAdPlan$1;->label:I

    move/from16 v6, v37

    invoke-virtual {v1, v6, v2}, Lcom/transsion/ad/ps/distribute/PsDbManager;->g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v38

    if-ne v1, v2, :cond_7

    return-object v2

    :cond_7
    move-object v2, v5

    :goto_5
    check-cast v1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    const-string v5, " --> getPsLinkAdPlan() --> name = "

    if-nez v1, :cond_9

    sget-object v1, Lhi/f;->a:Lhi/f;

    invoke-virtual {v1}, Lhi/f;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v6, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/transsion/ad/ps/model/ItemDetail;->getName()Ljava/lang/String;

    move-result-object v20

    :cond_8
    move-object/from16 v7, v20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> \u6570\u636e\u5e93 \u4e0d\u5b58\u5728 --> \u76f4\u63a5\u4fdd\u5b58"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_6

    :cond_9
    sget-object v6, Lhi/f;->a:Lhi/f;

    invoke-virtual {v6}, Lhi/f;->b()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v7, Loi/a;->a:Loi/a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/transsion/ad/ps/model/ItemDetail;->getName()Ljava/lang/String;

    move-result-object v20

    :cond_a
    move-object/from16 v8, v20

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    move-result v9

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    move-result v10

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowDate()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> \u6570\u636e\u5e93 \u5b58\u5728\u3001\u66ff\u6362\u6570\u636e\u518d\u4fdd\u5b58 --> showedTimes = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> clickedTimes = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> showDate = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_b
    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowedTimes()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setShowedTimes(I)V

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getClickedTimes()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setClickedTimes(I)V

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getShowDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->setShowDate(Ljava/lang/String;)V

    :cond_c
    :goto_6
    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v5, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_SUCCESS:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    invoke-virtual {v1, v5, v4, v0, v3}, Lcom/transsion/ad/ps/PSReportUtil;->c(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v2

    goto :goto_7

    :cond_d
    move-object v0, v5

    move-object v4, v15

    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_FAIL:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/transsion/ad/ps/PSReportUtil;->c(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v20
.end method

.method private final o()Lqi/a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqi/a;

    return-object v0
.end method

.method private static final p()Lqi/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqi/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqi/a;

    return-object v0
.end method


# virtual methods
.method public final n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p1, Lhi/f;->a:Lhi/f;

    invoke-virtual {p1}, Lhi/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->k()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> getPsLinkListBySlot() --> psScene="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u6b63\u5728\u8bf7\u6c42\u4e2d\uff0c\u5df2\u62e6\u622a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_TRIGGER:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-virtual {v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v7, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager$getPsLinkListBySlot$2;-><init>(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p5}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
