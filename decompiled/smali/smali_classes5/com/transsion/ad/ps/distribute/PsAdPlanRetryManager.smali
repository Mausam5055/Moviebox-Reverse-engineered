.class public final Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->a:Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->b:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v2}, Lcom/transsion/ad/scene/b;->f()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->b:J

    sget-object v2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> retry() --> PS \u76f4\u6295\u7684\u865a\u62df\u8ba1\u5212 --> \u65e0\u5546\u5355\u91cd\u8bd5 --> \u8bf7\u6c42PS\u5546\u5355\u63a5\u53e3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager$retry$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/ps/distribute/PsAdPlanRetryManager$retry$1;-><init>(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
