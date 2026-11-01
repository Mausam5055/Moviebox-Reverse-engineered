.class public abstract Landroidx/lifecycle/v;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p0

    return-object p0
.end method
