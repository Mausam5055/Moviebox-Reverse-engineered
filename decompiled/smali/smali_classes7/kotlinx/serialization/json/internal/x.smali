.class public final Lkotlinx/serialization/json/internal/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/x$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    iput v3, p0, Lkotlinx/serialization/json/internal/x;->c:I

    return-void
.end method

.method private final e()V
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/serialization/json/internal/x;->c:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    aget-object v3, v3, v2

    instance-of v4, v3, Lkotlinx/serialization/descriptors/f;

    const-string v5, "]"

    const-string v6, "["

    if-eqz v4, :cond_1

    check-cast v3, Lkotlinx/serialization/descriptors/f;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v4

    sget-object v7, Lkotlinx/serialization/descriptors/i$b;->a:Lkotlinx/serialization/descriptors/i$b;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    aget v4, v4, v2

    if-ltz v4, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlinx/serialization/json/internal/x$a;->a:Lkotlinx/serialization/json/internal/x$a;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()V
    .locals 5

    iget v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    aget v2, v1, v0

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v2, v3, :cond_0

    aput v4, v1, v0

    add-int/2addr v0, v4

    iput v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    if-eq v0, v4, :cond_1

    add-int/2addr v0, v4

    iput v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    :cond_1
    return-void
.end method

.method public final c(Lkotlinx/serialization/descriptors/f;)V
    .locals 2

    const-string v0, "sd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/x;->c:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/x;->e()V

    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/x;->c:I

    aget v0, v0, v1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    sget-object v2, Lkotlinx/serialization/json/internal/x$a;->a:Lkotlinx/serialization/json/internal/x$a;

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/x;->c:I

    aget v0, v0, v1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/x;->c:I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/x;->e()V

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/x;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/serialization/json/internal/x;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    aput v2, p1, v1

    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/x;->b:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/x;->c:I

    aput p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/x;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
