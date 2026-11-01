.class public abstract Landroidx/compose/runtime/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/l1;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/k;->a:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/l1;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/k;->b:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/l1;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/k;->c:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/l1;

    const-string v1, "providerValues"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/k;->d:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/l1;

    const-string v1, "providers"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/k;->e:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/l1;

    const-string v1, "reference"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/l1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/k;->f:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/j;

    invoke-direct {v0}, Landroidx/compose/runtime/j;-><init>()V

    sput-object v0, Landroidx/compose/runtime/k;->g:Ljava/util/Comparator;

    return-void
.end method

.method private static final A(Landroidx/compose/runtime/q0;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/p0;

    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->d()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/q0;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final B()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static final C()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public static final D()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/k;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private static final E(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->w(Ljava/util/List;I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    instance-of v2, p3, Landroidx/compose/runtime/z;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    new-instance v1, Landroidx/compose/runtime/o0;

    invoke-direct {v1, p2, p1, p3}, Landroidx/compose/runtime/o0;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/o0;

    instance-of p1, p3, Landroidx/compose/runtime/z;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/runtime/o0;->a()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/o0;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Landroidx/collection/MutableScatterSet;

    if-eqz p2, :cond_3

    check-cast p1, Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1, p3}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1, p3}, Landroidx/collection/w0;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/o0;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/o0;->e(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static final F(Landroidx/compose/runtime/i2;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->k()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/i2;->u()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final G(Landroidx/compose/runtime/m2;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->c0()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final I(I)Landroidx/collection/n0;
    .locals 1

    new-instance v0, Landroidx/collection/n0;

    invoke-direct {v0, p0}, Landroidx/collection/n0;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/h1;->b(Landroidx/collection/n0;)Landroidx/collection/n0;

    move-result-object p0

    return-object p0
.end method

.method private static final J(Landroidx/compose/runtime/i2;III)I
    .locals 4

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    if-eq p1, p3, :cond_8

    if-ne p2, p3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    move-result v0

    if-ne v0, p2, :cond_2

    return p2

    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    move-result p0

    return p0

    :cond_4
    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/k;->u(Landroidx/compose/runtime/i2;II)I

    move-result v0

    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/k;->u(Landroidx/compose/runtime/i2;II)I

    move-result p3

    sub-int v1, v0, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sub-int/2addr p3, v0

    :goto_1
    if-ge v2, p3, :cond_6

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eq p1, p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->P(I)I

    move-result p2

    goto :goto_2

    :cond_7
    return p1

    :cond_8
    :goto_3
    return p3
.end method

.method public static final K(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    move-result v0

    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/m2;->k0(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    move-result v2

    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-static {p0}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0}, Landroidx/compose/runtime/m2;->d(Landroidx/compose/runtime/m2;I)I

    move-result v3

    aget-object v2, v2, v3

    instance-of v3, v2, Landroidx/compose/runtime/h;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/h;

    invoke-interface {p1, v5, v3, v4, v4}, Landroidx/compose/runtime/a2;->b(Landroidx/compose/runtime/h;III)V

    :cond_0
    instance-of v3, v2, Landroidx/compose/runtime/c2;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/c2;

    invoke-virtual {v5}, Landroidx/compose/runtime/c2;->a()Landroidx/compose/runtime/c;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/compose/runtime/c;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/m2;->F(Landroidx/compose/runtime/c;)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    move-result v6

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/m2;->b1(I)I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v5}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    move-result-object v5

    invoke-interface {p1, v5, v3, v4, v6}, Landroidx/compose/runtime/a2;->e(Landroidx/compose/runtime/b2;III)V

    :cond_2
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_3

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->L0()Z

    return-void
.end method

.method private static final L(Landroidx/compose/runtime/m2;IILjava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/runtime/m2;->R0(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "Slot table is out of sync"

    invoke-static {p0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final M(Ljava/util/List;I)Landroidx/compose/runtime/o0;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->w(Ljava/util/List;I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/o0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final N(Ljava/util/List;II)V
    .locals 1

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->v(Ljava/util/List;I)I

    move-result p1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/o0;

    invoke-virtual {v0}, Landroidx/compose/runtime/o0;->b()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final O(Z)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Check failed"

    invoke-static {p0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final P()V
    .locals 0

    return-void
.end method

.method public static final Q(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/o0;Landroidx/compose/runtime/o0;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->b(Landroidx/compose/runtime/o0;Landroidx/compose/runtime/o0;)I

    move-result p0

    return p0
.end method

.method private static final b(Landroidx/compose/runtime/o0;Landroidx/compose/runtime/o0;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/o0;->b()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/runtime/o0;->b()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(I)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/k;->n(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Z)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/k;->o(Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/j2;Landroidx/compose/runtime/c;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->p(Landroidx/compose/runtime/j2;Landroidx/compose/runtime/c;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Ljava/util/List;II)Landroidx/compose/runtime/o0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/k;->x(Ljava/util/List;II)Landroidx/compose/runtime/o0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/k;->g:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic h(Landroidx/compose/runtime/q0;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/k;->A(Landroidx/compose/runtime/q0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/k;->E(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic j(I)Landroidx/collection/n0;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/k;->I(I)Landroidx/collection/n0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Landroidx/compose/runtime/i2;III)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/k;->J(Landroidx/compose/runtime/i2;III)I

    move-result p0

    return p0
.end method

.method public static final synthetic l(Ljava/util/List;I)Landroidx/compose/runtime/o0;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->M(Ljava/util/List;I)Landroidx/compose/runtime/o0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Ljava/util/List;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/k;->N(Ljava/util/List;II)V

    return-void
.end method

.method private static final n(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final o(Z)I
    .locals 0

    return p0
.end method

.method private static final p(Landroidx/compose/runtime/j2;Landroidx/compose/runtime/c;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/j2;->w()Landroidx/compose/runtime/i2;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/j2;->c(Landroidx/compose/runtime/c;)I

    move-result p0

    invoke-static {v1, v0, p0}, Landroidx/compose/runtime/k;->q(Landroidx/compose/runtime/i2;Ljava/util/List;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->d()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->d()V

    throw p0
.end method

.method private static final q(Landroidx/compose/runtime/i2;Ljava/util/List;I)V
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->J(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->L(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/i2;->E(I)I

    move-result v1

    add-int/2addr p2, v1

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/k;->q(Landroidx/compose/runtime/i2;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/i2;->E(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final r(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final s(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final t(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->a0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->b0()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/m2;->A0(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/runtime/h;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    move-result v3

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/m2;->d1(I)I

    move-result v5

    sub-int/2addr v3, v5

    check-cast v2, Landroidx/compose/runtime/h;

    invoke-interface {p1, v2, v3, v4, v4}, Landroidx/compose/runtime/a2;->d(Landroidx/compose/runtime/h;III)V

    :cond_0
    invoke-static {p0, v0}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    move-result v2

    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroidx/compose/runtime/m2;->A(Landroidx/compose/runtime/m2;[II)I

    move-result v2

    invoke-static {p0}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    move-result-object v3

    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v5}, Landroidx/compose/runtime/m2;->p(Landroidx/compose/runtime/m2;I)I

    move-result v6

    invoke-static {p0, v3, v6}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    move-result v3

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_4

    sub-int v7, v6, v2

    invoke-static {p0}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v6}, Landroidx/compose/runtime/m2;->d(Landroidx/compose/runtime/m2;I)I

    move-result v9

    aget-object v8, v8, v9

    instance-of v9, v8, Landroidx/compose/runtime/c2;

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Landroidx/compose/runtime/c2;

    invoke-virtual {v9}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    move-result-object v10

    instance-of v11, v10, Landroidx/compose/runtime/e2;

    if-nez v11, :cond_3

    invoke-static {p0, v0, v7, v8}, Landroidx/compose/runtime/k;->L(Landroidx/compose/runtime/m2;IILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v9}, Landroidx/compose/runtime/c2;->a()Landroidx/compose/runtime/c;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/compose/runtime/c;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v7}, Landroidx/compose/runtime/m2;->F(Landroidx/compose/runtime/c;)I

    move-result v7

    invoke-virtual {p0}, Landroidx/compose/runtime/m2;->e0()I

    move-result v9

    invoke-virtual {p0, v7}, Landroidx/compose/runtime/m2;->b1(I)I

    move-result v11

    sub-int/2addr v9, v11

    goto :goto_2

    :cond_1
    move v7, v4

    move v9, v7

    :goto_2
    invoke-interface {p1, v10, v8, v7, v9}, Landroidx/compose/runtime/a2;->e(Landroidx/compose/runtime/b2;III)V

    goto :goto_3

    :cond_2
    instance-of v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v9, :cond_3

    invoke-static {p0, v0, v7, v8}, Landroidx/compose/runtime/k;->L(Landroidx/compose/runtime/m2;IILjava/lang/Object;)V

    check-cast v8, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v8}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static final u(Landroidx/compose/runtime/i2;II)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/i2;->P(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final v(Ljava/util/List;I)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->w(Ljava/util/List;I)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method private static final w(Ljava/util/List;I)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/o0;

    invoke-virtual {v3}, Landroidx/compose/runtime/o0;->b()I

    move-result v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method private static final x(Ljava/util/List;II)Landroidx/compose/runtime/o0;
    .locals 1

    invoke-static {p0, p1}, Landroidx/compose/runtime/k;->v(Ljava/util/List;I)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/o0;

    invoke-virtual {p0}, Landroidx/compose/runtime/o0;->b()I

    move-result p1

    if-ge p1, p2, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final y()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/k;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static final z()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/k;->a:Ljava/lang/Object;

    return-object v0
.end method
