.class public abstract Landroidx/work/impl/model/w;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/work/impl/model/x;I)Landroidx/work/impl/model/o;
    .locals 2

    const-string v0, "generationalId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/impl/model/o;

    invoke-virtual {p0}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/model/x;->a()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/model/o;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
