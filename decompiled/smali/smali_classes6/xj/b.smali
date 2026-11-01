.class public abstract Lxj/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lbg/b;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lxj/a;

    if-eqz v0, :cond_0

    check-cast p0, Lxj/a;

    invoke-virtual {p0}, Lxj/a;->c()V

    :cond_0
    return-void
.end method
