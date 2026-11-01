.class public abstract Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Lkotlinx/serialization/descriptors/f;)Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->b(Lkotlinx/serialization/descriptors/f;)Z

    move-result p0

    return p0
.end method

.method private static final b(Lkotlinx/serialization/descriptors/f;)Z
    .locals 1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/descriptors/e;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object p0

    sget-object v0, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final c(Lkotlinx/serialization/json/a;Ljava/lang/Object;Lkotlinx/serialization/g;)Lkotlinx/serialization/json/h;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lkotlinx/serialization/json/internal/c0;

    new-instance v2, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt$writeJson$encoder$1;

    invoke-direct {v2, v0}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt$writeJson$encoder$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/c0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "result"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lkotlinx/serialization/json/h;

    :goto_0
    return-object p0
.end method
