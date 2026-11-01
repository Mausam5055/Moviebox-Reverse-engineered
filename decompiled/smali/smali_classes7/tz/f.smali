.class abstract Ltz/f;
.super Ltz/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltz/f$e;,
        Ltz/f$c;,
        Ltz/f$b;,
        Ltz/f$a;,
        Ltz/f$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/h;-><init>()V

    return-void
.end method


# virtual methods
.method d(Ltz/a;[I)I
    .locals 10

    new-instance v0, Ltz/f$e;

    invoke-direct {v0}, Ltz/f$e;-><init>()V

    invoke-virtual {v0}, Ltz/f$e;->b()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    invoke-virtual {p0, v0, p1}, Ltz/f;->e(Ltz/f$e;Ltz/a;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    iget-boolean v6, v0, Ltz/f$e;->c:Z

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v6, v0, Ltz/f$e;->a:I

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/16 v8, 0xff

    cmp-long v8, v6, v8

    if-gtz v8, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-eqz p2, :cond_3

    long-to-int v6, v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_0
    const/4 v6, 0x2

    if-lt v4, v6, :cond_0

    mul-int/lit8 v6, v4, 0x5

    if-lt v6, v2, :cond_0

    goto :goto_1

    :cond_4
    const/16 p1, 0xa

    if-gt v2, p1, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_5

    if-ge v3, p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, p1

    goto :goto_1

    :cond_6
    mul-int/lit8 v4, v4, 0x14

    if-ge v2, v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x64

    if-nez p2, :cond_8

    add-int/lit8 v2, v2, 0x1e

    sub-int p1, v2, v4

    if-le p1, v1, :cond_5

    goto :goto_1

    :cond_8
    int-to-float p1, v2

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    int-to-double p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double/2addr p1, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    add-double/2addr p1, v2

    double-to-int p1, p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    return v1
.end method

.method abstract e(Ltz/f$e;Ltz/a;)Z
.end method
