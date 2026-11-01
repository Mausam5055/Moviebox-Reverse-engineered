.class Lcom/google/android/exoplayer2/source/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/y$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/b;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private d:Lcom/google/android/exoplayer2/source/y$a;

.field private e:Lcom/google/android/exoplayer2/source/y$a;

.field private f:Lcom/google/android/exoplayer2/source/y$a;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/b;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/y;->b:I

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/util/d0;

    new-instance v0, Lcom/google/android/exoplayer2/source/y$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/y$a;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/b;->a(Lcom/google/android/exoplayer2/upstream/b$a;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/y$a;->b()Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method private static d(Lcom/google/android/exoplayer2/source/y$a;J)Lcom/google/android/exoplayer2/source/y$a;
    .locals 2

    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private g(I)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    :cond_0
    return-void
.end method

.method private h(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/b;->allocate()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/y$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/y$a;->b:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/y;->b:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/y$a;->c(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/source/y$a;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private static i(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->d(Lcom/google/android/exoplayer2/source/y$a;J)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y$a;->e(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static j(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;
    .locals 5

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y;->d(Lcom/google/android/exoplayer2/source/y$a;J)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/y$a;->e(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static k(Lcom/google/android/exoplayer2/source/y$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/y$a;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-static {v6, v2, v3, v5, v4}, Lcom/google/android/exoplayer2/source/y;->j(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    and-int/lit8 v6, v6, 0x7f

    move-object/from16 v9, p1

    iget-object v9, v9, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v10, v9, Lcom/google/android/exoplayer2/decoder/c;->a:[B

    if-nez v10, :cond_1

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/google/android/exoplayer2/decoder/c;->a:[B

    goto :goto_1

    :cond_1
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    iget-object v10, v9, Lcom/google/android/exoplayer2/decoder/c;->a:[B

    invoke-static {v5, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/source/y;->j(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v5

    int-to-long v10, v6

    add-long/2addr v2, v10

    if-eqz v8, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lcom/google/android/exoplayer2/source/y;->j(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v5

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v4

    :cond_2
    move v10, v4

    iget-object v4, v9, Lcom/google/android/exoplayer2/decoder/c;->d:[I

    if-eqz v4, :cond_4

    array-length v6, v4

    if-ge v6, v10, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v11, v4

    goto :goto_4

    :cond_4
    :goto_3
    new-array v4, v10, [I

    goto :goto_2

    :goto_4
    iget-object v4, v9, Lcom/google/android/exoplayer2/decoder/c;->e:[I

    if-eqz v4, :cond_6

    array-length v6, v4

    if-ge v6, v10, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object v12, v4

    goto :goto_7

    :cond_6
    :goto_6
    new-array v4, v10, [I

    goto :goto_5

    :goto_7
    if-eqz v8, :cond_7

    mul-int/lit8 v4, v10, 0x6

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lcom/google/android/exoplayer2/source/y;->j(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v5

    int-to-long v13, v4

    add-long/2addr v2, v13

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    :goto_8
    if-ge v7, v10, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v4

    aput v4, v11, v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v4

    aput v4, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_7
    aput v7, v11, v7

    iget v1, v0, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    sub-long v13, v2, v13

    long-to-int v4, v13

    sub-int/2addr v1, v4

    aput v1, v12, v7

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/a0$b;->c:Lg9/e0$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg9/e0$a;

    iget-object v13, v1, Lg9/e0$a;->b:[B

    iget-object v14, v9, Lcom/google/android/exoplayer2/decoder/c;->a:[B

    iget v15, v1, Lg9/e0$a;->a:I

    iget v4, v1, Lg9/e0$a;->c:I

    iget v1, v1, Lg9/e0$a;->d:I

    move/from16 v16, v4

    move/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/exoplayer2/decoder/c;->c(I[I[I[B[BIII)V

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    sub-long/2addr v2, v6

    long-to-int v1, v2

    int-to-long v2, v1

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    iget v2, v0, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    return-object v5
.end method

.method private static l(Lcom/google/android/exoplayer2/source/y$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/y$a;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/y;->k(Lcom/google/android/exoplayer2/source/y$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v3

    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/y;->j(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result p3

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    iget v1, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    iget-object v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lcom/google/android/exoplayer2/source/y;->i(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    iget v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    sub-int/2addr v0, p3

    iput v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q(I)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/y;->i(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget p3, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/a0$b;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/a0$b;->a:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/y;->i(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public b(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/b;->b(Lcom/google/android/exoplayer2/upstream/a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/y$a;->b()Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/y$a;->a:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/y$a;->a:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/y$a;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;)V

    new-instance p2, Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/y;->b:I

    invoke-direct {p2, v1, v2, v3}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    iput-object p2, v0, Lcom/google/android/exoplayer2/source/y$a;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/y$a;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    move-object v0, p2

    :cond_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    if-ne v0, p1, :cond_5

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/y$a;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    iget p2, p0, Lcom/google/android/exoplayer2/source/y;->b:I

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/y$a;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    :cond_5
    :goto_3
    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    return-wide v0
.end method

.method public f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/y;->l(Lcom/google/android/exoplayer2/source/y$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/y;->l(Lcom/google/android/exoplayer2/source/y$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/a0$b;Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/y;->b:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/y$a;->d(JI)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/b;->trim()V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->d:Lcom/google/android/exoplayer2/source/y$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/y;->e:Lcom/google/android/exoplayer2/source/y$a;

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/upstream/g;IZ)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/y;->h(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/y$a;->e(J)I

    move-result v0

    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/exoplayer2/upstream/g;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/y;->g(I)V

    return p1
.end method

.method public q(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/y;->h(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/y;->f:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/y$a;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/a;->a:[B

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/y;->g:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/y$a;->e(J)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    sub-int/2addr p2, v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/y;->g(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
