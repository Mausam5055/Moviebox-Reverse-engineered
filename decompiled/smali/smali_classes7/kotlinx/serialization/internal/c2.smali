.class public abstract Lkotlinx/serialization/internal/c2;
.super Ljava/lang/Object;

# interfaces
.implements Le00/f;
.implements Le00/d;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private final H(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/c2;->c0(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final B(I)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->Q(Ljava/lang/Object;I)V

    return-void
.end method

.method public C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/internal/c2;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final D(Lkotlinx/serialization/descriptors/f;IS)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->U(Ljava/lang/Object;S)V

    return-void
.end method

.method public final E(Lkotlinx/serialization/descriptors/f;ID)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lkotlinx/serialization/internal/c2;->M(Ljava/lang/Object;D)V

    return-void
.end method

.method public final F(Lkotlinx/serialization/descriptors/f;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lkotlinx/serialization/internal/c2;->R(Ljava/lang/Object;J)V

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->V(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public I(Lkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le00/f$a;->c(Le00/f;Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method

.method protected J(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected K(Ljava/lang/Object;B)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected L(Ljava/lang/Object;C)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected M(Ljava/lang/Object;D)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected O(Ljava/lang/Object;F)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/f;
    .locals 1

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/c2;->c0(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected Q(Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected R(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected S(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected T(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "null is not supported"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected U(Ljava/lang/Object;S)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected V(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->W(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected W(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlinx/serialization/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-serializable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported by "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " encoder"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected X(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final Y()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final Z()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Lf00/c;
    .locals 1

    invoke-static {}, Lf00/d;->a()Lf00/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/d;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final b0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v1, "No tag in stack for requested element"

    invoke-direct {v0, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/c2;->X(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method protected final c0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/c2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le00/f$a;->d(Le00/f;Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lkotlinx/serialization/descriptors/f;I)Le00/f;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    return-object p1
.end method

.method public final g(D)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/internal/c2;->M(Ljava/lang/Object;D)V

    return-void
.end method

.method public final h(B)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->K(Ljava/lang/Object;B)V

    return-void
.end method

.method public i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/internal/c2;->I(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public j(Lkotlinx/serialization/descriptors/f;I)Le00/d;
    .locals 0

    invoke-static {p0, p1, p2}, Le00/f$a;->a(Le00/f;Lkotlinx/serialization/descriptors/f;I)Le00/d;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lkotlinx/serialization/descriptors/f;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/internal/c2;->N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;I)V

    return-void
.end method

.method public final l(Lkotlinx/serialization/descriptors/f;)Le00/f;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    return-object p1
.end method

.method public final m(J)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/internal/c2;->R(Ljava/lang/Object;J)V

    return-void
.end method

.method public final n(Lkotlinx/serialization/descriptors/f;IC)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->L(Ljava/lang/Object;C)V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/c2;->T(Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lkotlinx/serialization/descriptors/f;IB)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->K(Ljava/lang/Object;B)V

    return-void
.end method

.method public final q(S)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->U(Ljava/lang/Object;S)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->J(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final s(Lkotlinx/serialization/descriptors/f;IF)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->O(Ljava/lang/Object;F)V

    return-void
.end method

.method public final t(F)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->O(Ljava/lang/Object;F)V

    return-void
.end method

.method public final u(C)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->b0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/c2;->L(Ljava/lang/Object;C)V

    return-void
.end method

.method public v()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/c2;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/c2;->S(Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Lkotlinx/serialization/descriptors/f;II)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->Q(Ljava/lang/Object;I)V

    return-void
.end method

.method public final x(Lkotlinx/serialization/descriptors/f;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->J(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/c2;->a0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/c2;->V(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public z(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le00/d$a;->a(Le00/d;Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    return p1
.end method
