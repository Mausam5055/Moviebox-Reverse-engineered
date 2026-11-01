.class public final Lcom/transsion/ad/ps/attribution/AttributionProduceManager;
.super Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/ps/attribution/AttributionProduceManager$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;-><init>()V

    return-void
.end method

.method private final k(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object p1

    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpAttributionLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAttributionLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getShowAttributionLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_5
    :goto_1
    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    invoke-direct {v0, p1, p2, v2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->n(Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method private final n(Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;

    const/4 v0, 0x0

    invoke-direct {v4, p3, p1, p2, v0}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;-><init>(Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->k(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    :cond_1
    return-void
.end method

.method public final m(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 2

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->DISPLAY:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-direct {p0, p1, v0}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->k(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    :cond_1
    return-void
.end method
