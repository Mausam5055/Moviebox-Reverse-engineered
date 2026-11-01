.class public abstract Ld00/a;
.super Ljava/lang/Object;


# direct methods
.method public static final A(Lkotlin/jvm/internal/CharCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/r;->a:Lkotlinx/serialization/internal/r;

    return-object p0
.end method

.method public static final B(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/c0;->a:Lkotlinx/serialization/internal/c0;

    return-object p0
.end method

.method public static final C(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    return-object p0
.end method

.method public static final D(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    return-object p0
.end method

.method public static final E(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    return-object p0
.end method

.method public static final F(Lkotlin/jvm/internal/ShortCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/a2;->a:Lkotlinx/serialization/internal/a2;

    return-object p0
.end method

.method public static final G(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    return-object p0
.end method

.method public static final H(Lkotlin/time/Duration$Companion;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/d0;->a:Lkotlinx/serialization/internal/d0;

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "kClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/u1;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/u1;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public static final b()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/h;->c:Lkotlinx/serialization/internal/h;

    return-object v0
.end method

.method public static final c()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/k;->c:Lkotlinx/serialization/internal/k;

    return-object v0
.end method

.method public static final d()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/q;->c:Lkotlinx/serialization/internal/q;

    return-object v0
.end method

.method public static final e()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/b0;->c:Lkotlinx/serialization/internal/b0;

    return-object v0
.end method

.method public static final f()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/g0;->c:Lkotlinx/serialization/internal/g0;

    return-object v0
.end method

.method public static final g()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/q0;->c:Lkotlinx/serialization/internal/q0;

    return-object v0
.end method

.method public static final h(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/f;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public static final i()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/a1;->c:Lkotlinx/serialization/internal/a1;

    return-object v0
.end method

.method public static final j(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/MapEntrySerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public static final k(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/v0;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public static final l(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/PairSerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public static final m()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/z1;->c:Lkotlinx/serialization/internal/z1;

    return-object v0
.end method

.method public static final n(Lkotlinx/serialization/b;Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "aSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/TripleSerializer;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/serialization/internal/TripleSerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    return-object v0
.end method

.method public static final o()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/f2;->c:Lkotlinx/serialization/internal/f2;

    return-object v0
.end method

.method public static final p()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/i2;->c:Lkotlinx/serialization/internal/i2;

    return-object v0
.end method

.method public static final q()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/l2;->c:Lkotlinx/serialization/internal/l2;

    return-object v0
.end method

.method public static final r()Lkotlinx/serialization/b;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/o2;->c:Lkotlinx/serialization/internal/o2;

    return-object v0
.end method

.method public static final s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/h1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/h1;-><init>(Lkotlinx/serialization/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final t(Lkotlin/UByte$Companion;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/g2;->a:Lkotlinx/serialization/internal/g2;

    return-object p0
.end method

.method public static final u(Lkotlin/UInt$Companion;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/j2;->a:Lkotlinx/serialization/internal/j2;

    return-object p0
.end method

.method public static final v(Lkotlin/ULong$Companion;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/m2;->a:Lkotlinx/serialization/internal/m2;

    return-object p0
.end method

.method public static final w(Lkotlin/UShort$Companion;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/p2;->a:Lkotlinx/serialization/internal/p2;

    return-object p0
.end method

.method public static final x(Lkotlin/Unit;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/q2;->b:Lkotlinx/serialization/internal/q2;

    return-object p0
.end method

.method public static final y(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    return-object p0
.end method

.method public static final z(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlinx/serialization/internal/l;->a:Lkotlinx/serialization/internal/l;

    return-object p0
.end method
