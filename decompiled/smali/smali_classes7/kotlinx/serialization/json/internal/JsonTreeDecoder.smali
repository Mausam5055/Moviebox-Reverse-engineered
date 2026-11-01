.class Lkotlinx/serialization/json/internal/JsonTreeDecoder;
.super Lkotlinx/serialization/json/internal/c;


# instance fields
.field private final f:Lkotlinx/serialization/json/JsonObject;

.field private final g:Ljava/lang/String;

.field private final h:Lkotlinx/serialization/descriptors/f;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->f:Lkotlinx/serialization/json/JsonObject;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g:Ljava/lang/String;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->h:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method private final x0(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->j:Z

    return p1
.end method

.method private final y0(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->b()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object p2

    sget-object v2, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;

    move-result-object p2

    instance-of p3, p2, Lkotlinx/serialization/json/u;

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lkotlinx/serialization/json/u;

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlinx/serialization/json/j;->f(Lkotlinx/serialization/json/u;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-static {p1, v0, v3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_3

    :goto_1
    return v1
.end method


# virtual methods
.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lkotlinx/serialization/json/internal/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/c;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->h:Lkotlinx/serialization/descriptors/f;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/c;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/f;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->g()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/descriptors/d;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlinx/serialization/internal/s0;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/internal/s0;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/w;->a(Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/u;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->c()Lkotlinx/serialization/json/internal/u$a;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/u;->a(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/u$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/SetsKt;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/w;->g(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method protected c0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;
    .locals 4

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->j()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/json/w;->a(Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/u;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->c()Lkotlinx/serialization/json/internal/u$a;

    move-result-object v2

    new-instance v3, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;

    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder$elementName$alternativeNamesMap$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3}, Lkotlinx/serialization/json/internal/u;->b(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/u$a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method protected g0(Ljava/lang/String;)Lkotlinx/serialization/json/h;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/h;

    return-object p1
.end method

.method public o(Lkotlinx/serialization/descriptors/f;)I
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->e()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/e1;->d0(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->i:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->j:Z

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->x0(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/c;->e:Lkotlinx/serialization/json/f;

    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->y0(Lkotlinx/serialization/descriptors/f;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return v1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic v0()Lkotlinx/serialization/json/h;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->z0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public z0()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeDecoder;->f:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method
