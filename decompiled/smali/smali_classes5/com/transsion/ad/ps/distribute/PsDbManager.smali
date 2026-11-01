.class public final Lcom/transsion/ad/ps/distribute/PsDbManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsDbManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PsDbManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsDbManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    new-instance v0, Lcom/transsion/ad/ps/distribute/b;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lmi/l;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDbManager;->m()Lmi/l;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/ps/distribute/PsDbManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/ps/distribute/PsDbManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final i()Lmi/l;
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi/l;

    return-object v0
.end method

.method private static final m()Lmi/l;
    .locals 3

    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$n;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->A0()Lmi/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmi/l;->d(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lmi/l;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lmi/l;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmi/l;->f(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmi/l;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmi/l;->b(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final k(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 7

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLinkAdPlan()Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutClick$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutClick$1;-><init>(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 7

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLinkAdPlan()Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutDisplay$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutDisplay$1;-><init>(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lmi/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmi/l;->e(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
