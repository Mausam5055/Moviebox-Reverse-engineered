.class public final Lcom/transsion/rewardscenter/model/RewardsCenterModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private j:Ljava/lang/String;

.field private final k:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/rewardscenter/model/e;

    invoke-direct {p1}, Lcom/transsion/rewardscenter/model/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->b:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->f:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->h:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->i:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->k:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic c()Lup/a;
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->z()Lup/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/rewardscenter/model/RewardsCenterModel;)Lup/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->s()Lup/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->i(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final s()Lup/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup/a;

    return-object v0
.end method

.method private static final z()Lup/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lup/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup/a;

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->j:Ljava/lang/String;

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "cc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iso"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v8, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$submitAndClaim$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    move-object v7, v8

    move v8, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final C(I)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->d:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/rewardscenterapi/User;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->d:Landroidx/lifecycle/b0;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/rewardscenterapi/User;->copy$default(Lcom/transsion/rewardscenterapi/User;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/rewardscenterapi/User;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 7

    const-string v0, "drawResultId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claim$1;-><init>(Ljava/lang/String;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    const-string v0, "drawResultId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claimVip$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$claimVip$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/rewardscenter/model/RewardsCenterModel$drawTask$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$drawTask$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i(Lkotlin/jvm/functions/Function0;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$fetchRewardsCenterData$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenterapi/Lottery;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/Lottery;->getActivityId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l()Lcom/transsion/rewardscenterapi/SkuPoint;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenterapi/Lottery;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/Lottery;->getBanner()Lcom/transsion/rewardscenterapi/Banner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/Banner;->getSku()Lcom/transsion/rewardscenterapi/SkuPoint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->k:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenterapi/Lottery;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/Lottery;->getBanner()Lcom/transsion/rewardscenterapi/Banner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/Banner;->getSkuId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final v()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final w()Lcom/transsion/rewardscenterapi/User;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->d:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenterapi/User;

    return-object v0
.end method

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final y(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)V
    .locals 13

    move-object v0, p2

    const-string v1, "activity"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "phone"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v8, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lottery"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payment"

    invoke-static {v0, v8}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    invoke-virtual {v0}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    new-instance v9, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;

    move-object v0, p0

    invoke-direct {v9, p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;)V

    const/16 v11, 0x94

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v12}, Lcom/transsion/payment/lib/f;->f(Lcom/transsion/payment/lib/f;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
