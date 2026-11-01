.class public final Lkotlinx/serialization/internal/h1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# instance fields
.field private final a:Lkotlinx/serialization/b;

.field private final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/b;)V
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/h1;->a:Lkotlinx/serialization/b;

    new-instance v0, Lkotlinx/serialization/internal/v1;

    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/v1;-><init>(Lkotlinx/serialization/descriptors/f;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/h1;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method


# virtual methods
.method public deserialize(Le00/e;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le00/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/h1;->a:Lkotlinx/serialization/b;

    invoke-interface {p1, v0}, Le00/e;->G(Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Le00/e;->j()Ljava/lang/Void;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lkotlinx/serialization/internal/h1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkotlinx/serialization/internal/h1;

    iget-object v2, p0, Lkotlinx/serialization/internal/h1;->a:Lkotlinx/serialization/b;

    iget-object p1, p1, Lkotlinx/serialization/internal/h1;->a:Lkotlinx/serialization/b;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/h1;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/h1;->a:Lkotlinx/serialization/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Le00/f;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Le00/f;->v()V

    iget-object v0, p0, Lkotlinx/serialization/internal/h1;->a:Lkotlinx/serialization/b;

    invoke-interface {p1, v0, p2}, Le00/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Le00/f;->o()V

    :goto_0
    return-void
.end method
