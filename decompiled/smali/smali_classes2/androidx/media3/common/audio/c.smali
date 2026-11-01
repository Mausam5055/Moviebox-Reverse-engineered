.class final Landroidx/media3/common/audio/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:[S

.field private j:[S

.field private k:I

.field private l:[S

.field private m:I

.field private n:[S

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:D


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/audio/c;->a:I

    iput p2, p0, Landroidx/media3/common/audio/c;->b:I

    iput p3, p0, Landroidx/media3/common/audio/c;->c:F

    iput p4, p0, Landroidx/media3/common/audio/c;->d:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    iput p3, p0, Landroidx/media3/common/audio/c;->e:F

    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Landroidx/media3/common/audio/c;->f:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Landroidx/media3/common/audio/c;->g:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/media3/common/audio/c;->h:I

    new-array p3, p1, [S

    iput-object p3, p0, Landroidx/media3/common/audio/c;->i:[S

    mul-int p3, p1, p2

    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media3/common/audio/c;->j:[S

    mul-int p3, p1, p2

    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media3/common/audio/c;->l:[S

    mul-int/2addr p1, p2

    new-array p1, p1, [S

    iput-object p1, p0, Landroidx/media3/common/audio/c;->n:[S

    return-void
.end method

.method private a(FI)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v0, p2

    iget v1, v7, Landroidx/media3/common/audio/c;->m:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget v1, v7, Landroidx/media3/common/audio/c;->a:I

    int-to-float v2, v1

    div-float v2, v2, p1

    float-to-long v2, v2

    int-to-long v4, v1

    move-wide v8, v2

    move-wide v10, v4

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, v8, v1

    if-eqz v3, :cond_1

    cmp-long v3, v10, v1

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x2

    rem-long v5, v8, v3

    cmp-long v5, v5, v1

    if-nez v5, :cond_1

    rem-long v5, v10, v3

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    div-long/2addr v8, v3

    div-long/2addr v10, v3

    goto :goto_0

    :cond_1
    invoke-direct {v7, v0}, Landroidx/media3/common/audio/c;->o(I)V

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    iget v0, v7, Landroidx/media3/common/audio/c;->o:I

    add-int/lit8 v1, v0, -0x1

    const/4 v14, 0x1

    if-ge v13, v1, :cond_6

    :goto_2
    iget v0, v7, Landroidx/media3/common/audio/c;->p:I

    add-int/lit8 v1, v0, 0x1

    int-to-long v1, v1

    mul-long/2addr v1, v8

    iget v3, v7, Landroidx/media3/common/audio/c;->q:I

    int-to-long v4, v3

    mul-long/2addr v4, v10

    cmp-long v1, v1, v4

    if-lez v1, :cond_3

    iget-object v0, v7, Landroidx/media3/common/audio/c;->l:[S

    iget v1, v7, Landroidx/media3/common/audio/c;->m:I

    invoke-direct {v7, v0, v1, v14}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v0

    iput-object v0, v7, Landroidx/media3/common/audio/c;->l:[S

    move v15, v12

    :goto_3
    iget v0, v7, Landroidx/media3/common/audio/c;->b:I

    if-ge v15, v0, :cond_2

    iget-object v5, v7, Landroidx/media3/common/audio/c;->l:[S

    iget v1, v7, Landroidx/media3/common/audio/c;->m:I

    mul-int/2addr v1, v0

    add-int v16, v1, v15

    iget-object v1, v7, Landroidx/media3/common/audio/c;->n:[S

    mul-int/2addr v0, v13

    add-int v2, v0, v15

    move-object/from16 v0, p0

    move-wide v3, v10

    move-object/from16 v17, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/audio/c;->n([SIJJ)S

    move-result v0

    aput-short v0, v17, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    iget v0, v7, Landroidx/media3/common/audio/c;->q:I

    add-int/2addr v0, v14

    iput v0, v7, Landroidx/media3/common/audio/c;->q:I

    iget v0, v7, Landroidx/media3/common/audio/c;->m:I

    add-int/2addr v0, v14

    iput v0, v7, Landroidx/media3/common/audio/c;->m:I

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Landroidx/media3/common/audio/c;->p:I

    int-to-long v0, v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    iput v12, v7, Landroidx/media3/common/audio/c;->p:I

    int-to-long v0, v3

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v14, v12

    :goto_4
    invoke-static {v14}, Landroidx/media3/common/util/a;->g(Z)V

    iput v12, v7, Landroidx/media3/common/audio/c;->q:I

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v0, v14

    invoke-direct {v7, v0}, Landroidx/media3/common/audio/c;->u(I)V

    return-void
.end method

.method private b(D)V
    .locals 9

    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    iget v1, p0, Landroidx/media3/common/audio/c;->h:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/c;->r:I

    if-lez v2, :cond_2

    invoke-direct {p0, v1}, Landroidx/media3/common/audio/c;->c(I)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    invoke-direct {p0, v2, v1}, Landroidx/media3/common/audio/c;->g([SI)I

    move-result v8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_3

    iget-object v3, p0, Landroidx/media3/common/audio/c;->j:[S

    move-object v2, p0

    move v4, v1

    move-wide v5, p1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/c;->w([SIDI)I

    move-result v2

    add-int/2addr v8, v2

    add-int/2addr v1, v8

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/media3/common/audio/c;->j:[S

    move-object v2, p0

    move v4, v1

    move-wide v5, p1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/c;->m([SIDI)I

    move-result v2

    goto :goto_0

    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/c;->h:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    invoke-direct {p0, v1}, Landroidx/media3/common/audio/c;->v(I)V

    return-void
.end method

.method private c(I)I
    .locals 2

    iget v0, p0, Landroidx/media3/common/audio/c;->h:I

    iget v1, p0, Landroidx/media3/common/audio/c;->r:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/c;->d([SII)V

    iget p1, p0, Landroidx/media3/common/audio/c;->r:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/c;->r:I

    return v0
.end method

.method private d([SII)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/audio/c;->l:[S

    iget v1, p0, Landroidx/media3/common/audio/c;->m:I

    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/c;->l:[S

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr p2, v1

    iget v2, p0, Landroidx/media3/common/audio/c;->m:I

    mul-int/2addr v2, v1

    mul-int/2addr v1, p3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/common/audio/c;->m:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/common/audio/c;->m:I

    return-void
.end method

.method private e([SII)V
    .locals 6

    iget v0, p0, Landroidx/media3/common/audio/c;->h:I

    div-int/2addr v0, p3

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr p3, v1

    mul-int/2addr p2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    div-int/2addr v4, p3

    iget-object v3, p0, Landroidx/media3/common/audio/c;->i:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f([SII)[S
    .locals 2

    array-length v0, p1

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

.method private g([SI)I
    .locals 6

    iget v0, p0, Landroidx/media3/common/audio/c;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xfa0

    if-le v0, v2, :cond_0

    div-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/c;->b:I

    if-ne v2, v1, :cond_1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/c;->f:I

    iget v1, p0, Landroidx/media3/common/audio/c;->g:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/audio/c;->h([SIII)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/audio/c;->e([SII)V

    iget-object v2, p0, Landroidx/media3/common/audio/c;->i:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->f:I

    div-int/2addr v3, v0

    iget v4, p0, Landroidx/media3/common/audio/c;->g:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Landroidx/media3/common/audio/c;->h([SIII)I

    move-result v2

    if-eq v0, v1, :cond_5

    mul-int/2addr v2, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int v3, v2, v0

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/media3/common/audio/c;->f:I

    if-ge v3, v0, :cond_2

    move v3, v0

    :cond_2
    iget v0, p0, Landroidx/media3/common/audio/c;->g:I

    if-le v2, v0, :cond_3

    move v2, v0

    :cond_3
    iget v0, p0, Landroidx/media3/common/audio/c;->b:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1, p2, v3, v2}, Landroidx/media3/common/audio/c;->h([SIII)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroidx/media3/common/audio/c;->e([SII)V

    iget-object p1, p0, Landroidx/media3/common/audio/c;->i:[S

    invoke-direct {p0, p1, v5, v3, v2}, Landroidx/media3/common/audio/c;->h([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    iget p2, p0, Landroidx/media3/common/audio/c;->u:I

    iget v0, p0, Landroidx/media3/common/audio/c;->v:I

    invoke-direct {p0, p2, v0}, Landroidx/media3/common/audio/c;->q(II)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Landroidx/media3/common/audio/c;->s:I

    goto :goto_2

    :cond_6
    move p2, p1

    :goto_2
    iget v0, p0, Landroidx/media3/common/audio/c;->u:I

    iput v0, p0, Landroidx/media3/common/audio/c;->t:I

    iput p1, p0, Landroidx/media3/common/audio/c;->s:I

    return p2
.end method

.method private h([SIII)I
    .locals 9

    iget v0, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    move v3, v0

    move v4, v3

    :goto_0
    if-gt p3, p4, :cond_3

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v2, p3

    if-ge v5, v7, :cond_1

    move v3, p3

    move v2, v6

    :cond_1
    mul-int v5, v6, v1

    mul-int v7, v4, p3

    if-le v5, v7, :cond_2

    move v1, p3

    move v4, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    div-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/common/audio/c;->u:I

    div-int/2addr v4, v1

    iput v4, p0, Landroidx/media3/common/audio/c;->v:I

    return v3
.end method

.method private m([SIDI)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p3, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    int-to-double v5, v1

    mul-double v5, v5, p3

    sub-double v3, v3, p3

    div-double/2addr v5, v3

    iget-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    add-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-double v3, v2

    sub-double/2addr v5, v3

    iput-wide v5, v0, Landroidx/media3/common/audio/c;->w:D

    goto :goto_0

    :cond_0
    int-to-double v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v7, v7, p3

    sub-double/2addr v7, v3

    mul-double/2addr v5, v7

    sub-double v3, v3, p3

    div-double/2addr v5, v3

    iget-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    add-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroidx/media3/common/audio/c;->r:I

    int-to-double v2, v2

    sub-double/2addr v5, v2

    iput-wide v5, v0, Landroidx/media3/common/audio/c;->w:D

    move v2, v1

    :goto_0
    iget-object v3, v0, Landroidx/media3/common/audio/c;->l:[S

    iget v4, v0, Landroidx/media3/common/audio/c;->m:I

    add-int v5, v1, v2

    invoke-direct {p0, v3, v4, v5}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/common/audio/c;->l:[S

    iget v4, v0, Landroidx/media3/common/audio/c;->b:I

    mul-int v6, p2, v4

    iget v7, v0, Landroidx/media3/common/audio/c;->m:I

    mul-int/2addr v7, v4

    mul-int/2addr v4, v1

    move-object/from16 v13, p1

    invoke-static {v13, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v0, Landroidx/media3/common/audio/c;->b:I

    iget-object v9, v0, Landroidx/media3/common/audio/c;->l:[S

    iget v3, v0, Landroidx/media3/common/audio/c;->m:I

    add-int v10, v3, v1

    add-int v12, p2, v1

    move v7, v2

    move-object/from16 v11, p1

    move/from16 v14, p2

    invoke-static/range {v7 .. v14}, Landroidx/media3/common/audio/c;->p(II[SI[SI[SI)V

    iget v1, v0, Landroidx/media3/common/audio/c;->m:I

    add-int/2addr v1, v5

    iput v1, v0, Landroidx/media3/common/audio/c;->m:I

    return v2
.end method

.method private n([SIJJ)S
    .locals 5

    aget-short v0, p1, p2

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    add-int/2addr p2, v1

    aget-short p1, p1, p2

    iget p2, p0, Landroidx/media3/common/audio/c;->q:I

    int-to-long v1, p2

    mul-long/2addr v1, p3

    iget p2, p0, Landroidx/media3/common/audio/c;->p:I

    int-to-long p3, p2

    mul-long/2addr p3, p5

    add-int/lit8 p2, p2, 0x1

    int-to-long v3, p2

    mul-long/2addr v3, p5

    sub-long p5, v3, v1

    sub-long/2addr v3, p3

    int-to-long p2, v0

    mul-long/2addr p2, p5

    sub-long p4, v3, p5

    int-to-long v0, p1

    mul-long/2addr p4, v0

    add-long/2addr p2, p4

    div-long/2addr p2, v3

    long-to-int p1, p2

    int-to-short p1, p1

    return p1
.end method

.method private o(I)V
    .locals 6

    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Landroidx/media3/common/audio/c;->n:[S

    iget v2, p0, Landroidx/media3/common/audio/c;->o:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/c;->n:[S

    iget-object v2, p0, Landroidx/media3/common/audio/c;->l:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int v4, p1, v3

    iget v5, p0, Landroidx/media3/common/audio/c;->o:I

    mul-int/2addr v5, v3

    mul-int/2addr v3, v0

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Landroidx/media3/common/audio/c;->m:I

    iget p1, p0, Landroidx/media3/common/audio/c;->o:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/c;->o:I

    return-void
.end method

.method private static p(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v0

    :goto_1
    if-ge v5, p0, :cond_0

    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int/2addr v6, v7

    aget-short v7, p6, v3

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private q(II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/media3/common/audio/c;->s:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_1

    return v0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    iget p2, p0, Landroidx/media3/common/audio/c;->t:I

    mul-int/lit8 p2, p2, 0x3

    if-gt p1, p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private r()V
    .locals 7

    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    iget v1, p0, Landroidx/media3/common/audio/c;->c:F

    iget v2, p0, Landroidx/media3/common/audio/c;->d:F

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget v1, p0, Landroidx/media3/common/audio/c;->e:F

    mul-float/2addr v1, v2

    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v2, v3, v5

    if-gtz v2, :cond_1

    const-wide v5, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v2, v3, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->k:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3}, Landroidx/media3/common/audio/c;->d([SII)V

    iput v4, p0, Landroidx/media3/common/audio/c;->k:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v3, v4}, Landroidx/media3/common/audio/c;->b(D)V

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, v0}, Landroidx/media3/common/audio/c;->a(FI)V

    :cond_2
    return-void
.end method

.method private u(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/c;->n:[S

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int v2, p1, v1

    iget v3, p0, Landroidx/media3/common/audio/c;->o:I

    sub-int/2addr v3, p1

    mul-int/2addr v3, v1

    const/4 v1, 0x0

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroidx/media3/common/audio/c;->o:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/audio/c;->o:I

    return-void
.end method

.method private v(I)V
    .locals 4

    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    iget v2, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr p1, v2

    const/4 v3, 0x0

    mul-int/2addr v2, v0

    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroidx/media3/common/audio/c;->k:I

    return-void
.end method

.method private w([SIDI)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, p3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-ltz v4, :cond_0

    int-to-double v2, v1

    sub-double v4, p3, v5

    div-double/2addr v2, v4

    iget-wide v4, v0, Landroidx/media3/common/audio/c;->w:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-double v5, v4

    sub-double/2addr v2, v5

    iput-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    goto :goto_0

    :cond_0
    int-to-double v7, v1

    sub-double v2, v2, p3

    mul-double/2addr v7, v2

    sub-double v2, p3, v5

    div-double/2addr v7, v2

    iget-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    add-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroidx/media3/common/audio/c;->r:I

    int-to-double v2, v2

    sub-double/2addr v7, v2

    iput-wide v7, v0, Landroidx/media3/common/audio/c;->w:D

    move v4, v1

    :goto_0
    iget-object v2, v0, Landroidx/media3/common/audio/c;->l:[S

    iget v3, v0, Landroidx/media3/common/audio/c;->m:I

    invoke-direct {v0, v2, v3, v4}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v11

    iput-object v11, v0, Landroidx/media3/common/audio/c;->l:[S

    iget v10, v0, Landroidx/media3/common/audio/c;->b:I

    iget v12, v0, Landroidx/media3/common/audio/c;->m:I

    add-int v16, p2, v1

    move v9, v4

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v16}, Landroidx/media3/common/audio/c;->p(II[SI[SI[SI)V

    iget v1, v0, Landroidx/media3/common/audio/c;->m:I

    add-int/2addr v1, v4

    iput v1, v0, Landroidx/media3/common/audio/c;->m:I

    return v4
.end method


# virtual methods
.method public i()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/c;->k:I

    iput v0, p0, Landroidx/media3/common/audio/c;->m:I

    iput v0, p0, Landroidx/media3/common/audio/c;->o:I

    iput v0, p0, Landroidx/media3/common/audio/c;->p:I

    iput v0, p0, Landroidx/media3/common/audio/c;->q:I

    iput v0, p0, Landroidx/media3/common/audio/c;->r:I

    iput v0, p0, Landroidx/media3/common/audio/c;->s:I

    iput v0, p0, Landroidx/media3/common/audio/c;->t:I

    iput v0, p0, Landroidx/media3/common/audio/c;->u:I

    iput v0, p0, Landroidx/media3/common/audio/c;->v:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/audio/c;->w:D

    return-void
.end method

.method public j(Ljava/nio/ShortBuffer;)V
    .locals 4

    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v2, p0, Landroidx/media3/common/audio/c;->b:I

    div-int/2addr v0, v2

    iget v2, p0, Landroidx/media3/common/audio/c;->m:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/common/audio/c;->l:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr v3, v0

    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Landroidx/media3/common/audio/c;->m:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/c;->m:I

    iget-object v2, p0, Landroidx/media3/common/audio/c;->l:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr v0, v3

    mul-int/2addr p1, v3

    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public k()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public l()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public s()V
    .locals 10

    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    iget v1, p0, Landroidx/media3/common/audio/c;->c:F

    iget v2, p0, Landroidx/media3/common/audio/c;->d:F

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget v1, p0, Landroidx/media3/common/audio/c;->e:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iget v5, p0, Landroidx/media3/common/audio/c;->r:I

    sub-int v6, v0, v5

    iget v7, p0, Landroidx/media3/common/audio/c;->m:I

    int-to-double v8, v6

    div-double/2addr v8, v3

    int-to-double v3, v5

    add-double/2addr v8, v3

    iget-wide v3, p0, Landroidx/media3/common/audio/c;->w:D

    add-double/2addr v8, v3

    iget v3, p0, Landroidx/media3/common/audio/c;->o:I

    int-to-double v3, v3

    add-double/2addr v8, v3

    div-double/2addr v8, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v1

    double-to-int v1, v8

    add-int/2addr v7, v1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/common/audio/c;->w:D

    iget-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    iget v2, p0, Landroidx/media3/common/audio/c;->h:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v0, v2}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/media3/common/audio/c;->h:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v3, p0, Landroidx/media3/common/audio/c;->j:[S

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    aput-short v1, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/common/audio/c;->k:I

    invoke-direct {p0}, Landroidx/media3/common/audio/c;->r()V

    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    if-le v0, v7, :cond_1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/audio/c;->m:I

    :cond_1
    iput v1, p0, Landroidx/media3/common/audio/c;->k:I

    iput v1, p0, Landroidx/media3/common/audio/c;->r:I

    iput v1, p0, Landroidx/media3/common/audio/c;->o:I

    return-void
.end method

.method public t(Ljava/nio/ShortBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->k:I

    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/common/audio/c;->f([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    iget v3, p0, Landroidx/media3/common/audio/c;->k:I

    iget v4, p0, Landroidx/media3/common/audio/c;->b:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Landroidx/media3/common/audio/c;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/c;->k:I

    invoke-direct {p0}, Landroidx/media3/common/audio/c;->r()V

    return-void
.end method
