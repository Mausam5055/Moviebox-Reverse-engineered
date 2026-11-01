.class public abstract Lkotlinx/serialization/SerializersCacheKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlinx/serialization/internal/x1;

.field private static final b:Lkotlinx/serialization/internal/x1;

.field private static final c:Lkotlinx/serialization/internal/j1;

.field private static final d:Lkotlinx/serialization/internal/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE$1;

    invoke-static {v0}, Lkotlinx/serialization/internal/o;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/internal/x1;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->a:Lkotlinx/serialization/internal/x1;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1;

    invoke-static {v0}, Lkotlinx/serialization/internal/o;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/internal/x1;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->b:Lkotlinx/serialization/internal/x1;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1;

    invoke-static {v0}, Lkotlinx/serialization/internal/o;->b(Lkotlin/jvm/functions/Function2;)Lkotlinx/serialization/internal/j1;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->c:Lkotlinx/serialization/internal/j1;

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;->INSTANCE:Lkotlinx/serialization/SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1;

    invoke-static {v0}, Lkotlinx/serialization/internal/o;->b(Lkotlin/jvm/functions/Function2;)Lkotlinx/serialization/internal/j1;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->d:Lkotlinx/serialization/internal/j1;

    return-void
.end method

.method public static final a(Lkotlin/reflect/KClass;Z)Lkotlinx/serialization/b;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->a:Lkotlinx/serialization/internal/x1;

    invoke-interface {p1, p0}, Lkotlinx/serialization/internal/x1;->a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->b:Lkotlinx/serialization/internal/x1;

    invoke-interface {p1, p0}, Lkotlinx/serialization/internal/x1;->a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Lkotlin/reflect/KClass;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p2, Lkotlinx/serialization/SerializersCacheKt;->c:Lkotlinx/serialization/internal/j1;

    invoke-interface {p2, p0, p1}, Lkotlinx/serialization/internal/j1;->a(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p2, Lkotlinx/serialization/SerializersCacheKt;->d:Lkotlinx/serialization/internal/j1;

    invoke-interface {p2, p0, p1}, Lkotlinx/serialization/internal/j1;->a(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
