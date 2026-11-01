.class public abstract Landroidx/navigation/n;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/l;
    .locals 1

    const-string v0, "optionsBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/navigation/m;

    invoke-direct {v0}, Landroidx/navigation/m;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/navigation/m;->b()Landroidx/navigation/l;

    move-result-object p0

    return-object p0
.end method
