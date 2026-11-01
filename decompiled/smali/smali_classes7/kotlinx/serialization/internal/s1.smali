.class public final Lkotlinx/serialization/internal/s1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/descriptors/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/serialization/descriptors/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/s1;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/descriptors/e;

    return-void
.end method

.method private final a()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Primitive descriptor does not have elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->c(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/internal/s1;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public bridge synthetic d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/s1;->k()Lkotlinx/serialization/descriptors/e;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/s1;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/s1;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/s1;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/s1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isInline()Z
    .locals 1

    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->b(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    return v0
.end method

.method public j(I)Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/s1;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public k()Lkotlinx/serialization/descriptors/e;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/s1;->b:Lkotlinx/serialization/descriptors/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveDescriptor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/s1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
