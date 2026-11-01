.class public final Lid/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lid/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iput p1, p0, Lid/b;->a:I

    iput p2, p0, Lid/b;->b:I

    add-int/lit8 p1, p1, 0x1f

    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lid/b;->c:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lid/b;->d:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lid/b;->a:I

    iput p2, p0, Lid/b;->b:I

    iput p3, p0, Lid/b;->c:I

    iput-object p4, p0, Lid/b;->d:[I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lid/b;->b:I

    iget v2, p0, Lid/b;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lid/b;->b:I

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lid/b;->a:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3, v2}, Lid/b;->g(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lid/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lid/b;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lid/b;
    .locals 5

    new-instance v0, Lid/b;

    iget v1, p0, Lid/b;->a:I

    iget v2, p0, Lid/b;->b:I

    iget v3, p0, Lid/b;->c:I

    iget-object v4, p0, Lid/b;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lid/b;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lid/b;->c()Lid/b;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lid/b;->d:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lid/b;->d:[I

    aget v3, v2, v1

    not-int v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lid/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lid/b;

    iget v0, p0, Lid/b;->a:I

    iget v2, p1, Lid/b;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lid/b;->b:I

    iget v2, p1, Lid/b;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lid/b;->c:I

    iget v2, p1, Lid/b;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lid/b;->d:[I

    iget-object p1, p1, Lid/b;->d:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(II)V
    .locals 3

    iget v0, p0, Lid/b;->c:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lid/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public g(II)Z
    .locals 1

    iget v0, p0, Lid/b;->c:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lid/b;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lid/b;->a:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lid/b;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lid/b;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lid/b;->d:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public i()[I
    .locals 5

    iget-object v0, p0, Lid/b;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lid/b;->d:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget v1, p0, Lid/b;->c:I

    div-int v2, v0, v1

    rem-int v1, v0, v1

    mul-int/lit8 v1, v1, 0x20

    iget-object v3, p0, Lid/b;->d:[I

    aget v0, v3, v0

    const/16 v3, 0x1f

    :goto_1
    ushr-int v4, v0, v3

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, v3

    filled-new-array {v1, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 11

    iget v0, p0, Lid/b;->a:I

    iget v1, p0, Lid/b;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    iget v6, p0, Lid/b;->b:I

    if-ge v5, v6, :cond_7

    move v6, v3

    :goto_1
    iget v7, p0, Lid/b;->c:I

    if-ge v6, v7, :cond_6

    iget-object v8, p0, Lid/b;->d:[I

    mul-int/2addr v7, v5

    add-int/2addr v7, v6

    aget v7, v8, v7

    if-eqz v7, :cond_5

    if-ge v5, v1, :cond_0

    move v1, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    mul-int/lit8 v8, v6, 0x20

    if-ge v8, v0, :cond_3

    move v9, v3

    :goto_2
    rsub-int/lit8 v10, v9, 0x1f

    shl-int v10, v7, v10

    if-nez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v9, v8

    if-ge v9, v0, :cond_3

    move v0, v9

    :cond_3
    add-int/lit8 v9, v8, 0x1f

    if-le v9, v2, :cond_5

    const/16 v9, 0x1f

    :goto_3
    ushr-int v10, v7, v9

    if-nez v10, :cond_4

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v8, v9

    if-le v8, v2, :cond_5

    move v2, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    if-lt v2, v0, :cond_9

    if-ge v4, v1, :cond_8

    goto :goto_4

    :cond_8
    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v0

    return-object v0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lid/b;->b:I

    return v0
.end method

.method public l(ILid/a;)Lid/a;
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lid/a;->m()I

    move-result v0

    iget v1, p0, Lid/b;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lid/a;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lid/a;

    iget v0, p0, Lid/b;->a:I

    invoke-direct {p2, v0}, Lid/a;-><init>(I)V

    :goto_1
    iget v0, p0, Lid/b;->c:I

    mul-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lid/b;->c:I

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x20

    iget-object v2, p0, Lid/b;->d:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    invoke-virtual {p2, v1, v2}, Lid/a;->s(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p2
.end method

.method public m()[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lid/b;->d:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v2

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget v3, p0, Lid/b;->c:I

    div-int v4, v1, v3

    rem-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x20

    aget v1, v2, v1

    :goto_1
    rsub-int/lit8 v2, v0, 0x1f

    shl-int v2, v1, v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v0

    filled-new-array {v3, v4}, [I

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lid/b;->a:I

    return v0
.end method

.method public o(I)V
    .locals 1

    rem-int/lit16 p1, p1, 0x168

    if-eqz p1, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lid/b;->q()V

    invoke-virtual {p0}, Lid/b;->p()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "degrees must be a multiple of 0, 90, 180, or 270"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lid/b;->p()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lid/b;->q()V

    :cond_3
    return-void
.end method

.method public p()V
    .locals 5

    new-instance v0, Lid/a;

    iget v1, p0, Lid/b;->a:I

    invoke-direct {v0, v1}, Lid/a;-><init>(I)V

    new-instance v1, Lid/a;

    iget v2, p0, Lid/b;->a:I

    invoke-direct {v1, v2}, Lid/a;-><init>(I)V

    iget v2, p0, Lid/b;->b:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3, v0}, Lid/b;->l(ILid/a;)Lid/a;

    move-result-object v0

    iget v4, p0, Lid/b;->b:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4, v1}, Lid/b;->l(ILid/a;)Lid/a;

    move-result-object v1

    invoke-virtual {v0}, Lid/a;->q()V

    invoke-virtual {v1}, Lid/a;->q()V

    invoke-virtual {p0, v3, v1}, Lid/b;->t(ILid/a;)V

    invoke-virtual {p0, v4, v0}, Lid/b;->t(ILid/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()V
    .locals 11

    iget v0, p0, Lid/b;->b:I

    iget v1, p0, Lid/b;->a:I

    add-int/lit8 v2, v0, 0x1f

    div-int/lit8 v2, v2, 0x20

    mul-int v3, v2, v1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lid/b;->b:I

    if-ge v5, v6, :cond_2

    move v6, v4

    :goto_1
    iget v7, p0, Lid/b;->a:I

    if-ge v6, v7, :cond_1

    iget v7, p0, Lid/b;->c:I

    mul-int/2addr v7, v5

    div-int/lit8 v8, v6, 0x20

    add-int/2addr v7, v8

    iget-object v8, p0, Lid/b;->d:[I

    aget v7, v8, v7

    and-int/lit8 v8, v6, 0x1f

    ushr-int/2addr v7, v8

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v6

    mul-int/2addr v7, v2

    div-int/lit8 v9, v5, 0x20

    add-int/2addr v7, v9

    aget v9, v3, v7

    and-int/lit8 v10, v5, 0x1f

    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    aput v8, v3, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lid/b;->a:I

    iput v1, p0, Lid/b;->b:I

    iput v2, p0, Lid/b;->c:I

    iput-object v3, p0, Lid/b;->d:[I

    return-void
.end method

.method public r(II)V
    .locals 3

    iget v0, p0, Lid/b;->c:I

    mul-int/2addr p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object v0, p0, Lid/b;->d:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public s(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    iget v1, p0, Lid/b;->b:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lid/b;->a:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    iget v1, p0, Lid/b;->c:I

    mul-int/2addr v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    iget-object v3, p0, Lid/b;->d:[I

    div-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(ILid/a;)V
    .locals 3

    invoke-virtual {p2}, Lid/a;->j()[I

    move-result-object p2

    iget-object v0, p0, Lid/b;->d:[I

    iget v1, p0, Lid/b;->c:I

    mul-int/2addr p1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lid/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
