.class public abstract synthetic Li3/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Li3/s;[BII)Li3/k;
    .locals 7

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    invoke-static {}, Li3/s$b;->a()Li3/s$b;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Li3/q;

    invoke-direct {v6, v0}, Li3/q;-><init>(Lcom/google/common/collect/ImmutableList$a;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Li3/s;->a([BIILi3/s$b;Landroidx/media3/common/util/m;)V

    new-instance p0, Li3/g;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1}, Li3/g;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static b(Li3/s;)V
    .locals 0

    return-void
.end method
