.class public final Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

.field private static final b:Lkotlin/Lazy;

.field private static volatile c:Ljava/util/List;

.field private static final d:Ljava/util/Map;

.field private static final e:Lkotlinx/coroutines/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    new-instance v0, Lcom/transsion/ad/monopoly/manager/b;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->b:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d:Ljava/util/Map;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lli/b;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e()Lli/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final e()Lli/b;
    .locals 3

    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->z0()Lli/b;

    move-result-object v0

    return-object v0
.end method

.method private final g(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {v2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, p2, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static synthetic i(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final k()Lli/b;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli/b;

    return-object v0
.end method

.method public static synthetic m(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->l(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/a;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e:Lkotlinx/coroutines/sync/a;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$invalidatePlanCache$1;->label:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    :goto_1
    :try_start_0
    sput-object v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->c:Ljava/util/List;

    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method private final s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->J$0:J

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object p2

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "toJson(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->J$0:J

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAdPlansBySceneIdFromDb$1;->label:I

    invoke-interface {p2, v2, v0}, Lli/b;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-wide v1, v4

    :goto_1
    check-cast p2, Ljava/util/List;

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdPlansStorageManager --> getAllAdPlans() --> sceneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> dbCost = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms --> size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Loi/a;->b(Ljava/lang/String;IZ)V

    return-object p2
.end method

.method private final t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v0, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object p1

    iput-wide v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->J$0:J

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$queryAllAdPlansFromDb$1;->label:I

    invoke-interface {p1, v0}, Lli/b;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-wide v0, v4

    :goto_1
    check-cast p1, Ljava/util/List;

    sget-object v2, Loi/a;->a:Loi/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdPlansStorageManager --> getAllAdPlans() --> dbCost = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms --> size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Loi/a;->b(Ljava/lang/String;IZ)V

    return-object p1
.end method


# virtual methods
.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object p2

    iput v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;->label:I

    invoke-interface {p2, p1, v0}, Lli/b;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$deleteExpireVersion$1;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    instance-of v4, v3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;

    iget v5, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;

    invoke-direct {v4, v0, v3}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-ne v6, v8, :cond_2

    iget-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    iget-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v18, v11

    move-object v15, v12

    goto/16 :goto_8

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v11, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v19, v6

    move-object v6, v3

    move-object/from16 v3, v19

    goto :goto_4

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    array-length v3, v2

    if-nez v3, :cond_5

    move-object v2, v9

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v2

    move v11, v7

    :goto_1
    if-ge v11, v6, :cond_8

    aget-object v12, v2, v11

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_6
    move-object v12, v9

    :goto_2
    if-eqz v12, :cond_7

    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    :goto_3
    iput-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    iput-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    iput v10, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->l(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_9

    return-object v5

    :cond_9
    move-object/from16 v19, v11

    move-object v11, v1

    move-object v1, v2

    move-object v2, v6

    move-object/from16 v6, v19

    :goto_4
    check-cast v6, Ljava/util/List;

    sget-object v12, Loi/a;->a:Loi/a;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_5

    :cond_a
    move-object v13, v9

    :goto_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AdPlansStorageManager --> getAdPlan() --> sceneId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " --> allPlans = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v12, v2, v13, v14, v7}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    if-eqz v6, :cond_12

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    if-eqz v1, :cond_c

    move-object v14, v1

    check-cast v14, Ljava/lang/Iterable;

    invoke-virtual {v13}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_c
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v2

    move-object v2, v6

    move-object v12, v11

    move-object v6, v1

    move-object v11, v3

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    sget-object v3, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;->a:Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;

    iput-object v12, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$2:Ljava/lang/Object;

    iput-object v6, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$3:Ljava/lang/Object;

    iput-object v2, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->L$5:Ljava/lang/Object;

    iput v8, v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAdPlan$1;->label:I

    invoke-virtual {v3, v12, v1, v11, v4}, Lcom/transsion/ad/monopoly/intercept/AdPlanIntercept;->d(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_1

    return-object v5

    :goto_8
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;->isHit()Z

    move-result v11

    if-eqz v11, :cond_e

    sget-object v3, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-virtual {v3, v1}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    move-object v3, v15

    goto :goto_a

    :cond_e
    sget-object v11, Lhi/f;->a:Lhi/f;

    invoke-virtual {v11}, Lhi/f;->d()Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    sget-object v11, Loi/a;->a:Loi/a;

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;->getRejectMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AdPlansStorageManager --> sceneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " --> rejectMsg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> dbPlans.name = "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v14, 0x5

    const/4 v1, 0x0

    move-object v12, v7

    move-object v3, v15

    move v15, v1

    invoke-static/range {v11 .. v17}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_9

    :cond_f
    move-object v3, v15

    :goto_9
    move-object v1, v9

    :goto_a
    if-eqz v1, :cond_10

    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object v12, v3

    move-object/from16 v11, v18

    goto/16 :goto_7

    :cond_11
    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_12

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    return-object v1
.end method

.method public final j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lli/b;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/a;

    iget-object v0, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/a;

    iget-object v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/a;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception p2

    goto/16 :goto_9

    :cond_4
    iget-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/a;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_c

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->c:Ljava/util/List;

    if-eqz p2, :cond_7

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    invoke-direct {v0, p2, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->g(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toLowerCase(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e:Lkotlinx/coroutines/sync/a;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, p1

    move-object p1, p2

    :goto_1
    :try_start_2
    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_b

    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput-object v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    invoke-direct {p2, v2, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v0, v2

    :goto_2
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_a

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->d:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_a
    move-object p2, v7

    :cond_b
    :goto_3
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    return-object p2

    :goto_4
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_c
    :goto_5
    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->c:Ljava/util/List;

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->e:Lkotlinx/coroutines/sync/a;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    :try_start_3
    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->c:Ljava/util/List;

    if-nez p2, :cond_11

    sget-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput-object p1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$getAllAdPlans$1;->label:I

    invoke-direct {p2, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_f

    return-object v1

    :cond_f
    :goto_7
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_10

    sput-object p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->c:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :cond_10
    move-object p2, v7

    :cond_11
    :goto_8
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    return-object p2

    :goto_9
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lli/b;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lli/b;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object p2

    iput v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;->label:I

    invoke-interface {p2, p1, v0}, Lli/b;->e(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$1;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final q(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object p2

    iput v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;->label:I

    invoke-interface {p2, p1, v0}, Lli/b;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$insert$2;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final u(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;-><init>(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->k()Lli/b;

    move-result-object p3

    iput v4, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Lli/b;->g(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iput v3, v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager$updateAllValid$1;->label:I

    invoke-direct {p0, v0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
