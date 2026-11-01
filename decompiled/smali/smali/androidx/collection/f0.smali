.class public final Landroidx/collection/f0;
.super Landroidx/collection/q;


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/q;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Capacity must be a positive value."

    invoke-static {v0}, Ln/d;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroidx/collection/v0;->g(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/f0;->n(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/f0;-><init>(I)V

    return-void
.end method

.method private final g()V
    .locals 6

    iget v0, p0, Landroidx/collection/q;->c:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/q;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/q;->c:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->b(J)J

    move-result-wide v2

    const-wide/16 v4, 0x19

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->b(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/collection/b0;->a(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Landroidx/collection/f0;->i()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/collection/q;->c:I

    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/collection/f0;->t(I)V

    :goto_0
    return-void
.end method

.method private final i()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/q;->a:[J

    iget v2, v0, Landroidx/collection/q;->c:I

    iget-object v3, v0, Landroidx/collection/q;->b:[I

    invoke-static {v1, v2}, Landroidx/collection/v0;->a([JI)V

    const/4 v5, 0x0

    move v6, v5

    const/4 v7, -0x1

    :goto_0
    if-eq v6, v2, :cond_5

    shr-int/lit8 v8, v6, 0x3

    aget-wide v9, v1, v8

    and-int/lit8 v11, v6, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long/2addr v9, v11

    const-wide/16 v12, 0xff

    and-long/2addr v9, v12

    const-wide/16 v14, 0x80

    cmp-long v16, v9, v14

    if-nez v16, :cond_0

    add-int/lit8 v7, v6, 0x1

    move/from16 v26, v7

    move v7, v6

    move/from16 v6, v26

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0xfe

    cmp-long v9, v9, v16

    if-eqz v9, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    aget v9, v3, v6

    const v10, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v9, v10

    shl-int/lit8 v10, v9, 0x10

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v9, 0x7

    invoke-direct {v0, v10}, Landroidx/collection/f0;->k(I)I

    move-result v16

    and-int/2addr v10, v2

    sub-int v17, v16, v10

    and-int v17, v17, v2

    div-int/lit8 v4, v17, 0x8

    sub-int v10, v6, v10

    and-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x8

    const-wide v18, 0xffffffffffffffL

    const-wide/high16 v20, -0x8000000000000000L

    if-ne v4, v10, :cond_2

    and-int/lit8 v4, v9, 0x7f

    int-to-long v9, v4

    aget-wide v14, v1, v8

    shl-long/2addr v12, v11

    not-long v12, v12

    and-long/2addr v12, v14

    shl-long/2addr v9, v11

    or-long/2addr v9, v12

    aput-wide v9, v1, v8

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->a0([J)I

    move-result v4

    aget-wide v8, v1, v5

    and-long v8, v8, v18

    or-long v8, v8, v20

    aput-wide v8, v1, v4

    goto :goto_1

    :cond_2
    shr-int/lit8 v4, v16, 0x3

    aget-wide v22, v1, v4

    and-int/lit8 v10, v16, 0x7

    shl-int/lit8 v10, v10, 0x3

    shr-long v24, v22, v10

    and-long v24, v24, v12

    cmp-long v17, v24, v14

    if-nez v17, :cond_3

    and-int/lit8 v7, v9, 0x7f

    move/from16 v24, v6

    int-to-long v5, v7

    shl-long v14, v12, v10

    not-long v14, v14

    and-long v14, v22, v14

    shl-long/2addr v5, v10

    or-long/2addr v5, v14

    aput-wide v5, v1, v4

    aget-wide v4, v1, v8

    shl-long v6, v12, v11

    not-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x80

    shl-long/2addr v6, v11

    or-long/2addr v4, v6

    aput-wide v4, v1, v8

    aget v4, v3, v24

    aput v4, v3, v16

    const/4 v4, 0x0

    aput v4, v3, v24

    move/from16 v6, v24

    move v7, v6

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    move/from16 v24, v6

    and-int/lit8 v5, v9, 0x7f

    int-to-long v5, v5

    shl-long v8, v12, v10

    not-long v8, v8

    and-long v8, v22, v8

    shl-long/2addr v5, v10

    or-long/2addr v5, v8

    aput-wide v5, v1, v4

    const/4 v4, -0x1

    if-ne v7, v4, :cond_4

    add-int/lit8 v6, v24, 0x1

    invoke-static {v1, v6, v2}, Landroidx/collection/v0;->b([JII)I

    move-result v7

    :cond_4
    aget v5, v3, v16

    aput v5, v3, v7

    aget v5, v3, v24

    aput v5, v3, v16

    aget v5, v3, v7

    aput v5, v3, v24

    add-int/lit8 v6, v24, -0x1

    :goto_2
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->a0([J)I

    move-result v5

    const/4 v8, 0x0

    aget-wide v9, v1, v8

    and-long v9, v9, v18

    or-long v9, v9, v20

    aput-wide v9, v1, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto/16 :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/f0;->l()V

    return-void
.end method

.method private final j(I)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v2, v1

    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x7

    and-int/lit8 v2, v2, 0x7f

    iget v4, v0, Landroidx/collection/q;->c:I

    and-int v5, v3, v4

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v9, v5, 0x3

    and-int/lit8 v10, v5, 0x7

    shl-int/lit8 v10, v10, 0x3

    aget-wide v11, v8, v9

    ushr-long/2addr v11, v10

    const/4 v13, 0x1

    add-int/2addr v9, v13

    aget-wide v14, v8, v9

    rsub-int/lit8 v8, v10, 0x40

    shl-long v8, v14, v8

    int-to-long v14, v10

    neg-long v14, v14

    const/16 v10, 0x3f

    shr-long/2addr v14, v10

    and-long/2addr v8, v14

    or-long/2addr v8, v11

    int-to-long v10, v2

    const-wide v14, 0x101010101010101L

    mul-long v16, v10, v14

    move/from16 v18, v7

    xor-long v6, v8, v16

    sub-long v14, v6, v14

    not-long v6, v6

    and-long/2addr v6, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v14

    :goto_1
    const-wide/16 v16, 0x0

    cmp-long v19, v6, v16

    if-eqz v19, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v16

    shr-int/lit8 v16, v16, 0x3

    add-int v16, v5, v16

    and-int v16, v16, v4

    iget-object v12, v0, Landroidx/collection/q;->b:[I

    aget v12, v12, v16

    if-ne v12, v1, :cond_0

    return v16

    :cond_0
    const-wide/16 v16, 0x1

    sub-long v16, v6, v16

    and-long v6, v6, v16

    goto :goto_1

    :cond_1
    not-long v6, v8

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v6, v8

    and-long/2addr v6, v14

    cmp-long v6, v6, v16

    if-eqz v6, :cond_5

    invoke-direct {v0, v3}, Landroidx/collection/f0;->k(I)I

    move-result v1

    iget v2, v0, Landroidx/collection/f0;->e:I

    const-wide/16 v4, 0xff

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v6, v1, 0x3

    aget-wide v6, v2, v6

    and-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x3

    shr-long/2addr v6, v2

    and-long/2addr v6, v4

    const-wide/16 v8, 0xfe

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/collection/f0;->g()V

    invoke-direct {v0, v3}, Landroidx/collection/f0;->k(I)I

    move-result v1

    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/q;->d:I

    add-int/2addr v2, v13

    iput v2, v0, Landroidx/collection/q;->d:I

    iget v2, v0, Landroidx/collection/f0;->e:I

    iget-object v3, v0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v6, v1, 0x3

    aget-wide v7, v3, v6

    and-int/lit8 v9, v1, 0x7

    shl-int/lit8 v9, v9, 0x3

    shr-long v14, v7, v9

    and-long/2addr v14, v4

    const-wide/16 v16, 0x80

    cmp-long v12, v14, v16

    if-nez v12, :cond_4

    move/from16 v19, v13

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    sub-int v2, v2, v19

    iput v2, v0, Landroidx/collection/f0;->e:I

    iget v2, v0, Landroidx/collection/q;->c:I

    shl-long/2addr v4, v9

    not-long v4, v4

    and-long/2addr v4, v7

    shl-long v7, v10, v9

    or-long/2addr v4, v7

    aput-wide v4, v3, v6

    add-int/lit8 v6, v1, -0x7

    and-int/2addr v6, v2

    and-int/lit8 v2, v2, 0x7

    add-int/2addr v6, v2

    shr-int/lit8 v2, v6, 0x3

    aput-wide v4, v3, v2

    return v1

    :cond_5
    add-int/lit8 v7, v18, 0x8

    add-int/2addr v5, v7

    and-int/2addr v5, v4

    goto/16 :goto_0
.end method

.method private final k(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/q;->c:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v2, v3

    rsub-int/lit8 v2, v4, 0x40

    shl-long v2, v7, v2

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method private final l()V
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/q;->b()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/v0;->c(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/q;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/f0;->e:I

    return-void
.end method

.method private final m(I)V
    .locals 8

    if-nez p1, :cond_0

    sget-object v0, Landroidx/collection/v0;->a:[J

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->z([JJIIILjava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    aget-wide v2, v0, v1

    const-wide/16 v4, 0xff

    shl-long/2addr v4, p1

    not-long v6, v4

    and-long/2addr v2, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    invoke-direct {p0}, Landroidx/collection/f0;->l()V

    return-void
.end method

.method private final n(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x7

    invoke-static {p1}, Landroidx/collection/v0;->f(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Landroidx/collection/q;->c:I

    invoke-direct {p0, p1}, Landroidx/collection/f0;->m(I)V

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/collection/q;->b:[I

    return-void
.end method

.method private final s(I)V
    .locals 8

    iget v0, p0, Landroidx/collection/q;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/q;->d:I

    iget-object v0, p0, Landroidx/collection/q;->a:[J

    iget v1, p0, Landroidx/collection/q;->c:I

    shr-int/lit8 v2, p1, 0x3

    and-int/lit8 v3, p1, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-wide v4, v0, v2

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v3

    not-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0xfe

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    aput-wide v3, v0, v2

    add-int/lit8 p1, p1, -0x7

    and-int/2addr p1, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x3

    aput-wide v3, v0, p1

    return-void
.end method

.method private final t(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/q;->a:[J

    iget-object v2, v0, Landroidx/collection/q;->b:[I

    iget v3, v0, Landroidx/collection/q;->c:I

    invoke-direct/range {p0 .. p1}, Landroidx/collection/f0;->n(I)V

    iget-object v4, v0, Landroidx/collection/q;->a:[J

    iget-object v5, v0, Landroidx/collection/q;->b:[I

    iget v6, v0, Landroidx/collection/q;->c:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    shr-int/lit8 v8, v7, 0x3

    aget-wide v8, v1, v8

    and-int/lit8 v10, v7, 0x7

    shl-int/lit8 v10, v10, 0x3

    shr-long/2addr v8, v10

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const-wide/16 v12, 0x80

    cmp-long v8, v8, v12

    if-gez v8, :cond_0

    aget v8, v2, v7

    const v9, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v9, v8

    shl-int/lit8 v12, v9, 0x10

    xor-int/2addr v9, v12

    ushr-int/lit8 v12, v9, 0x7

    invoke-direct {v0, v12}, Landroidx/collection/f0;->k(I)I

    move-result v12

    and-int/lit8 v9, v9, 0x7f

    int-to-long v13, v9

    shr-int/lit8 v9, v12, 0x3

    and-int/lit8 v15, v12, 0x7

    shl-int/lit8 v15, v15, 0x3

    aget-wide v16, v4, v9

    shl-long/2addr v10, v15

    not-long v10, v10

    and-long v10, v16, v10

    shl-long/2addr v13, v15

    or-long/2addr v10, v13

    aput-wide v10, v4, v9

    add-int/lit8 v9, v12, -0x7

    and-int/2addr v9, v6

    and-int/lit8 v13, v6, 0x7

    add-int/2addr v9, v13

    shr-int/lit8 v9, v9, 0x3

    aput-wide v10, v4, v9

    aput v8, v5, v12

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final f(I)Z
    .locals 3

    iget v0, p0, Landroidx/collection/q;->d:I

    invoke-direct {p0, p1}, Landroidx/collection/f0;->j(I)I

    move-result v1

    iget-object v2, p0, Landroidx/collection/q;->b:[I

    aput p1, v2, v1

    iget p1, p0, Landroidx/collection/q;->d:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/q;->d:I

    iget-object v1, p0, Landroidx/collection/q;->a:[J

    sget-object v0, Landroidx/collection/v0;->a:[J

    if-eq v1, v0, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->z([JJIIILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/collection/q;->a:[J

    iget v1, p0, Landroidx/collection/q;->c:I

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x3

    aget-wide v3, v0, v2

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v1

    not-long v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    :cond_0
    invoke-direct {p0}, Landroidx/collection/f0;->l()V

    return-void
.end method

.method public final o(I)V
    .locals 13

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v0, p1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    iget v2, p0, Landroidx/collection/q;->c:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v4, v5

    rsub-int/lit8 v4, v6, 0x40

    shl-long v4, v9, v4

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v1

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v0

    and-int/2addr v10, v2

    iget-object v11, p0, Landroidx/collection/q;->b:[I

    aget v11, v11, v10

    if-ne v11, p1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_1

    :cond_1
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    const/4 v10, -0x1

    :goto_2
    if-ltz v10, :cond_2

    invoke-direct {p0, v10}, Landroidx/collection/f0;->s(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    and-int/2addr v0, v2

    goto :goto_0
.end method

.method public final p(Landroidx/collection/q;)V
    .locals 13

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/collection/q;->b:[I

    iget-object p1, p1, Landroidx/collection/q;->a:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget v9, v0, v9

    invoke-virtual {p0, v9}, Landroidx/collection/f0;->o(I)V

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final q(I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v2, v1

    shl-int/lit8 v3, v2, 0x10

    xor-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x7f

    iget v4, v0, Landroidx/collection/q;->c:I

    ushr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Landroidx/collection/q;->a:[J

    shr-int/lit8 v8, v2, 0x3

    and-int/lit8 v9, v2, 0x7

    shl-int/lit8 v9, v9, 0x3

    aget-wide v10, v7, v8

    ushr-long/2addr v10, v9

    const/4 v12, 0x1

    add-int/2addr v8, v12

    aget-wide v13, v7, v8

    rsub-int/lit8 v7, v9, 0x40

    shl-long v7, v13, v7

    int-to-long v13, v9

    neg-long v13, v13

    const/16 v9, 0x3f

    shr-long/2addr v13, v9

    and-long/2addr v7, v13

    or-long/2addr v7, v10

    int-to-long v9, v3

    const-wide v13, 0x101010101010101L

    mul-long/2addr v9, v13

    xor-long/2addr v9, v7

    sub-long v13, v9, v13

    not-long v9, v9

    and-long/2addr v9, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v13

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v11, v9, v15

    if-eqz v11, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v11

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    and-int/2addr v11, v4

    iget-object v15, v0, Landroidx/collection/q;->b:[I

    aget v15, v15, v11

    if-ne v15, v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v15, 0x1

    sub-long v15, v9, v15

    and-long/2addr v9, v15

    goto :goto_1

    :cond_1
    not-long v9, v7

    const/4 v11, 0x6

    shl-long/2addr v9, v11

    and-long/2addr v7, v9

    and-long/2addr v7, v13

    cmp-long v7, v7, v15

    if-eqz v7, :cond_4

    const/4 v11, -0x1

    :goto_2
    if-ltz v11, :cond_2

    move v5, v12

    :cond_2
    if-eqz v5, :cond_3

    invoke-direct {v0, v11}, Landroidx/collection/f0;->s(I)V

    :cond_3
    return v5

    :cond_4
    add-int/lit8 v6, v6, 0x8

    add-int/2addr v2, v6

    and-int/2addr v2, v4

    goto :goto_0
.end method

.method public final r(Landroidx/collection/q;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/collection/q;->d:I

    invoke-virtual {p0, p1}, Landroidx/collection/f0;->p(Landroidx/collection/q;)V

    iget p1, p0, Landroidx/collection/q;->d:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
