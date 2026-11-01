.class public final Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/a;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/plan/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lmi/l;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->e()Lmi/l;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;)Lmi/l;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->c()Lmi/l;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lmi/l;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi/l;

    return-object v0
.end method

.method private static final e()Lmi/l;
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
.method public final d(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;-><init>(Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$2;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$2;-><init>(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager$hasPsOffer$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    :goto_1
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
