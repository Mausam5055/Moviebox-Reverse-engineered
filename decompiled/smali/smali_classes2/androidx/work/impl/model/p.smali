.class public abstract synthetic Landroidx/work/impl/model/p;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/work/impl/model/q;Landroidx/work/impl/model/x;)Landroidx/work/impl/model/o;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->a()I

    move-result p1

    invoke-interface {p0, v0, p1}, Landroidx/work/impl/model/q;->b(Ljava/lang/String;I)Landroidx/work/impl/model/o;

    move-result-object p0

    return-object p0
.end method
