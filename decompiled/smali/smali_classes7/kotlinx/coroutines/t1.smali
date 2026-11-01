.class public interface abstract Lkotlinx/coroutines/t1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/t1$a;,
        Lkotlinx/coroutines/t1$b;
    }
.end annotation


# static fields
.field public static final l1:Lkotlinx/coroutines/t1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t1$b;->a:Lkotlinx/coroutines/t1$b;

    sput-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    return-void
.end method


# virtual methods
.method public abstract attachChild(Lkotlinx/coroutines/v;)Lkotlinx/coroutines/t;
.end method

.method public abstract cancel(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract getCancellationException()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract getChildren()Lkotlin/sequences/Sequence;
.end method

.method public abstract invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;
.end method

.method public abstract invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract start()Z
.end method
