.class abstract Lkotlinx/serialization/json/internal/c;
.super Lkotlinx/serialization/internal/e1;

# interfaces
.implements Lkotlinx/serialization/json/g;


# instance fields
.field private final c:Lkotlinx/serialization/json/a;

.field private final d:Lkotlinx/serialization/json/h;

.field protected final e:Lkotlinx/serialization/json/f;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/e1;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/c;->c:Lkotlinx/serialization/json/a;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/c;->d:Lkotlinx/serialization/json/h;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method private final f0(Lkotlinx/serialization/json/u;Ljava/lang/String;)Lkotlinx/serialization/json/o;
    .locals 1

    instance-of v0, p1, Lkotlinx/serialization/json/o;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/o;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected \'null\' when "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was expected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2, p1}, Lkotlinx/serialization/json/internal/w;->e(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method private final h0()Lkotlinx/serialization/json/h;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->W()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/c;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->v0()Lkotlinx/serialization/json/h;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final w0(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, p1, v0}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public D()Z
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/json/JsonNull;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public G(Lkotlinx/serialization/a;)Ljava/lang/Object;
    .locals 1

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/i0;->d(Lkotlinx/serialization/json/g;Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->i0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic K(Ljava/lang/Object;)B
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->j0(Ljava/lang/String;)B

    move-result p1

    return p1
.end method

.method public bridge synthetic L(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->k0(Ljava/lang/String;)C

    move-result p1

    return p1
.end method

.method public bridge synthetic M(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->l0(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic N(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/c;->m0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic O(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->n0(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/e;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/c;->o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)Le00/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Q(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->p0(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic R(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->q0(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic S(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->r0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic T(Ljava/lang/Object;)S
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->s0(Ljava/lang/String;)S

    move-result p1

    return p1
.end method

.method public bridge synthetic U(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->t0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Lf00/c;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/c;
    .locals 11

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/i$b;->a:Lkotlinx/serialization/descriptors/i$b;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lkotlinx/serialization/descriptors/d;

    :goto_0
    const-class v3, Lkotlinx/serialization/json/b;

    const-string v4, ", but had "

    const-string v5, " as the serialized body of "

    const-string v6, "Expected "

    const/4 v7, -0x1

    if-eqz v2, :cond_2

    new-instance v1, Lkotlinx/serialization/json/internal/d0;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v2

    instance-of v8, v0, Lkotlinx/serialization/json/b;

    if-eqz v8, :cond_1

    check-cast v0, Lkotlinx/serialization/json/b;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/d0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/b;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lkotlinx/serialization/json/internal/w;->e(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_2
    sget-object v2, Lkotlinx/serialization/descriptors/i$c;->a:Lkotlinx/serialization/descriptors/i$c;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object v8

    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlinx/serialization/json/internal/q0;->a(Lkotlinx/serialization/descriptors/f;Lf00/c;)Lkotlinx/serialization/descriptors/f;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v9

    instance-of v10, v9, Lkotlinx/serialization/descriptors/e;

    if-nez v10, :cond_6

    sget-object v10, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lkotlinx/serialization/json/internal/d0;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v2

    instance-of v8, v0, Lkotlinx/serialization/json/b;

    if-eqz v8, :cond_4

    check-cast v0, Lkotlinx/serialization/json/b;

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/d0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/b;)V

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lkotlinx/serialization/json/internal/w;->e(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {v8}, Lkotlinx/serialization/json/internal/w;->d(Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_1
    new-instance v1, Lkotlinx/serialization/json/internal/f0;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v3

    instance-of v8, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v8, :cond_7

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v1, v3, v0}, Lkotlinx/serialization/json/internal/f0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lkotlinx/serialization/json/internal/w;->e(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_8
    new-instance v8, Lkotlinx/serialization/json/internal/JsonTreeDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    instance-of v3, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_9

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v8

    :goto_2
    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lkotlinx/serialization/json/internal/w;->e(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method protected b0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "parentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "childName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public c(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lkotlinx/serialization/json/a;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->c:Lkotlinx/serialization/json/a;

    return-object v0
.end method

.method public g()Lkotlinx/serialization/json/h;
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;
.end method

.method protected i0(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->l()Z

    move-result v1

    const-string v2, "boolean"

    if-nez v1, :cond_1

    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/c;->f0(Lkotlinx/serialization/json/u;Ljava/lang/String;)Lkotlinx/serialization/json/o;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/o;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boolean literal for key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, p1, v0}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lkotlinx/serialization/json/j;->e(Lkotlinx/serialization/json/u;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected j0(Ljava/lang/String;)B
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    const-string v0, "byte"

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/j;->j(Lkotlinx/serialization/json/u;)I

    move-result p1

    const/16 v1, -0x80

    if-gt v1, p1, :cond_0

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    return p1

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected k0(Ljava/lang/String;)C
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->x1(Ljava/lang/CharSequence;)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "char"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected l0(Ljava/lang/String;)D
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lkotlinx/serialization/json/j;->g(Lkotlinx/serialization/json/u;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/serialization/json/internal/w;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    const-string p1, "double"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected m0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)I
    .locals 7

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v2

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->f(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected n0(Ljava/lang/String;)F
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lkotlinx/serialization/json/j;->i(Lkotlinx/serialization/json/u;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/serialization/json/internal/w;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return v0

    :catch_0
    const-string p1, "float"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)Le00/e;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/internal/m0;->a(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lkotlinx/serialization/json/internal/v;

    new-instance v0, Lkotlinx/serialization/json/internal/n0;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/n0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lkotlinx/serialization/json/internal/v;-><init>(Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/json/a;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedDecoder;->P(Ljava/lang/Object;Lkotlinx/serialization/descriptors/f;)Le00/e;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected p0(Ljava/lang/String;)I
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/j;->j(Lkotlinx/serialization/json/u;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "int"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected q0(Ljava/lang/String;)J
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/j;->m(Lkotlinx/serialization/json/u;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string p1, "long"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected r0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    move-result-object p1

    sget-object v0, Lkotlinx/serialization/json/JsonNull;->c:Lkotlinx/serialization/json/JsonNull;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected s0(Ljava/lang/String;)S
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object p1

    const-string v0, "short"

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/j;->j(Lkotlinx/serialization/json/u;)I

    move-result p1

    const/16 v1, -0x8000

    if-gt v1, p1, :cond_0

    const/16 v1, 0x7fff

    if-gt p1, v1, :cond_0

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/c;->w0(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected t0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->l()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v1, "string"

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/json/internal/c;->f0(Lkotlinx/serialization/json/u;Ljava/lang/String;)Lkotlinx/serialization/json/o;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/o;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String literal for key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    instance-of p1, v0, Lkotlinx/serialization/json/JsonNull;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected \'null\' value instead of string literal"

    invoke-static {v2, v0, p1}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method protected final u0(Ljava/lang/String;)Lkotlinx/serialization/json/u;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/c;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/u;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/u;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JsonPrimitive at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/c;->h0()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, p1, v0}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method public abstract v0()Lkotlinx/serialization/json/h;
.end method
