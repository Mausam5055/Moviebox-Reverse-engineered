.class public abstract Lkotlinx/serialization/internal/r1;
.super Lkotlinx/serialization/internal/w;


# instance fields
.field private final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/b;)V
    .locals 1

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/w;-><init>(Lkotlinx/serialization/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlinx/serialization/internal/q1;

    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/q1;-><init>(Lkotlinx/serialization/descriptors/f;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/r1;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->o()Lkotlinx/serialization/internal/p1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlinx/serialization/internal/p1;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/r1;->p(Lkotlinx/serialization/internal/p1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lkotlinx/serialization/internal/p1;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/r1;->q(Lkotlinx/serialization/internal/p1;I)V

    return-void
.end method

.method protected final d(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This method lead to boxing and must not be used, use writeContents instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final deserialize(Le00/e;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/a;->f(Le00/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/r1;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/serialization/internal/p1;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/r1;->t(Lkotlinx/serialization/internal/p1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlinx/serialization/internal/p1;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/r1;->s(Lkotlinx/serialization/internal/p1;ILjava/lang/Object;)V

    return-void
.end method

.method protected final o()Lkotlinx/serialization/internal/p1;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/r1;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/internal/p1;

    return-object v0
.end method

.method protected final p(Lkotlinx/serialization/internal/p1;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/internal/p1;->d()I

    move-result p1

    return p1
.end method

.method protected final q(Lkotlinx/serialization/internal/p1;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/p1;->b(I)V

    return-void
.end method

.method protected abstract r()Ljava/lang/Object;
.end method

.method protected final s(Lkotlinx/serialization/internal/p1;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This method lead to boxing and must not be used, use Builder.append instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serialize(Le00/f;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/internal/r1;->b:Lkotlinx/serialization/descriptors/f;

    invoke-interface {p1, v1, v0}, Le00/f;->j(Lkotlinx/serialization/descriptors/f;I)Le00/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/serialization/internal/r1;->u(Le00/d;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method protected final t(Lkotlinx/serialization/internal/p1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/internal/p1;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract u(Le00/d;Ljava/lang/Object;I)V
.end method
