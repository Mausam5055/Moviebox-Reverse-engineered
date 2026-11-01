.class public abstract Landroidx/work/g0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/work/f0;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/f0;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroidx/work/f0;->d()V

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->a(I)V

    return-object p1

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    if-eqz v0, :cond_2

    invoke-interface {p0}, Landroidx/work/f0;->d()V

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->a(I)V

    throw p1
.end method
