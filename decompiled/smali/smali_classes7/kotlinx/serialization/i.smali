.class abstract synthetic Lkotlinx/serialization/i;
.super Ljava/lang/Object;


# direct methods
.method private static final a(Lkotlin/reflect/KClass;Ljava/util/List;Ljava/util/List;)Lkotlinx/serialization/b;
    .locals 4

    const-class v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance p0, Lkotlinx/serialization/internal/f;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    goto/16 :goto_7

    :cond_3
    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lkotlinx/serialization/internal/m0;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/m0;-><init>(Lkotlinx/serialization/b;)V

    goto/16 :goto_7

    :cond_4
    const-class v0, Ljava/util/Set;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    new-instance p0, Lkotlinx/serialization/internal/x0;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/x0;-><init>(Lkotlinx/serialization/b;)V

    goto/16 :goto_7

    :cond_7
    const-class v0, Ljava/util/HashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Lkotlinx/serialization/internal/k0;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/b;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/k0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    goto/16 :goto_7

    :cond_8
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_6

    :cond_a
    const-class v0, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_b

    new-instance p0, Lkotlinx/serialization/internal/v0;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/b;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    goto/16 :goto_7

    :cond_b
    const-class v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/b;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-static {p0, p1}, Ld00/a;->j(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object p0

    goto :goto_7

    :cond_c
    const-class v0, Lkotlin/Pair;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/b;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-static {p0, p1}, Ld00/a;->l(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object p0

    goto :goto_7

    :cond_d
    const-class v0, Lkotlin/Triple;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/b;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/b;

    invoke-static {p0, p1, p2}, Ld00/a;->n(Lkotlinx/serialization/b;Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object p0

    goto :goto_7

    :cond_e
    invoke-static {p0}, Lkotlinx/serialization/internal/k1;->l(Lkotlin/reflect/KClass;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    invoke-interface {p0}, Lkotlin/reflect/KType;->c()Lkotlin/reflect/KClassifier;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/KClass;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/b;

    invoke-static {p0, p1}, Ld00/a;->a(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object p0

    goto :goto_7

    :cond_f
    const/4 p0, 0x0

    :goto_7
    return-object p0
.end method

.method private static final b(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/b;
    .locals 1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/b;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Lkotlinx/serialization/b;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/serialization/b;

    invoke-static {p0, p1}, Lkotlinx/serialization/internal/k1;->d(Lkotlin/reflect/KClass;[Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lkotlinx/serialization/b;Z)Lkotlinx/serialization/b;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Lkotlin/reflect/KClass;Ljava/util/List;Ljava/util/List;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/i;->a(Lkotlin/reflect/KClass;Ljava/util/List;Ljava/util/List;)Lkotlinx/serialization/b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Lkotlinx/serialization/i;->b(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/b;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static final e(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlinx/serialization/i;->f(Lf00/c;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/b;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/internal/l1;->c(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/internal/k1;->m(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private static final f(Lf00/c;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/b;
    .locals 5

    invoke-static {p1}, Lkotlinx/serialization/internal/l1;->c(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/reflect/KType;->a()Z

    move-result v1

    invoke-interface {p1}, Lkotlin/reflect/KType;->h()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v4}, Lkotlin/reflect/KTypeProjection;->a()Lkotlin/reflect/KType;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Star projections in type arguments are not allowed, but had "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {v0, v1}, Lkotlinx/serialization/SerializersCacheKt;->a(Lkotlin/reflect/KClass;Z)Lkotlinx/serialization/b;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v0, v3, v1}, Lkotlinx/serialization/SerializersCacheKt;->b(Lkotlin/reflect/KClass;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_4

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p1, v2

    :cond_3
    check-cast p1, Lkotlinx/serialization/b;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_9

    check-cast p1, Lkotlinx/serialization/b;

    :goto_1
    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p0, v0, v2, p1, v2}, Lf00/c;->c(Lf00/c;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/b;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-static {p0, v3, p2}, Lkotlinx/serialization/h;->e(Lf00/c;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v2

    :cond_7
    invoke-static {v0, v3, p1}, Lkotlinx/serialization/h;->a(Lkotlin/reflect/KClass;Ljava/util/List;Ljava/util/List;)Lkotlinx/serialization/b;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-virtual {p0, v0, p1}, Lf00/c;->b(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/b;

    move-result-object p0

    goto :goto_2

    :cond_8
    move-object p0, p2

    :goto_2
    if-eqz p0, :cond_9

    invoke-static {p0, v1}, Lkotlinx/serialization/i;->c(Lkotlinx/serialization/b;Z)Lkotlinx/serialization/b;

    move-result-object v2

    :cond_9
    return-object v2
.end method

.method public static final g(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkotlinx/serialization/i;->f(Lf00/c;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/b;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/internal/k1;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/internal/t1;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final i(Lf00/c;Ljava/util/List;Z)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KType;

    invoke-static {p0, v0}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KType;

    invoke-static {p0, v0}, Lkotlinx/serialization/h;->c(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2
.end method
