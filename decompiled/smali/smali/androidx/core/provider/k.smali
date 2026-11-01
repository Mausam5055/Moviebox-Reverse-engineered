.class public abstract Landroidx/core/provider/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/k$b;,
        Landroidx/core/provider/k$a;,
        Landroidx/core/provider/k$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/k$b;)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lz0/i;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/k$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/e;)Landroidx/core/provider/k$a;
    .locals 0

    invoke-static {p2}, Landroidx/core/provider/j;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroidx/core/provider/d;->e(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)Landroidx/core/provider/k$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;Landroidx/core/provider/k$c;)Landroid/graphics/Typeface;
    .locals 1

    new-instance v0, Landroidx/core/provider/CallbackWrapper;

    invoke-static {p5}, Landroidx/core/provider/RequestExecutor;->b(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p5

    invoke-direct {v0, p6, p5}, Landroidx/core/provider/CallbackWrapper;-><init>(Landroidx/core/provider/k$c;Ljava/util/concurrent/Executor;)V

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p5, 0x1

    if-gt p3, p5, :cond_0

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/provider/e;

    invoke-static {p0, p1, v0, p2, p4}, Landroidx/core/provider/i;->e(Landroid/content/Context;Landroidx/core/provider/e;Landroidx/core/provider/CallbackWrapper;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/provider/i;->d(Landroid/content/Context;Ljava/util/List;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWrapper;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
