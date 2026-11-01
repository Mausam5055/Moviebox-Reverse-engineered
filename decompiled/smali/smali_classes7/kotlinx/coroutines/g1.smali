.class public abstract Lkotlinx/coroutines/g1;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Lkotlinx/coroutines/e1;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/h;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/h;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
