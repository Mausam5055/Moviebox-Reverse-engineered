.class abstract Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;
.super Lkotlinx/serialization/internal/f1;

# interfaces
.implements Lkotlinx/serialization/json/l;


# instance fields
.field private final b:Lkotlinx/serialization/json/a;

.field private final c:Lkotlin/jvm/functions/Function1;

.field protected final d:Lkotlinx/serialization/json/f;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/f1;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->d:Lkotlinx/serialization/json/f;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic h0(Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->Y()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A(Lkotlinx/serialization/json/h;)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic J(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->i0(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic K(Ljava/lang/Object;B)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->j0(Ljava/lang/String;B)V

    return-void
.end method

.method public bridge synthetic L(Ljava/lang/Object;C)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->k0(Ljava/lang/String;C)V

    return-void
.end method

.method public bridge synthetic M(Ljava/lang/Object;D)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->l0(Ljava/lang/String;D)V

    return-void
.end method

.method public bridge synthetic N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->m0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;I)V

    return-void
.end method

.method public bridge synthetic O(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->n0(Ljava/lang/String;F)V

    return-void
.end method

.method public bridge synthetic P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/f;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Q(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->p0(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic R(Ljava/lang/Object;J)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->q0(Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic T(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->r0(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic U(Ljava/lang/Object;S)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->s0(Ljava/lang/String;S)V

    return-void
.end method

.method public bridge synthetic V(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->t0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic W(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->u0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected X(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->v0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a()Lf00/c;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/d;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->Z()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->c:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$beginStructure$consumer$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$beginStructure$consumer$1;-><init>(Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;)V

    :goto_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/i$b;->a:Lkotlinx/serialization/descriptors/i$b;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lkotlinx/serialization/descriptors/d;

    :goto_1
    if-eqz v2, :cond_2

    new-instance v1, Lkotlinx/serialization/json/internal/e0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/e0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_2
    sget-object v2, Lkotlinx/serialization/descriptors/i$c;->a:Lkotlinx/serialization/descriptors/i$c;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object v2

    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/json/internal/q0;->a(Lkotlinx/serialization/descriptors/f;Lf00/c;)Lkotlinx/serialization/descriptors/f;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/serialization/descriptors/e;

    if-nez v4, :cond_5

    sget-object v4, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lkotlinx/serialization/json/internal/e0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/e0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lkotlinx/serialization/json/internal/w;->d(Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    new-instance v1, Lkotlinx/serialization/json/internal/g0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/g0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lkotlinx/serialization/json/internal/c0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/c0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    :goto_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/j;->c(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e:Ljava/lang/String;

    :cond_7
    return-object v1
.end method

.method public final d()Lkotlinx/serialization/json/a;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    return-object v0
.end method

.method protected d0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "parentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "childName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public e(Lkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->Z()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/g;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->a()Lf00/c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/q0;->a(Lkotlinx/serialization/descriptors/f;Lf00/c;)Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->a(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/z;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->b:Lkotlinx/serialization/json/a;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/z;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    invoke-interface {p1}, Lkotlinx/serialization/g;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->X(Lkotlinx/serialization/descriptors/f;)V

    goto :goto_2

    :cond_1
    :goto_0
    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/json/l;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/internal/b;

    invoke-interface {p1}, Lkotlinx/serialization/g;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/serialization/json/l;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/serialization/json/internal/i0;->c(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lkotlinx/serialization/d;->b(Lkotlinx/serialization/internal/b;Le00/f;Ljava/lang/Object;)Lkotlinx/serialization/g;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/internal/i0;->a(Lkotlinx/serialization/g;Lkotlinx/serialization/g;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlinx/serialization/g;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/i0;->b(Lkotlinx/serialization/descriptors/h;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e:Ljava/lang/String;

    invoke-interface {v1, p0, p2}, Lkotlinx/serialization/g;->serialize(Le00/f;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/g;->serialize(Le00/f;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method protected i0(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->a(Ljava/lang/Boolean;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected j0(Ljava/lang/String;B)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected k0(Ljava/lang/String;C)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->c(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected l0(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/j;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/u;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->d:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->v0()Lkotlinx/serialization/json/h;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lkotlinx/serialization/json/internal/w;->c(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected m0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->c(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected n0(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/j;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/u;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->d:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->v0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lkotlinx/serialization/json/internal/w;->c(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->c:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lkotlinx/serialization/json/JsonNull;->c:Lkotlinx/serialization/json/JsonNull;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->r0(Ljava/lang/String;)V

    return-void
.end method

.method protected o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)Le00/f;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/internal/m0;->a(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;

    invoke-direct {p2, p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;-><init>(Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected p0(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected q0(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected r0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/JsonNull;->c:Lkotlinx/serialization/json/JsonNull;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected s0(Ljava/lang/String;S)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->b(Ljava/lang/Number;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected t0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/j;->c(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected u0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->c(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public abstract v0()Lkotlinx/serialization/json/h;
.end method

.method public abstract w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V
.end method

.method public z(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->d:Lkotlinx/serialization/json/f;

    invoke-virtual {p1}, Lkotlinx/serialization/json/f;->e()Z

    move-result p1

    return p1
.end method
