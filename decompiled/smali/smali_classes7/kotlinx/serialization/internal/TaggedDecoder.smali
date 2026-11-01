.class public abstract Lkotlinx/serialization/internal/TaggedDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Le00/e;
.implements Le00/c;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private final a0(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->Z(Ljava/lang/Object;)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lkotlinx/serialization/internal/TaggedDecoder;->b:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lkotlinx/serialization/internal/TaggedDecoder;->b:Z

    return-object p1
.end method


# virtual methods
.method public final A(Lkotlinx/serialization/descriptors/f;I)C
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->L(Ljava/lang/Object;)C

    move-result p1

    return p1
.end method

.method public final B(Lkotlinx/serialization/descriptors/f;I)B
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->K(Ljava/lang/Object;)B

    move-result p1

    return p1
.end method

.method public final C(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->J(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public D()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->S(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final E(Lkotlinx/serialization/descriptors/f;I)S
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->T(Ljava/lang/Object;)S

    move-result p1

    return p1
.end method

.method public final F(Lkotlinx/serialization/descriptors/f;I)D
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->M(Ljava/lang/Object;)D

    move-result-wide p1

    return-wide p1
.end method

.method public G(Lkotlinx/serialization/a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Le00/e$a;->a(Le00/e;Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final H()B
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->K(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method protected I(Lkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p2, "deserializer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->G(Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected J(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected K(Ljava/lang/Object;)B
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method protected L(Ljava/lang/Object;)C
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Char"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method protected M(Ljava/lang/Object;)D
    .locals 2

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method protected N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected O(Ljava/lang/Object;)F
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method protected P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/e;
    .locals 1

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->Z(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected Q(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected R(Ljava/lang/Object;)J
    .locals 2

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected S(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected T(Ljava/lang/Object;)S
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Short"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected U(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected V(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Lkotlinx/serialization/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t retrieve untyped values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final W()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;
.end method

.method protected final Y()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlinx/serialization/internal/TaggedDecoder;->b:Z

    return-object v0
.end method

.method protected final Z(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Lf00/c;
    .locals 1

    invoke-static {}, Lf00/d;->a()Lf00/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lkotlinx/serialization/descriptors/f;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)I

    move-result p1

    return p1
.end method

.method public final f(Lkotlinx/serialization/descriptors/f;I)J
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->R(Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->Q(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(Lkotlinx/serialization/descriptors/f;I)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->Q(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final j()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Lkotlinx/serialization/descriptors/f;)I
    .locals 0

    invoke-static {p0, p1}, Le00/c$a;->a(Le00/c;Lkotlinx/serialization/descriptors/f;)I

    move-result p1

    return p1
.end method

.method public final l()J
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->R(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->U(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;-><init>(Lkotlinx/serialization/internal/TaggedDecoder;Lkotlinx/serialization/a;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->a0(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p()Z
    .locals 1

    invoke-static {p0}, Le00/c$a;->b(Le00/c;)Z

    move-result v0

    return v0
.end method

.method public final q(Lkotlinx/serialization/descriptors/f;)Le00/e;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/e;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lkotlinx/serialization/descriptors/f;I)Le00/e;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/e;

    move-result-object p1

    return-object p1
.end method

.method public final s()S
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->T(Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public final t()F
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->O(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public final u(Lkotlinx/serialization/descriptors/f;I)F
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->O(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public final v()D
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->M(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->J(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final x()C
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->L(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method public final y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;

    invoke-direct {p2, p0, p3, p4}, Lkotlinx/serialization/internal/TaggedDecoder$decodeSerializableElement$1;-><init>(Lkotlinx/serialization/internal/TaggedDecoder;Lkotlinx/serialization/a;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->a0(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->Y()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedDecoder;->U(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
