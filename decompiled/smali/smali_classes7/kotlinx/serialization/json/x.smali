.class public abstract Lkotlinx/serialization/json/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# instance fields
.field private final tSerializer:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/b;)V
    .locals 1

    const-string v0, "tSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    return-void
.end method


# virtual methods
.method public final deserialize(Le00/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le00/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->d(Le00/e;)Lkotlinx/serialization/json/g;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/json/g;->g()Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/json/g;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    iget-object v1, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/x;->transformDeserialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/a;->d(Lkotlinx/serialization/a;Lkotlinx/serialization/json/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Le00/f;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le00/f;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/k;->e(Le00/f;)Lkotlinx/serialization/json/l;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/json/l;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    invoke-static {v0, p2, v1}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->c(Lkotlinx/serialization/json/a;Ljava/lang/Object;Lkotlinx/serialization/g;)Lkotlinx/serialization/json/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/x;->transformSerialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/l;->A(Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method protected abstract transformDeserialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;
.end method

.method protected transformSerialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
