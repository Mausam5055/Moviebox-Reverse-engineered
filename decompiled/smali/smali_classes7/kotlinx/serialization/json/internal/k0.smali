.class public Lkotlinx/serialization/json/internal/k0;
.super Le00/a;

# interfaces
.implements Lkotlinx/serialization/json/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/k0$a;,
        Lkotlinx/serialization/json/internal/k0$b;
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/serialization/json/a;

.field private final b:Lkotlinx/serialization/json/internal/WriteMode;

.field public final c:Lkotlinx/serialization/json/internal/a;

.field private final d:Lf00/c;

.field private e:I

.field private f:Lkotlinx/serialization/json/internal/k0$a;

.field private final g:Lkotlinx/serialization/json/f;

.field private final h:Lkotlinx/serialization/json/internal/JsonElementMarker;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/k0$a;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le00/a;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/k0;->b:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/json/internal/k0;->d:Lf00/c;

    const/4 p2, -0x1

    iput p2, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    iput-object p5, p0, Lkotlinx/serialization/json/internal/k0;->f:Lkotlinx/serialization/json/internal/k0$a;

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {p1}, Lkotlinx/serialization/json/f;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/f;)V

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/k0;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method

.method private final K()V
    .locals 8

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->E()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "Unexpected leading comma"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final L(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->b()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/a;->M()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object p2

    sget-object v2, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v3}, Lkotlinx/serialization/json/f;->l()Z

    move-result v3

    invoke-virtual {p2, v3}, Lkotlinx/serialization/json/internal/a;->F(Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {p1, v0, p2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    :goto_0
    return v1
.end method

.method private final M()I
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->L()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->f()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Expected end of the array or comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    :goto_1
    return v2

    :cond_3
    iget-object v3, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Unexpected trailing comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final N()I
    .locals 11

    iget v0, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->L()Z

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/internal/a;->o(C)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    iget v0, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    if-ne v0, v4, :cond_4

    iget-object v5, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-static {v5}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/json/internal/a;)I

    move-result v7

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "Unexpected trailing comma"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-static {v1}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/json/internal/a;)I

    move-result v0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Expected comma after the key-value pair"

    const/4 v4, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_6
    :goto_2
    iget v0, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/k0;->e:I

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    :goto_3
    return v4

    :cond_8
    iget-object v5, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Expected \'}\', but had \',\' instead"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final O(Lkotlinx/serialization/descriptors/f;)I
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->L()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/k0;->P()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/a;->o(C)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/k0;->L(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->L()Z

    move-result v1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/JsonElementMarker;->c(I)V

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_1
    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/k0;->Q(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_6

    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonElementMarker;->d()I

    move-result p1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    :goto_2
    return p1

    :cond_6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected trailing comma"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final Q(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->f:Lkotlinx/serialization/json/internal/k0$a;

    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/k0;->S(Lkotlinx/serialization/json/internal/k0$a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/a;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/a;->H(Z)V

    :goto_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/a;->L()Z

    move-result p1

    return p1
.end method

.method private final R(Lkotlinx/serialization/descriptors/f;)V
    .locals 2

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/k0;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void
.end method

.method private final S(Lkotlinx/serialization/json/internal/k0$a;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lkotlinx/serialization/json/internal/k0$a;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p1, Lkotlinx/serialization/json/internal/k0$a;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public D()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonElementMarker;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public G(Lkotlinx/serialization/a;)Ljava/lang/Object;
    .locals 4

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/i0;->c(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->l()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/json/internal/a;->l(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/internal/b;

    invoke-virtual {v2, p0, v1}, Lkotlinx/serialization/internal/b;->c(Le00/c;Ljava/lang/String;)Lkotlinx/serialization/a;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/i0;->d(Lkotlinx/serialization/json/g;Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lkotlinx/serialization/json/internal/k0$a;

    invoke-direct {p1, v0}, Lkotlinx/serialization/json/internal/k0$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/k0;->f:Lkotlinx/serialization/json/internal/k0$a;

    invoke-interface {v1, p0}, Lkotlinx/serialization/a;->deserialize(Le00/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/a;->deserialize(Le00/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    new-instance v0, Lkotlinx/serialization/MissingFieldException;

    invoke-virtual {p1}, Lkotlinx/serialization/MissingFieldException;->getMissingFields()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v3, v3, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public H()B
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse byte for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public a()Lf00/c;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->d:Lf00/c;

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/c;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/q0;->b(Lkotlinx/serialization/json/a;Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/x;->c(Lkotlinx/serialization/descriptors/f;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-char v1, v3, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/a;->o(C)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/k0;->K()V

    sget-object v0, Lkotlinx/serialization/json/internal/k0$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->b:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/k0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/k0;->f:Lkotlinx/serialization/json/internal/k0$a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/k0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/k0$a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/json/internal/k0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/k0;->f:Lkotlinx/serialization/json/internal/k0$a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/k0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/k0$a;)V

    :goto_0
    return-object v0
.end method

.method public c(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/k0;->R(Lkotlinx/serialization/descriptors/f;)V

    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->b:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/a;->o(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object p1, p1, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/x;->b()V

    return-void
.end method

.method public final d()Lkotlinx/serialization/json/a;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    return-object v0
.end method

.method public e(Lkotlinx/serialization/descriptors/f;)I
    .locals 4

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/k0;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v3, v3, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->e(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public g()Lkotlinx/serialization/json/h;
    .locals 3

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/f;Lkotlinx/serialization/json/internal/a;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->e()Lkotlinx/serialization/json/h;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse int for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public j()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public o(Lkotlinx/serialization/descriptors/f;)I
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/k0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/k0;->M()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/k0;->O(Lkotlinx/serialization/descriptors/f;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/k0;->N()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/x;->g(I)V

    :cond_2
    return p1
.end method

.method public q(Lkotlinx/serialization/descriptors/f;)Le00/e;
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/m0;->a(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lkotlinx/serialization/json/internal/v;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

    invoke-direct {p1, v0, v1}, Lkotlinx/serialization/json/internal/v;-><init>(Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/json/a;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Le00/a;->q(Lkotlinx/serialization/descriptors/f;)Le00/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public s()S
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse short for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public t()F
    .locals 6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

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
    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/w;->j(Lkotlinx/serialization/json/internal/a;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public v()D
    .locals 6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->a:Lkotlinx/serialization/json/a;

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
    iget-object v2, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/w;->j(Lkotlinx/serialization/json/internal/a;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->i()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->g()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public x()C
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected single char, but got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/x;->d()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Le00/a;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object p2, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    iget-object p2, p2, Lkotlinx/serialization/json/internal/a;->b:Lkotlinx/serialization/json/internal/x;

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/x;->f(Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->g:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k0;->c:Lkotlinx/serialization/json/internal/a;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
