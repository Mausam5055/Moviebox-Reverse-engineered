.class public final Landroidx/media3/common/util/w;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroidx/media3/common/util/w;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    if-nez p1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v1

    :cond_2
    iput v0, p0, Landroidx/media3/common/util/w;->a:I

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/common/util/w;->b:I

    iput v0, p0, Landroidx/media3/common/util/w;->c:I

    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/media3/common/util/w;->d:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/common/util/w;->e:I

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/common/util/w;->d:[J

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    new-array v1, v1, [J

    array-length v2, v0

    iget v3, p0, Landroidx/media3/common/util/w;->a:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/media3/common/util/w;->d:[J

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Landroidx/media3/common/util/w;->a:I

    iget v0, p0, Landroidx/media3/common/util/w;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/common/util/w;->b:I

    iput-object v1, p0, Landroidx/media3/common/util/w;->d:[J

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/common/util/w;->e:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/w;->c:I

    iget-object v1, p0, Landroidx/media3/common/util/w;->d:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/common/util/w;->c()V

    :cond_0
    iget v0, p0, Landroidx/media3/common/util/w;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/media3/common/util/w;->e:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/util/w;->b:I

    iget-object v1, p0, Landroidx/media3/common/util/w;->d:[J

    aput-wide p1, v1, v0

    iget p1, p0, Landroidx/media3/common/util/w;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/common/util/w;->c:I

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/w;->a:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/common/util/w;->b:I

    iput v0, p0, Landroidx/media3/common/util/w;->c:I

    return-void
.end method

.method public d()J
    .locals 3

    iget v0, p0, Landroidx/media3/common/util/w;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/util/w;->d:[J

    iget v1, p0, Landroidx/media3/common/util/w;->a:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/w;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 5

    iget v0, p0, Landroidx/media3/common/util/w;->c:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/common/util/w;->d:[J

    iget v2, p0, Landroidx/media3/common/util/w;->a:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Landroidx/media3/common/util/w;->e:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/util/w;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/common/util/w;->c:I

    return-wide v3

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
