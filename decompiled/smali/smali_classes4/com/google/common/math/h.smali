.class public final Lcom/google/common/math/h;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/h;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/h;->b:D

    iput-wide v0, p0, Lcom/google/common/math/h;->c:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/h;->d:D

    iput-wide v0, p0, Lcom/google/common/math/h;->e:D

    return-void
.end method

.method static g(DD)D
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/primitives/Doubles;->f(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/Doubles;->f(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a(D)V
    .locals 7

    iget-wide v0, p0, Lcom/google/common/math/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v5, 0x1

    if-nez v2, :cond_0

    iput-wide v5, p0, Lcom/google/common/math/h;->a:J

    iput-wide p1, p0, Lcom/google/common/math/h;->b:D

    iput-wide p1, p0, Lcom/google/common/math/h;->d:D

    iput-wide p1, p0, Lcom/google/common/math/h;->e:D

    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->f(D)Z

    move-result p1

    if-nez p1, :cond_2

    iput-wide v3, p0, Lcom/google/common/math/h;->c:D

    goto :goto_1

    :cond_0
    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/math/h;->a:J

    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->f(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/h;->b:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->f(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/h;->b:D

    sub-double v2, p1, v0

    iget-wide v4, p0, Lcom/google/common/math/h;->a:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/h;->b:D

    iget-wide v4, p0, Lcom/google/common/math/h;->c:D

    sub-double v0, p1, v0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/google/common/math/h;->c:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/h;->b:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/h;->g(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/h;->b:D

    iput-wide v3, p0, Lcom/google/common/math/h;->c:D

    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/h;->d:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/h;->d:D

    iget-wide v0, p0, Lcom/google/common/math/h;->e:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/math/h;->e:D

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/h;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/util/Iterator;)V
    .locals 2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/h;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs d([D)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/h;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs e([I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/h;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs f([J)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/h;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()Lcom/google/common/math/Stats;
    .locals 12

    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/h;->a:J

    iget-wide v3, p0, Lcom/google/common/math/h;->b:D

    iget-wide v5, p0, Lcom/google/common/math/h;->c:D

    iget-wide v7, p0, Lcom/google/common/math/h;->d:D

    iget-wide v9, p0, Lcom/google/common/math/h;->e:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method
