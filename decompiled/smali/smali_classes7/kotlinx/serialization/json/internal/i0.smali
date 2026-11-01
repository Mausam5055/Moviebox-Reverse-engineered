.class public abstract Lkotlinx/serialization/json/internal/i0;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Lkotlinx/serialization/g;Lkotlinx/serialization/g;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/i0;->f(Lkotlinx/serialization/g;Lkotlinx/serialization/g;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lkotlinx/serialization/descriptors/h;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlinx/serialization/descriptors/h$b;

    if-nez v0, :cond_2

    instance-of v0, p0, Lkotlinx/serialization/descriptors/e;

    if-nez v0, :cond_1

    instance-of p0, p0, Lkotlinx/serialization/descriptors/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->getAnnotations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    instance-of v1, v0, Lkotlinx/serialization/json/e;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/serialization/json/e;

    invoke-interface {v0}, Lkotlinx/serialization/json/e;->discriminator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/f;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlinx/serialization/json/g;Lkotlinx/serialization/a;)Ljava/lang/Object;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lkotlinx/serialization/json/g;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p0}, Lkotlinx/serialization/json/g;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/i0;->c(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lkotlinx/serialization/json/g;->g()Lkotlinx/serialization/json/h;

    move-result-object v1

    invoke-interface {p1}, Lkotlinx/serialization/a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v2

    instance-of v3, v1, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_3

    check-cast v1, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/h;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlinx/serialization/json/j;->l(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/u;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlinx/serialization/json/u;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast p1, Lkotlinx/serialization/internal/b;

    invoke-virtual {p1, p0, v2}, Lkotlinx/serialization/internal/b;->c(Le00/c;Ljava/lang/String;)Lkotlinx/serialization/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lkotlinx/serialization/json/g;->d()Lkotlinx/serialization/json/a;

    move-result-object p0

    invoke-static {p0, v0, v1, p1}, Lkotlinx/serialization/json/internal/p0;->b(Lkotlinx/serialization/json/a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v2, v1}, Lkotlinx/serialization/json/internal/i0;->e(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/w;->e(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/a;->deserialize(Le00/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Void;
    .locals 2

    const-string v0, "jsonTree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "missing class discriminator (\'null\')"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class discriminator \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Polymorphic serializer was not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lkotlinx/serialization/json/internal/w;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method private static final f(Lkotlinx/serialization/g;Lkotlinx/serialization/g;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
