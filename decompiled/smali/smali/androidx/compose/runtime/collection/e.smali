.class public final Landroidx/compose/runtime/collection/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/collection/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/collection/v0;->d()Landroidx/collection/n0;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1}, Landroidx/collection/n0;->k(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    iget-object v6, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    aget-object v6, v6, v1

    :goto_1
    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    instance-of v7, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_3

    const-string v2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0>"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v6

    check-cast v2, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v2, p2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eq v6, p2, :cond_4

    new-instance v7, Landroidx/collection/MutableScatterSet;

    invoke-direct {v7, v2, v3, v5}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.add$lambda$0"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    invoke-virtual {v7, p2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    move-object p2, v7

    goto :goto_3

    :cond_4
    :goto_2
    move-object p2, v6

    :goto_3
    if-eqz v4, :cond_5

    not-int v1, v1

    iget-object v2, v0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p1, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    goto :goto_4

    :cond_5
    iget-object p1, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    :goto_4
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0}, Landroidx/collection/n0;->h()V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1}, Landroidx/collection/u0;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Landroidx/collection/n0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0}, Landroidx/collection/u0;->d()I

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1}, Landroidx/collection/u0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return p2

    :cond_2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {p2, p1}, Landroidx/collection/n0;->o(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    iget-object v1, v0, Landroidx/collection/u0;->a:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_3

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    iget-object v11, v0, Landroidx/collection/u0;->b:[Ljava/lang/Object;

    aget-object v11, v11, v10

    iget-object v11, v0, Landroidx/collection/u0;->c:[Ljava/lang/Object;

    aget-object v11, v11, v10

    instance-of v12, v11, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_0

    const-string v12, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScope$lambda$3>"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v11, p1}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Landroidx/collection/ScatterSet;->d()Z

    move-result v11

    goto :goto_2

    :cond_0
    if-ne v11, p1, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    move v11, v3

    :goto_2
    if-eqz v11, :cond_2

    invoke-virtual {v0, v10}, Landroidx/collection/n0;->p(I)Ljava/lang/Object;

    :cond_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-ne v7, v8, :cond_5

    :cond_4
    if-eq v4, v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/e;->a:Landroidx/collection/n0;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/n0;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
