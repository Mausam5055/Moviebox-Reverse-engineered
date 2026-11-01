.class public final Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->b:Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method

.method public static final synthetic g()J
    .locals 2

    sget-wide v0, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->d:J

    return-wide v0
.end method

.method public static final synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic i(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->d:J

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;

    iget v5, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v3}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v6

    iget v7, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v7, :cond_6

    if-eq v7, v12, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v7, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v7, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->d(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v3

    if-eqz v3, :cond_8

    iput v12, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_7

    return-object v6

    :cond_7
    :goto_1
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v3, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v3

    :cond_9
    return-object v3

    :cond_a
    invoke-virtual {v7, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->i(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v3

    if-eqz v3, :cond_c

    iput v11, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_b

    return-object v6

    :cond_b
    :goto_2
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v3, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v3

    :cond_d
    return-object v3

    :cond_e
    invoke-virtual {v7, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->k(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v3

    if-eqz v3, :cond_10

    iput v10, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_f

    return-object v6

    :cond_f
    :goto_3
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v3, :cond_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v3

    :cond_11
    return-object v3

    :cond_12
    invoke-virtual {v7, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->f(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v3

    if-eqz v3, :cond_14

    iput v9, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_13

    return-object v6

    :cond_13
    :goto_4
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v3, :cond_15

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v3

    :cond_15
    return-object v3

    :cond_16
    sget-object v7, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-virtual {v7, v1}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v7

    const-string v9, ""

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1c

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "TextAdMaterial"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    sget-object v11, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->b:Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_18

    :cond_17
    move-object v10, v9

    :cond_18
    invoke-static {v11, v10}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;->c(Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;Ljava/lang/String;)Z

    move-result v10

    goto :goto_6

    :cond_19
    sget-object v11, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->b:Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getVideo()Lcom/transsion/ad/monopoly/model/MbAdVideo;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/MbAdVideo;->getPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1b

    :cond_1a
    move-object v10, v9

    :cond_1b
    invoke-static {v11, v10}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;->c(Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;Ljava/lang/String;)Z

    move-result v10

    :goto_6
    iput-boolean v10, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_5

    :cond_1c
    iget-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v7, :cond_1d

    sget-object v7, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v7, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Z

    move-result v7

    if-eqz v7, :cond_1d

    sget-object v7, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {v7}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v10, "non_ad_plan_version"

    invoke-virtual {v7, v10, v9}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v11, Loi/a;->a:Loi/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " --> hasResource() --> \u7528\u6237\u53ef\u80fd\u624b\u52a8\u5c06\u6587\u4ef6\u5220\u9664\u4e86\uff0c\u8fd9\u4e2a\u65f6\u5019\u9700\u8981\u91cd\u65b0\u8bf7\u6c42\u3002 --> \u5305\u65ad\u5e7f\u544a\u7248\u672c\u53f7 \u91cd\u7f6e"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_1d
    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object v3

    if-eqz v3, :cond_1f

    iput v8, v4, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$doHandle$1;->label:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_1e

    return-object v6

    :cond_1e
    :goto_7
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez v3, :cond_21

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object v3

    goto :goto_8

    :cond_20
    new-instance v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const/4 v0, 0x0

    const-string v1, "\u5e7f\u544a\u8d44\u6e90\u672a\u4e0b\u8f7d\u5b8c\u6210"

    invoke-direct {v3, v0, v1}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    :cond_21
    :goto_8
    return-object v3
.end method
