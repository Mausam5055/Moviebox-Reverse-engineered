.class public final Landroidx/collection/h0;
.super Landroidx/collection/u;


# instance fields
.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/h0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/u;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct {p0, p1}, Landroidx/collection/h0;->m(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/h0;-><init>(I)V

    return-void
.end method

.method private final f()V
    .locals 6

    iget v0, p0, Landroidx/collection/u;->d:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget v0, p0, Landroidx/collection/u;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/u;->d:I

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

    invoke-direct {p0}, Landroidx/collection/h0;->h()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/collection/u;->d:I

    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/collection/h0;->n(I)V

    :goto_0
    return-void
.end method

.method private final h()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/u;->a:[J

    iget v2, v0, Landroidx/collection/u;->d:I

    iget-object v3, v0, Landroidx/collection/u;->b:[J

    iget-object v4, v0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    invoke-static {v1, v2}, Landroidx/collection/v0;->a([JI)V

    const/4 v6, 0x0

    move v7, v6

    const/4 v8, -0x1

    :goto_0
    if-eq v7, v2, :cond_5

    shr-int/lit8 v9, v7, 0x3

    aget-wide v10, v1, v9

    and-int/lit8 v12, v7, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    const-wide/16 v13, 0xff

    and-long/2addr v10, v13

    const-wide/16 v15, 0x80

    cmp-long v17, v10, v15

    if-nez v17, :cond_0

    add-int/lit8 v8, v7, 0x1

    move/from16 v28, v8

    move v8, v7

    move/from16 v7, v28

    goto :goto_0

    :cond_0
    const-wide/16 v17, 0xfe

    cmp-long v10, v10, v17

    if-eqz v10, :cond_1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    aget-wide v10, v3, v7

    invoke-static {v10, v11}, Landroidx/collection/s;->a(J)I

    move-result v10

    const v11, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v10, v11

    shl-int/lit8 v11, v10, 0x10

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v10, 0x7

    invoke-direct {v0, v11}, Landroidx/collection/h0;->j(I)I

    move-result v17

    and-int/2addr v11, v2

    sub-int v18, v17, v11

    and-int v18, v18, v2

    div-int/lit8 v5, v18, 0x8

    sub-int v11, v7, v11

    and-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x8

    const-wide v19, 0xffffffffffffffL

    const-wide/high16 v21, -0x8000000000000000L

    if-ne v5, v11, :cond_2

    and-int/lit8 v5, v10, 0x7f

    int-to-long v10, v5

    aget-wide v15, v1, v9

    shl-long/2addr v13, v12

    not-long v13, v13

    and-long/2addr v13, v15

    shl-long/2addr v10, v12

    or-long/2addr v10, v13

    aput-wide v10, v1, v9

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->a0([J)I

    move-result v5

    aget-wide v9, v1, v6

    and-long v9, v9, v19

    or-long v9, v9, v21

    aput-wide v9, v1, v5

    goto :goto_1

    :cond_2
    shr-int/lit8 v5, v17, 0x3

    aget-wide v23, v1, v5

    and-int/lit8 v11, v17, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long v25, v23, v11

    and-long v25, v25, v13

    cmp-long v18, v25, v15

    if-nez v18, :cond_3

    and-int/lit8 v8, v10, 0x7f

    move/from16 v25, v7

    int-to-long v6, v8

    move/from16 v26, v2

    move-object/from16 v27, v3

    shl-long v2, v13, v11

    not-long v2, v2

    and-long v2, v23, v2

    shl-long/2addr v6, v11

    or-long/2addr v2, v6

    aput-wide v2, v1, v5

    aget-wide v2, v1, v9

    shl-long v5, v13, v12

    not-long v5, v5

    and-long/2addr v2, v5

    shl-long v5, v15, v12

    or-long/2addr v2, v5

    aput-wide v2, v1, v9

    aget-wide v2, v27, v25

    aput-wide v2, v27, v17

    const-wide/16 v2, 0x0

    aput-wide v2, v27, v25

    aget-object v2, v4, v25

    aput-object v2, v4, v17

    const/4 v2, 0x0

    aput-object v2, v4, v25

    move/from16 v7, v25

    move v8, v7

    move/from16 v3, v26

    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    move/from16 v26, v2

    move-object/from16 v27, v3

    move/from16 v25, v7

    and-int/lit8 v2, v10, 0x7f

    int-to-long v2, v2

    shl-long v6, v13, v11

    not-long v6, v6

    and-long v6, v23, v6

    shl-long/2addr v2, v11

    or-long/2addr v2, v6

    aput-wide v2, v1, v5

    const/4 v2, -0x1

    if-ne v8, v2, :cond_4

    add-int/lit8 v7, v25, 0x1

    move/from16 v3, v26

    invoke-static {v1, v7, v3}, Landroidx/collection/v0;->b([JII)I

    move-result v8

    goto :goto_2

    :cond_4
    move/from16 v3, v26

    :goto_2
    aget-wide v5, v27, v17

    aput-wide v5, v27, v8

    aget-wide v5, v27, v25

    aput-wide v5, v27, v17

    aget-wide v5, v27, v8

    aput-wide v5, v27, v25

    aget-object v5, v4, v17

    aput-object v5, v4, v8

    aget-object v5, v4, v25

    aput-object v5, v4, v17

    aget-object v5, v4, v8

    aput-object v5, v4, v25

    add-int/lit8 v7, v25, -0x1

    :goto_3
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->a0([J)I

    move-result v5

    const/4 v6, 0x0

    aget-wide v9, v1, v6

    and-long v9, v9, v19

    or-long v9, v9, v21

    aput-wide v9, v1, v5

    add-int/lit8 v7, v7, 0x1

    move v2, v3

    move-object/from16 v3, v27

    goto/16 :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/h0;->k()V

    return-void
.end method

.method private final i(J)I
    .locals 21

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Landroidx/collection/s;->a(J)I

    move-result v1

    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x7f

    iget v3, v0, Landroidx/collection/u;->d:I

    and-int v4, v2, v3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Landroidx/collection/u;->a:[J

    shr-int/lit8 v8, v4, 0x3

    and-int/lit8 v9, v4, 0x7

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

    int-to-long v9, v1

    const-wide v13, 0x101010101010101L

    mul-long v15, v9, v13

    move/from16 v17, v6

    xor-long v5, v7, v15

    sub-long v13, v5, v13

    not-long v5, v5

    and-long/2addr v5, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v5, v13

    :goto_1
    const-wide/16 v15, 0x0

    cmp-long v18, v5, v15

    if-eqz v18, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v15

    shr-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v4

    and-int/2addr v15, v3

    iget-object v11, v0, Landroidx/collection/u;->b:[J

    aget-wide v19, v11, v15

    cmp-long v11, v19, p1

    if-nez v11, :cond_0

    return v15

    :cond_0
    const-wide/16 v15, 0x1

    sub-long v15, v5, v15

    and-long/2addr v5, v15

    goto :goto_1

    :cond_1
    not-long v5, v7

    const/4 v11, 0x6

    shl-long/2addr v5, v11

    and-long/2addr v5, v7

    and-long/2addr v5, v13

    cmp-long v5, v5, v15

    if-eqz v5, :cond_5

    invoke-direct {v0, v2}, Landroidx/collection/h0;->j(I)I

    move-result v1

    iget v3, v0, Landroidx/collection/h0;->f:I

    const-wide/16 v4, 0xff

    if-nez v3, :cond_3

    iget-object v3, v0, Landroidx/collection/u;->a:[J

    shr-int/lit8 v6, v1, 0x3

    aget-wide v6, v3, v6

    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    shr-long/2addr v6, v3

    and-long/2addr v6, v4

    const-wide/16 v13, 0xfe

    cmp-long v3, v6, v13

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/collection/h0;->f()V

    invoke-direct {v0, v2}, Landroidx/collection/h0;->j(I)I

    move-result v1

    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/u;->e:I

    add-int/2addr v2, v12

    iput v2, v0, Landroidx/collection/u;->e:I

    iget v2, v0, Landroidx/collection/h0;->f:I

    iget-object v3, v0, Landroidx/collection/u;->a:[J

    shr-int/lit8 v6, v1, 0x3

    aget-wide v7, v3, v6

    and-int/lit8 v11, v1, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long v13, v7, v11

    and-long/2addr v13, v4

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    move/from16 v18, v12

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    :goto_3
    sub-int v2, v2, v18

    iput v2, v0, Landroidx/collection/h0;->f:I

    iget v2, v0, Landroidx/collection/u;->d:I

    shl-long/2addr v4, v11

    not-long v4, v4

    and-long/2addr v4, v7

    shl-long v7, v9, v11

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
    add-int/lit8 v6, v17, 0x8

    add-int/2addr v4, v6

    and-int/2addr v4, v3

    goto/16 :goto_0
.end method

.method private final j(I)I
    .locals 9

    iget v0, p0, Landroidx/collection/u;->d:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/collection/u;->a:[J

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

.method private final k()V
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/u;->c()I

    move-result v0

    invoke-static {v0}, Landroidx/collection/v0;->c(I)I

    move-result v0

    iget v1, p0, Landroidx/collection/u;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/h0;->f:I

    return-void
.end method

.method private final l(I)V
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
    iput-object v0, p0, Landroidx/collection/u;->a:[J

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

    invoke-direct {p0}, Landroidx/collection/h0;->k()V

    return-void
.end method

.method private final m(I)V
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
    iput p1, p0, Landroidx/collection/u;->d:I

    invoke-direct {p0, p1}, Landroidx/collection/h0;->l(I)V

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/u;->b:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    return-void
.end method

.method private final n(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/u;->a:[J

    iget-object v2, v0, Landroidx/collection/u;->b:[J

    iget-object v3, v0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    iget v4, v0, Landroidx/collection/u;->d:I

    invoke-direct/range {p0 .. p1}, Landroidx/collection/h0;->m(I)V

    iget-object v5, v0, Landroidx/collection/u;->a:[J

    iget-object v6, v0, Landroidx/collection/u;->b:[J

    iget-object v7, v0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    iget v8, v0, Landroidx/collection/u;->d:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_1

    shr-int/lit8 v10, v9, 0x3

    aget-wide v10, v1, v10

    and-int/lit8 v12, v9, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const-wide/16 v14, 0x80

    cmp-long v10, v10, v14

    if-gez v10, :cond_0

    aget-wide v10, v2, v9

    invoke-static {v10, v11}, Landroidx/collection/s;->a(J)I

    move-result v14

    const v15, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v14, v15

    shl-int/lit8 v15, v14, 0x10

    xor-int/2addr v14, v15

    ushr-int/lit8 v15, v14, 0x7

    invoke-direct {v0, v15}, Landroidx/collection/h0;->j(I)I

    move-result v15

    and-int/lit8 v14, v14, 0x7f

    int-to-long v12, v14

    shr-int/lit8 v14, v15, 0x3

    and-int/lit8 v18, v15, 0x7

    shl-int/lit8 v18, v18, 0x3

    aget-wide v19, v5, v14

    move-object/from16 v21, v1

    const-wide/16 v16, 0xff

    shl-long v0, v16, v18

    not-long v0, v0

    and-long v0, v19, v0

    shl-long v12, v12, v18

    or-long/2addr v0, v12

    aput-wide v0, v5, v14

    add-int/lit8 v12, v15, -0x7

    and-int/2addr v12, v8

    and-int/lit8 v13, v8, 0x7

    add-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x3

    aput-wide v0, v5, v12

    aput-wide v10, v6, v15

    aget-object v0, v3, v9

    aput-object v0, v7, v15

    goto :goto_1

    :cond_0
    move-object/from16 v21, v1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/u;->e:I

    iget-object v1, p0, Landroidx/collection/u;->a:[J

    sget-object v2, Landroidx/collection/v0;->a:[J

    if-eq v1, v2, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->z([JJIIILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/collection/u;->a:[J

    iget v2, p0, Landroidx/collection/u;->d:I

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v3

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v2

    not-long v8, v6

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    :cond_0
    iget-object v1, p0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/collection/u;->d:I

    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-direct {p0}, Landroidx/collection/h0;->k()V

    return-void
.end method

.method public final o(JLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/collection/h0;->i(J)I

    move-result v0

    iget-object v1, p0, Landroidx/collection/u;->b:[J

    aput-wide p1, v1, v0

    iget-object p1, p0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    aput-object p3, p1, v0

    return-void
.end method
