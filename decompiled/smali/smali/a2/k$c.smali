.class public final La2/k$c;
.super La2/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field final j:La2/n;

.field final k:La2/n;

.field final l:J


# direct methods
.method public constructor <init>(La2/i;JJJJJLjava/util/List;JLa2/n;La2/n;JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    move-wide/from16 v11, p13

    move-wide/from16 v13, p17

    move-wide/from16 v15, p19

    invoke-direct/range {v0 .. v16}, La2/k$a;-><init>(La2/i;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p15

    iput-object v1, v0, La2/k$c;->j:La2/n;

    move-object/from16 v1, p16

    iput-object v1, v0, La2/k$c;->k:La2/n;

    move-wide/from16 v1, p8

    iput-wide v1, v0, La2/k$c;->l:J

    return-void
.end method


# virtual methods
.method public a(La2/j;)La2/i;
    .locals 13

    iget-object v0, p0, La2/k$c;->j:La2/n;

    if-eqz v0, :cond_0

    iget-object p1, p1, La2/j;->b:Landroidx/media3/common/r;

    iget-object v1, p1, Landroidx/media3/common/r;->a:Ljava/lang/String;

    iget v4, p1, Landroidx/media3/common/r;->j:I

    const-wide/16 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, La2/n;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v8

    new-instance p1, La2/i;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, La2/i;-><init>(Ljava/lang/String;JJ)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, La2/k;->a(La2/j;)La2/i;

    move-result-object p1

    return-object p1
.end method

.method public g(J)J
    .locals 5

    iget-object v0, p0, La2/k$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_0
    iget-wide v0, p0, La2/k$c;->l:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide p1, p0, La2/k$a;->d:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget-wide v0, p0, La2/k;->b:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-wide v0, p0, La2/k$a;->e:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/google/common/math/a;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_2
    return-wide v2
.end method

.method public k(La2/j;J)La2/i;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, La2/k$a;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-wide v2, v0, La2/k$a;->d:J

    sub-long v2, p2, v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/k$d;

    iget-wide v1, v1, La2/k$d;->a:J

    :goto_0
    move-wide v8, v1

    goto :goto_1

    :cond_0
    iget-wide v1, v0, La2/k$a;->d:J

    sub-long v1, p2, v1

    iget-wide v3, v0, La2/k$a;->e:J

    mul-long/2addr v1, v3

    goto :goto_0

    :goto_1
    iget-object v3, v0, La2/k$c;->k:La2/n;

    move-object/from16 v1, p1

    iget-object v1, v1, La2/j;->b:Landroidx/media3/common/r;

    iget-object v4, v1, Landroidx/media3/common/r;->a:Ljava/lang/String;

    iget v7, v1, Landroidx/media3/common/r;->j:I

    move-wide/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, La2/n;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v11

    new-instance v1, La2/i;

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, La2/i;-><init>(Ljava/lang/String;JJ)V

    return-object v1
.end method
