.class public final Lcom/transsion/rewardscenter/RewardsCenterProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/rewardscenterapi/IRewardsCenterApi;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private volatile b:Lcom/transsion/rewardscenterapi/RewardsCenterData;

.field private final c:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/rewardscenter/a;

    invoke-direct {v0}, Lcom/transsion/rewardscenter/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->c:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic e()Lup/a;
    .locals 1

    invoke-static {}, Lcom/transsion/rewardscenter/RewardsCenterProvider;->j()Lup/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/rewardscenter/task/ad/g0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/rewardscenter/RewardsCenterProvider;->l(Lcom/transsion/rewardscenter/task/ad/g0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/rewardscenter/RewardsCenterProvider;)Lup/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/rewardscenter/RewardsCenterProvider;->k()Lup/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/rewardscenter/RewardsCenterProvider;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/rewardscenter/RewardsCenterProvider;Lcom/transsion/rewardscenterapi/RewardsCenterData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->b:Lcom/transsion/rewardscenterapi/RewardsCenterData;

    return-void
.end method

.method private static final j()Lup/a;
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

.method private final k()Lup/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup/a;

    return-object v0
.end method

.method private static final l(Lcom/transsion/rewardscenter/task/ad/g0;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->r()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/transsion/rewardscenterapi/RewardsCenterData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->b:Lcom/transsion/rewardscenterapi/RewardsCenterData;

    return-object v0
.end method

.method public b()V
    .locals 7

    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/rewardscenter/RewardsCenterProvider$fetchRewardsCenterData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/rewardscenter/RewardsCenterProvider$fetchRewardsCenterData$1;-><init>(Lcom/transsion/rewardscenter/RewardsCenterProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public c(Landroid/content/Context;Lkotlinx/coroutines/n0;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "RewardsCenter"

    const-string v3, "preloadTaskAd"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/rewardscenter/task/ad/g0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lcom/transsion/rewardscenter/task/ad/g0;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n0;)V

    new-instance p1, Lcom/transsion/rewardscenter/b;

    invoke-direct {p1, v0}, Lcom/transsion/rewardscenter/b;-><init>(Lcom/transsion/rewardscenter/task/ad/g0;)V

    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper;->f(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public d()Landroidx/lifecycle/LiveData;
    .locals 7

    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/rewardscenter/RewardsCenterProvider$fetchUnclaimRewardCount$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/rewardscenter/RewardsCenterProvider$fetchUnclaimRewardCount$1;-><init>(Lcom/transsion/rewardscenter/RewardsCenterProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    iget-object v0, p0, Lcom/transsion/rewardscenter/RewardsCenterProvider;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method
