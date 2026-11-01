.class final Le3/b;
.super Ljava/lang/Object;

# interfaces
.implements Le3/g;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Ll2/h0;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 11

    move-object v0, p0

    move-wide v5, p1

    move-wide/from16 v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ll2/h0;

    const/4 v4, 0x1

    new-array v7, v4, [J

    const/4 v8, 0x0

    aput-wide p3, v7, v8

    const-wide/16 v9, 0x0

    new-array v4, v4, [J

    aput-wide v9, v4, v8

    invoke-direct {v3, v7, v4, p1, p2}, Ll2/h0;-><init>([J[JJ)V

    iput-object v3, v0, Le3/b;->c:Ll2/h0;

    iput-wide v1, v0, Le3/b;->a:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v3

    const v8, -0x7fffffff

    if-eqz v3, :cond_1

    sub-long v1, p3, v1

    const-wide/16 v3, 0x8

    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-lez v3, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    long-to-int v8, v1

    :cond_0
    iput v8, v0, Le3/b;->b:I

    goto :goto_0

    :cond_1
    iput v8, v0, Le3/b;->b:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Le3/b;->a:J

    return-wide v0
.end method

.method public b(J)Z
    .locals 3

    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, p1, p2, v1, v2}, Ll2/h0;->c(JJ)Z

    move-result p1

    return p1
.end method

.method public c(JJ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Le3/b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    invoke-virtual {v0, p1, p2, p3, p4}, Ll2/h0;->b(JJ)V

    return-void
.end method

.method d(J)V
    .locals 1

    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    invoke-virtual {v0, p1, p2}, Ll2/h0;->d(J)V

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Le3/b;->b:I

    return v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    invoke-virtual {v0}, Ll2/h0;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Ll2/m0$a;
    .locals 1

    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    invoke-virtual {v0, p1, p2}, Ll2/h0;->getSeekPoints(J)Ll2/m0$a;

    move-result-object p1

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 1

    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    invoke-virtual {v0, p1, p2}, Ll2/h0;->getTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Le3/b;->c:Ll2/h0;

    invoke-virtual {v0}, Ll2/h0;->isSeekable()Z

    move-result v0

    return v0
.end method
