.class public final Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;
.super Lcom/transsion/ad/monopoly/manager/c;


# static fields
.field public static final b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/manager/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager$innerCopy$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager$innerCopy$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
