.class public abstract Lkotlinx/serialization/descriptors/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/serialization/descriptors/f;)Lkotlin/reflect/KClass;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/descriptors/c;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/serialization/descriptors/c;

    iget-object p0, p0, Lkotlinx/serialization/descriptors/c;->b:Lkotlin/reflect/KClass;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lkotlinx/serialization/internal/v1;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/serialization/internal/v1;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/v1;->k()Lkotlinx/serialization/descriptors/f;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/b;->a(Lkotlinx/serialization/descriptors/f;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lf00/c;Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/descriptors/f;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/descriptors/b;->a(Lkotlinx/serialization/descriptors/f;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lf00/c;->c(Lf00/c;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final c(Lkotlinx/serialization/descriptors/f;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/descriptors/c;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/descriptors/c;-><init>(Lkotlinx/serialization/descriptors/f;Lkotlin/reflect/KClass;)V

    return-object v0
.end method
