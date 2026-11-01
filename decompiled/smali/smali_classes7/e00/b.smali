.class public abstract Le00/b;
.super Ljava/lang/Object;

# interfaces
.implements Le00/f;
.implements Le00/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Le00/b;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final D(Lkotlinx/serialization/descriptors/f;IS)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->q(S)V

    :cond_0
    return-void
.end method

.method public final E(Lkotlinx/serialization/descriptors/f;ID)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Le00/b;->g(D)V

    :cond_0
    return-void
.end method

.method public final F(Lkotlinx/serialization/descriptors/f;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Le00/b;->m(J)V

    :cond_0
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public H(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public I(Lkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le00/f$a;->c(Le00/f;Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method

.method public J(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-serializable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " encoder"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/d;
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

.method public e(Lkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le00/f$a;->d(Le00/f;Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lkotlinx/serialization/descriptors/f;I)Le00/f;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->l(Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlinx/serialization/internal/g1;->a:Lkotlinx/serialization/internal/g1;

    :goto_0
    return-object p1
.end method

.method public g(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public h(B)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Le00/b;->I(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public j(Lkotlinx/serialization/descriptors/f;I)Le00/d;
    .locals 0

    invoke-static {p0, p1, p2}, Le00/f$a;->a(Le00/f;Lkotlinx/serialization/descriptors/f;I)Le00/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Lkotlinx/serialization/descriptors/f;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public l(Lkotlinx/serialization/descriptors/f;)Le00/f;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public m(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lkotlinx/serialization/descriptors/f;IC)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->u(C)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v1, "\'null\' is not supported by default"

    invoke-direct {v0, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Lkotlinx/serialization/descriptors/f;IB)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->h(B)V

    :cond_0
    return-void
.end method

.method public q(S)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lkotlinx/serialization/descriptors/f;IF)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->t(F)V

    :cond_0
    return-void
.end method

.method public t(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public u(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Le00/b;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public v()V
    .locals 0

    invoke-static {p0}, Le00/f$a;->b(Le00/f;)V

    return-void
.end method

.method public final w(Lkotlinx/serialization/descriptors/f;II)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->B(I)V

    :cond_0
    return-void
.end method

.method public final x(Lkotlinx/serialization/descriptors/f;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->r(Z)V

    :cond_0
    return-void
.end method

.method public final y(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le00/b;->H(Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Le00/b;->G(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le00/d$a;->a(Le00/d;Lkotlinx/serialization/descriptors/f;I)Z

    move-result p1

    return p1
.end method
