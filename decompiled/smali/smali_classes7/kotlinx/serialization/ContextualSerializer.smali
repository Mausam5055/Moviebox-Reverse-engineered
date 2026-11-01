.class public final Lkotlinx/serialization/ContextualSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# instance fields
.field private final a:Lkotlin/reflect/KClass;

.field private final b:Lkotlinx/serialization/b;

.field private final c:Ljava/util/List;

.field private final d:Lkotlinx/serialization/descriptors/f;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;[Lkotlinx/serialization/b;)V
    .locals 2

    const-string v0, "serializableClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/ContextualSerializer;->a:Lkotlin/reflect/KClass;

    iput-object p2, p0, Lkotlinx/serialization/ContextualSerializer;->b:Lkotlinx/serialization/b;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/ContextualSerializer;->c:Ljava/util/List;

    sget-object p2, Lkotlinx/serialization/descriptors/h$a;->a:Lkotlinx/serialization/descriptors/h$a;

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlinx/serialization/descriptors/f;

    new-instance v0, Lkotlinx/serialization/ContextualSerializer$descriptor$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/ContextualSerializer$descriptor$1;-><init>(Lkotlinx/serialization/ContextualSerializer;)V

    const-string v1, "kotlinx.serialization.ContextualSerializer"

    invoke-static {v1, p2, p3, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/h;[Lkotlinx/serialization/descriptors/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/f;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/serialization/descriptors/b;->c(Lkotlinx/serialization/descriptors/f;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/ContextualSerializer;->d:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/ContextualSerializer;)Lkotlinx/serialization/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/ContextualSerializer;->b:Lkotlinx/serialization/b;

    return-object p0
.end method

.method private final b(Lf00/c;)Lkotlinx/serialization/b;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/ContextualSerializer;->a:Lkotlin/reflect/KClass;

    iget-object v1, p0, Lkotlinx/serialization/ContextualSerializer;->c:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lf00/c;->b(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/b;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lkotlinx/serialization/ContextualSerializer;->b:Lkotlinx/serialization/b;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/ContextualSerializer;->a:Lkotlin/reflect/KClass;

    invoke-static {p1}, Lkotlinx/serialization/internal/l1;->d(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public deserialize(Le00/e;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le00/e;->a()Lf00/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/ContextualSerializer;->b(Lf00/c;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/e;->G(Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/ContextualSerializer;->d:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le00/f;->a()Lf00/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/ContextualSerializer;->b(Lf00/c;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Le00/f;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method
