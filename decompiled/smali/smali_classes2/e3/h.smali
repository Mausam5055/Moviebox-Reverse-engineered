.class final Le3/h;
.super Ljava/lang/Object;

# interfaces
.implements Le3/g;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J

.field private final d:J

.field private final e:I


# direct methods
.method private constructor <init>([J[JJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/h;->a:[J

    iput-object p2, p0, Le3/h;->b:[J

    iput-wide p3, p0, Le3/h;->c:J

    iput-wide p5, p0, Le3/h;->d:J

    iput p7, p0, Le3/h;->e:I

    return-void
.end method

.method public static b(JJLl2/i0$a;Landroidx/media3/common/util/j0;)Le3/h;
    .locals 20

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    iget v5, v2, Ll2/i0$a;->c:I

    int-to-long v5, v5

    add-long v5, p2, v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    const/4 v7, 0x0

    if-gtz v4, :cond_0

    return-object v7

    :cond_0
    iget v8, v2, Ll2/i0$a;->d:I

    int-to-long v9, v4

    iget v4, v2, Ll2/i0$a;->g:I

    int-to-long v11, v4

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    invoke-static {v9, v10, v8}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide v14

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    move-result v8

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Landroidx/media3/common/util/j0;->X(I)V

    iget v11, v2, Ll2/i0$a;->c:I

    int-to-long v11, v11

    add-long v11, p2, v11

    new-array v13, v4, [J

    new-array v7, v4, [J

    const/16 v17, 0x0

    move/from16 v10, v17

    :goto_0
    if-ge v10, v4, :cond_5

    int-to-long v2, v10

    mul-long/2addr v2, v14

    move-wide/from16 v18, v14

    int-to-long v14, v4

    div-long/2addr v2, v14

    aput-wide v2, v13, v10

    aput-wide v11, v7, v10

    const/4 v2, 0x1

    if-eq v9, v2, :cond_4

    const/4 v2, 0x2

    if-eq v9, v2, :cond_3

    const/4 v3, 0x3

    if-eq v9, v3, :cond_2

    const/4 v3, 0x4

    if-eq v9, v3, :cond_1

    const/4 v3, 0x0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->L()I

    move-result v14

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->K()I

    move-result v14

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    move-result v14

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->H()I

    move-result v14

    :goto_1
    int-to-long v14, v14

    int-to-long v2, v8

    mul-long/2addr v14, v2

    add-long/2addr v11, v14

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v14, v18

    goto :goto_0

    :cond_5
    move-wide/from16 v18, v14

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-string v3, ", "

    const-string v4, "VbriSeeker"

    if-eqz v2, :cond_6

    cmp-long v2, v0, v5

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VBRI data size mismatch: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    cmp-long v0, v5, v11

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRI bytes and ToC mismatch (using max): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nSeeking will be inaccurate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_7
    move-wide/from16 v16, v5

    new-instance v0, Le3/h;

    move-object/from16 v1, p4

    iget v1, v1, Ll2/i0$a;->f:I

    move-object v11, v0

    move-object v12, v13

    move-object v13, v7

    move-wide/from16 v14, v18

    move/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Le3/h;-><init>([J[JJJI)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Le3/h;->d:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Le3/h;->e:I

    return v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Le3/h;->c:J

    return-wide v0
.end method

.method public getSeekPoints(J)Ll2/m0$a;
    .locals 8

    iget-object v0, p0, Le3/h;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    move-result v0

    new-instance v2, Ll2/n0;

    iget-object v3, p0, Le3/h;->a:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Le3/h;->b:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Ll2/n0;-><init>(JJ)V

    iget-wide v3, v2, Ll2/n0;->a:J

    cmp-long p1, v3, p1

    if-gez p1, :cond_1

    iget-object p1, p0, Le3/h;->a:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ll2/n0;

    iget-object p2, p0, Le3/h;->a:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Le3/h;->b:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Ll2/n0;-><init>(JJ)V

    new-instance p2, Ll2/m0$a;

    invoke-direct {p2, v2, p1}, Ll2/m0$a;-><init>(Ll2/n0;Ll2/n0;)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p1, Ll2/m0$a;

    invoke-direct {p1, v2}, Ll2/m0$a;-><init>(Ll2/n0;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 3

    iget-object v0, p0, Le3/h;->a:[J

    iget-object v1, p0, Le3/h;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
