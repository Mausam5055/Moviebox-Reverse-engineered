.class public final Lcom/transsion/ad/MBAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/MBAd$a;,
        Lcom/transsion/ad/MBAd$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/MBAd;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/MBAd;

    invoke-direct {v0}, Lcom/transsion/ad/MBAd;-><init>()V

    sput-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/transsion/ad/MBAd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lcom/transsion/ad/MBAd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/MBAd;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/MBAd;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/MBAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/transsion/ad/MBAd$a;
    .locals 1

    sget-object v0, Lcom/transsion/ad/MBAd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/MBAd$a;

    return-object v0
.end method

.method public final e(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/transsion/ad/MBAd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/compose/animation/core/j0;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/MBAd;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> initAd() --> \u5e7f\u544aSDK\uff0c\u5df2\u7ecf\u521d\u59cb\u5316"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v2, Lcom/transsion/ad/MBAd$initAd$2;

    invoke-direct {v2, p1, v1}, Lcom/transsion/ad/MBAd$initAd$2;-><init>(Lcom/transsion/ad/MBAd$a;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/MBAd$initNonAd$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/transsion/ad/MBAd$initNonAd$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd$a;->l()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
