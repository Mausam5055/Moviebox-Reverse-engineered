.class public abstract Landroidx/compose/ui/scrollcapture/j;
.super Ljava/lang/Object;


# direct methods
.method private static final a(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 2

    invoke-static {p0}, Landroidx/compose/ui/scrollcapture/j;->c(Landroidx/compose/ui/semantics/SemanticsNode;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object p0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/g;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/g;->a()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final b(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroidx/compose/ui/semantics/SemanticsNode;->l(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/semantics/SemanticsNode;)Lkotlin/jvm/functions/Function2;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/h;->t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/semantics/SemanticsNode;ILkotlin/jvm/functions/Function1;)V
    .locals 5

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/semantics/SemanticsNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-static {p0}, Landroidx/compose/ui/scrollcapture/j;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/compose/runtime/collection/b;->e(ILjava/util/List;)Z

    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-static {p0}, Landroidx/compose/ui/scrollcapture/j;->d(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->e()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->X0()Landroidx/compose/ui/layout/l;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/layout/m;->c(Landroidx/compose/ui/layout/l;)Ly/i;

    move-result-object v2

    invoke-static {v2}, Lo0/s;->b(Ly/i;)Lo0/r;

    move-result-object v2

    invoke-virtual {v2}, Lo0/r;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/scrollcapture/j;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/scrollcapture/j;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-instance v4, Landroidx/compose/ui/scrollcapture/i;

    invoke-direct {v4, p0, v3, v2, v1}, Landroidx/compose/ui/scrollcapture/i;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;ILo0/r;Landroidx/compose/ui/layout/l;)V

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v3, p2}, Landroidx/compose/ui/scrollcapture/j;->e(Landroidx/compose/ui/semantics/SemanticsNode;ILkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_4
    const-string p0, "Expected semantics node to have a coordinator."

    invoke-static {p0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    return-void
.end method

.method static synthetic f(Landroidx/compose/ui/semantics/SemanticsNode;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/scrollcapture/j;->e(Landroidx/compose/ui/semantics/SemanticsNode;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
