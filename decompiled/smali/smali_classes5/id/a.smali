.class public final Lid/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[I


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lid/a;->c:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lid/a;->b:I

    sget-object v0, Lid/a;->c:[I

    iput-object v0, p0, Lid/a;->a:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lid/a;->b:I

    invoke-static {p1}, Lid/a;->p(I)[I

    move-result-object p1

    iput-object p1, p0, Lid/a;->a:[I

    return-void
.end method

.method constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/a;->a:[I

    iput p2, p0, Lid/a;->b:I

    return-void
.end method

.method private g(I)V
    .locals 3

    iget-object v0, p0, Lid/a;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    if-le p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lid/a;->p(I)[I

    move-result-object p1

    iget-object v0, p0, Lid/a;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lid/a;->a:[I

    :cond_0
    return-void
.end method

.method private static p(I)[I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    div-int/lit8 p0, p0, 0x20

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget v0, p0, Lid/a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lid/a;->g(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lid/a;->a:[I

    iget v0, p0, Lid/a;->b:I

    div-int/lit8 v2, v0, 0x20

    aget v3, p1, v2

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    or-int/2addr v0, v3

    aput v0, p1, v2

    :cond_0
    iget p1, p0, Lid/a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lid/a;->b:I

    return-void
.end method

.method public b(Lid/a;)V
    .locals 3

    iget v0, p1, Lid/a;->b:I

    iget v1, p0, Lid/a;->b:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lid/a;->g(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lid/a;->i(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lid/a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 6

    if-ltz p2, :cond_2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2

    iget v0, p0, Lid/a;->b:I

    add-int v1, v0, p2

    invoke-direct {p0, v1}, Lid/a;->g(I)V

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_1

    shl-int v2, v1, p2

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lid/a;->a:[I

    div-int/lit8 v3, v0, 0x20

    aget v4, v2, v3

    and-int/lit8 v5, v0, 0x1f

    shl-int v5, v1, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lid/a;->b:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lid/a;->f()Lid/a;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lid/a;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lid/a;->a:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lid/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lid/a;

    iget v0, p0, Lid/a;->b:I

    iget v2, p1, Lid/a;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lid/a;->a:[I

    iget-object p1, p1, Lid/a;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Lid/a;
    .locals 3

    new-instance v0, Lid/a;

    iget-object v1, p0, Lid/a;->a:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lid/a;->b:I

    invoke-direct {v0, v1, v2}, Lid/a;-><init>([II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lid/a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lid/a;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(I)Z
    .locals 2

    iget-object v0, p0, Lid/a;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lid/a;->a:[I

    return-object v0
.end method

.method public k(I)I
    .locals 3

    iget v0, p0, Lid/a;->b:I

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    div-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lid/a;->a:[I

    aget v1, v1, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    neg-int p1, p1

    and-int/2addr p1, v1

    :goto_0
    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lid/a;->a:[I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    iget p1, p0, Lid/a;->b:I

    return p1

    :cond_1
    aget p1, p1, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lid/a;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public l(I)I
    .locals 3

    iget v0, p0, Lid/a;->b:I

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    div-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lid/a;->a:[I

    aget v1, v1, v0

    not-int v1, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    neg-int p1, p1

    and-int/2addr p1, v1

    :goto_0
    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lid/a;->a:[I

    array-length v1, p1

    if-ne v0, v1, :cond_1

    iget p1, p0, Lid/a;->b:I

    return p1

    :cond_1
    aget p1, p1, v0

    not-int p1, p1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lid/a;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lid/a;->b:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lid/a;->b:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public o(IIZ)Z
    .locals 8

    if-lt p2, p1, :cond_6

    if-ltz p1, :cond_6

    iget v0, p0, Lid/a;->b:I

    if-gt p2, v0, :cond_6

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    div-int/lit8 v1, p1, 0x20

    div-int/lit8 v2, p2, 0x20

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_5

    const/16 v4, 0x1f

    const/4 v5, 0x0

    if-le v3, v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    and-int/lit8 v6, p1, 0x1f

    :goto_1
    if-ge v3, v2, :cond_2

    goto :goto_2

    :cond_2
    and-int/2addr v4, p2

    :goto_2
    const/4 v7, 0x2

    shl-int v4, v7, v4

    shl-int v6, v0, v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lid/a;->a:[I

    aget v6, v6, v3

    and-int/2addr v6, v4

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    if-eq v6, v4, :cond_4

    return v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public q()V
    .locals 8

    iget-object v0, p0, Lid/a;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget v1, p0, Lid/a;->b:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x20

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    sub-int v6, v1, v5

    iget-object v7, p0, Lid/a;->a:[I

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->reverse(I)I

    move-result v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lid/a;->b:I

    mul-int/lit8 v6, v3, 0x20

    if-eq v5, v6, :cond_2

    sub-int/2addr v6, v5

    aget v4, v0, v4

    ushr-int/2addr v4, v6

    :goto_1
    if-ge v2, v3, :cond_1

    aget v5, v0, v2

    rsub-int/lit8 v7, v6, 0x20

    shl-int v7, v5, v7

    or-int/2addr v4, v7

    add-int/lit8 v7, v2, -0x1

    aput v4, v0, v7

    ushr-int v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aput v4, v0, v1

    :cond_2
    iput-object v0, p0, Lid/a;->a:[I

    return-void
.end method

.method public r(I)V
    .locals 4

    iget-object v0, p0, Lid/a;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public s(II)V
    .locals 1

    iget-object v0, p0, Lid/a;->a:[I

    div-int/lit8 p1, p1, 0x20

    aput p2, v0, p1

    return-void
.end method

.method public t(I[BII)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    move v2, v0

    move v3, v2

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, p1}, Lid/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v2, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int v2, p3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lid/a;->b:I

    div-int/lit8 v2, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lid/a;->b:I

    if-ge v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Lid/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lid/a;)V
    .locals 4

    iget v0, p0, Lid/a;->b:I

    iget v1, p1, Lid/a;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lid/a;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v2, v1, v0

    iget-object v3, p1, Lid/a;->a:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
