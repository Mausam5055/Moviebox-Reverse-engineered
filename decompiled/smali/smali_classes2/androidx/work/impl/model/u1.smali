.class public abstract synthetic Landroidx/work/impl/model/u1;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/work/impl/model/v1;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroidx/work/impl/model/t1;

    invoke-direct {v1, v0, p1}, Landroidx/work/impl/model/t1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Landroidx/work/impl/model/v1;->c(Landroidx/work/impl/model/t1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
