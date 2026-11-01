.class public abstract Landroidx/core/os/r;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlin/coroutines/Continuation;)Landroid/os/OutcomeReceiver;
    .locals 1

    new-instance v0, Landroidx/core/os/ContinuationOutcomeReceiver;

    invoke-direct {v0, p0}, Landroidx/core/os/ContinuationOutcomeReceiver;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/core/os/q;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method
