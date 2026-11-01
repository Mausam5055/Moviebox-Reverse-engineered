.class public final Lkotlinx/coroutines/c2;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;

# interfaces
.implements Lkotlinx/coroutines/t1;


# static fields
.field public static final a:Lkotlinx/coroutines/c2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/c2;

    invoke-direct {v0}, Lkotlinx/coroutines/c2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/c2;->a:Lkotlinx/coroutines/c2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public attachChild(Lkotlinx/coroutines/v;)Lkotlinx/coroutines/t;
    .locals 0

    sget-object p1, Lkotlinx/coroutines/d2;->a:Lkotlinx/coroutines/d2;

    return-object p1
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    return-void
.end method

.method public getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job is always active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;
    .locals 0

    sget-object p1, Lkotlinx/coroutines/d2;->a:Lkotlinx/coroutines/d2;

    return-object p1
.end method

.method public invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;
    .locals 0

    sget-object p1, Lkotlinx/coroutines/d2;->a:Lkotlinx/coroutines/d2;

    return-object p1
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This job is always active"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonCancellable"

    return-object v0
.end method
