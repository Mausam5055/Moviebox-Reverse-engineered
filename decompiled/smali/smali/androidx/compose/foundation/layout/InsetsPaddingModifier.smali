.class public final Landroidx/compose/foundation/layout/InsetsPaddingModifier;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/o;
.implements Landroidx/compose/ui/modifier/d;
.implements Landroidx/compose/ui/modifier/j;


# instance fields
.field private final b:Landroidx/compose/foundation/layout/h0;

.field private final c:Landroidx/compose/runtime/i1;

.field private final d:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/h0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->c:Landroidx/compose/runtime/i1;

    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->d:Landroidx/compose/runtime/i1;

    return-void
.end method

.method private final a()Landroidx/compose/foundation/layout/h0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->d:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/h0;

    return-object v0
.end method

.method private final i()Landroidx/compose/foundation/layout/h0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->c:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/h0;

    return-object v0
.end method

.method private final k(Landroidx/compose/foundation/layout/h0;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->d:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final l(Landroidx/compose/foundation/layout/h0;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->c:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    iget-object p1, p1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Landroidx/compose/ui/modifier/k;)V
    .locals 1

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->a()Landroidx/compose/ui/modifier/l;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/k;->P(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/h0;

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/i0;->b(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->l(Landroidx/compose/foundation/layout/h0;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/i0;->c(Landroidx/compose/foundation/layout/h0;Landroidx/compose/foundation/layout/h0;)Landroidx/compose/foundation/layout/h0;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->k(Landroidx/compose/foundation/layout/h0;)V

    return-void
.end method

.method public getKey()Landroidx/compose/ui/modifier/l;
    .locals 1

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->a()Landroidx/compose/ui/modifier/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->j()Landroidx/compose/foundation/layout/h0;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->b:Landroidx/compose/foundation/layout/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Landroidx/compose/foundation/layout/h0;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->a()Landroidx/compose/foundation/layout/h0;

    move-result-object v0

    return-object v0
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 9

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    move-result-object v3

    invoke-interface {p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroidx/compose/foundation/layout/h0;->c(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v3

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    move-result-object v4

    invoke-interface {v4, p1}, Landroidx/compose/foundation/layout/h0;->a(Lo0/e;)I

    move-result v4

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    move-result-object v5

    invoke-interface {p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Landroidx/compose/foundation/layout/h0;->d(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result v5

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;->i()Landroidx/compose/foundation/layout/h0;

    move-result-object v6

    invoke-interface {v6, p1}, Landroidx/compose/foundation/layout/h0;->b(Lo0/e;)I

    move-result v6

    add-int/2addr v5, v3

    add-int/2addr v6, v4

    neg-int v7, v5

    neg-int v8, v6

    invoke-static {p3, p4, v7, v8}, Lo0/c;->n(JII)J

    move-result-wide v7

    invoke-interface {p2, v7, v8}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {p3, p4, v8}, Lo0/c;->i(JI)I

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v8

    add-int/2addr v8, v6

    invoke-static {p3, p4, v8}, Lo0/c;->h(JI)I

    move-result v2

    new-instance v6, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;

    invoke-direct {v6, v7, v3, v4}, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;-><init>(Landroidx/compose/ui/layout/g0;II)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v1, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object v0

    return-object v0
.end method
