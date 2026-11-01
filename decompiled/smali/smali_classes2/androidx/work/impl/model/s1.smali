.class public abstract Landroidx/work/impl/model/s1;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/impl/model/x;

    iget-object v1, p0, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/work/impl/model/j0;->g()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/work/impl/model/x;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
