.class public final Lkotlinx/serialization/internal/v1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/descriptors/f;
.implements Lkotlinx/serialization/internal/n;


# instance fields
.field private final a:Lkotlinx/serialization/descriptors/f;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/f;)V
    .locals 2

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/internal/v1;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlinx/serialization/internal/l1;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/v1;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->c:Ljava/util/Set;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/internal/v1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    check-cast p1, Lkotlinx/serialization/internal/v1;

    iget-object p1, p1, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->g(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isInline()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->isInline()Z

    move-result v0

    return v0
.end method

.method public j(I)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    move-result p1

    return p1
.end method

.method public final k()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/internal/v1;->a:Lkotlinx/serialization/descriptors/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
