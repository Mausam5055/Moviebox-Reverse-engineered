.class abstract Lorg/brotli/dec/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/brotli/dec/d;->a:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/brotli/dec/d;->b:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/brotli/dec/d;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/brotli/dec/d;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method private static a(Lorg/brotli/dec/j;)V
    .locals 6

    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    iget-object v1, p0, Lorg/brotli/dec/j;->d:[B

    iget v2, p0, Lorg/brotli/dec/j;->g:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    invoke-static {v0}, Lorg/brotli/dec/a;->k(Lorg/brotli/dec/a;)V

    iput v3, p0, Lorg/brotli/dec/j;->a:I

    return-void

    :cond_0
    iget v4, p0, Lorg/brotli/dec/j;->Q:I

    iget v5, p0, Lorg/brotli/dec/j;->r:I

    sub-int/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lorg/brotli/dec/j;->r:I

    invoke-static {v0, v1, v4, v2}, Lorg/brotli/dec/a;->c(Lorg/brotli/dec/a;[BII)V

    iget v1, p0, Lorg/brotli/dec/j;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/j;->g:I

    iget v1, p0, Lorg/brotli/dec/j;->r:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/j;->r:I

    iget v2, p0, Lorg/brotli/dec/j;->Q:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lorg/brotli/dec/j;->b:I

    iput v2, p0, Lorg/brotli/dec/j;->Y:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/brotli/dec/j;->X:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/brotli/dec/j;->a:I

    return-void

    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/a;->k(Lorg/brotli/dec/a;)V

    iput v3, p0, Lorg/brotli/dec/j;->a:I

    return-void
.end method

.method private static b(Lorg/brotli/dec/j;I)V
    .locals 7

    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    iget-object v1, p0, Lorg/brotli/dec/j;->p:[I

    mul-int/lit8 v2, p1, 0x2

    invoke-static {v0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget-object v3, p0, Lorg/brotli/dec/j;->e:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result v3

    iget-object v5, p0, Lorg/brotli/dec/j;->n:[I

    iget-object v6, p0, Lorg/brotli/dec/j;->f:[I

    invoke-static {v6, v4, v0}, Lorg/brotli/dec/d;->m([IILorg/brotli/dec/a;)I

    move-result v0

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    aget v3, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x2

    :goto_0
    iget-object p0, p0, Lorg/brotli/dec/j;->o:[I

    aget p0, p0, p1

    if-lt v3, p0, :cond_2

    sub-int/2addr v3, p0

    :cond_2
    add-int/lit8 p0, v2, 0x1

    aget p1, v1, p0

    aput p1, v1, v2

    aput v3, v1, p0

    return-void
.end method

.method private static c(Lorg/brotli/dec/j;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/brotli/dec/d;->b(Lorg/brotli/dec/j;I)V

    iget-object v0, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    iget-object v0, v0, Lorg/brotli/dec/g;->c:[I

    iget-object v1, p0, Lorg/brotli/dec/j;->p:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/j;->F:I

    return-void
.end method

.method private static d(I[BLorg/brotli/dec/a;)I
    .locals 8

    invoke-static {p2}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    invoke-static {p2}, Lorg/brotli/dec/d;->h(Lorg/brotli/dec/a;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {p1, v2, p0}, Lorg/brotli/dec/l;->a([BII)V

    return v0

    :cond_0
    invoke-static {p2, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-static {p2, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/16 v4, 0x438

    new-array v4, v4, [I

    add-int v5, v0, v3

    invoke-static {v5, v4, v2, p2}, Lorg/brotli/dec/d;->n(I[IILorg/brotli/dec/a;)V

    move v5, v2

    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    invoke-static {p2}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    invoke-static {p2}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    invoke-static {v4, v2, p2}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result v6

    if-nez v6, :cond_4

    aput-byte v2, p1, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-gt v6, v3, :cond_6

    shl-int v7, v1, v6

    invoke-static {p2, v6}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v6

    add-int/2addr v7, v6

    :goto_4
    if-eqz v7, :cond_3

    if-ge v5, p0, :cond_5

    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    goto :goto_3

    :cond_7
    invoke-static {p2, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p2

    if-ne p2, v1, :cond_8

    invoke-static {p1, p0}, Lorg/brotli/dec/d;->j([BI)V

    :cond_8
    return v0
.end method

.method private static e(Lorg/brotli/dec/j;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/brotli/dec/d;->b(Lorg/brotli/dec/j;I)V

    iget-object v1, p0, Lorg/brotli/dec/j;->p:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lorg/brotli/dec/j;->C:I

    return-void
.end method

.method private static f(Lorg/brotli/dec/j;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/brotli/dec/d;->b(Lorg/brotli/dec/j;I)V

    iget-object v0, p0, Lorg/brotli/dec/j;->p:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    iput v2, p0, Lorg/brotli/dec/j;->B:I

    iget-object v3, p0, Lorg/brotli/dec/j;->A:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/brotli/dec/j;->v:I

    iget-object v3, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    iget-object v3, v3, Lorg/brotli/dec/g;->c:[I

    aget v2, v3, v2

    iput v2, p0, Lorg/brotli/dec/j;->w:I

    iget-object v2, p0, Lorg/brotli/dec/j;->z:[B

    aget-byte v0, v2, v0

    sget-object v2, Lorg/brotli/dec/c;->b:[I

    aget v3, v2, v0

    iput v3, p0, Lorg/brotli/dec/j;->D:I

    add-int/2addr v0, v1

    aget v0, v2, v0

    iput v0, p0, Lorg/brotli/dec/j;->E:I

    return-void
.end method

.method private static g(Lorg/brotli/dec/a;Lorg/brotli/dec/j;)V
    .locals 9

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lorg/brotli/dec/j;->h:Z

    iput v2, p1, Lorg/brotli/dec/j;->g:I

    iput-boolean v2, p1, Lorg/brotli/dec/j;->i:Z

    iput-boolean v2, p1, Lorg/brotli/dec/j;->j:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_6

    iput-boolean v0, p1, Lorg/brotli/dec/j;->j:Z

    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    if-gt v1, v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    iget v5, p1, Lorg/brotli/dec/j;->g:I

    mul-int/lit8 v7, v3, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    iput v4, p1, Lorg/brotli/dec/j;->g:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted reserved bit"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_9

    invoke-static {p0, v4}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v3, :cond_8

    if-gt v3, v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    iget v7, p1, Lorg/brotli/dec/j;->g:I

    mul-int/lit8 v8, v1, 0x4

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    iput v5, p1, Lorg/brotli/dec/j;->g:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iget v1, p1, Lorg/brotli/dec/j;->g:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/brotli/dec/j;->g:I

    iget-boolean v1, p1, Lorg/brotli/dec/j;->h:Z

    if-nez v1, :cond_b

    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    iput-boolean v0, p1, Lorg/brotli/dec/j;->i:Z

    :cond_b
    return-void
.end method

.method private static h(Lorg/brotli/dec/a;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static i(Lorg/brotli/dec/j;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lorg/brotli/dec/j;->a:I

    if-eqz v1, :cond_23

    const/16 v2, 0xb

    if-eq v1, v2, :cond_22

    iget-object v1, v0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    iget v2, v0, Lorg/brotli/dec/j;->Q:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, v0, Lorg/brotli/dec/j;->d:[B

    move-object v10, v4

    :cond_0
    :goto_0
    iget v4, v0, Lorg/brotli/dec/j;->a:I

    const-string v5, "Invalid metablock length"

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1f

    const/16 v11, 0xc

    if-eq v4, v11, :cond_1c

    const/16 v12, 0x8

    const-string v6, "Invalid backward reference"

    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/brotli/dec/j;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v4, v0, Lorg/brotli/dec/j;->M:I

    if-lt v4, v7, :cond_3

    const/16 v5, 0x18

    if-gt v4, v5, :cond_3

    sget-object v5, Lorg/brotli/dec/e;->a:[I

    aget v5, v5, v4

    iget v7, v0, Lorg/brotli/dec/j;->L:I

    iget v8, v0, Lorg/brotli/dec/j;->s:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    sget-object v8, Lorg/brotli/dec/e;->b:[I

    aget v8, v8, v4

    shl-int v9, v3, v8

    sub-int/2addr v9, v3

    and-int/2addr v9, v7

    ushr-int/2addr v7, v8

    mul-int/2addr v9, v4

    add-int v8, v5, v9

    sget-object v4, Lorg/brotli/dec/k;->d:[Lorg/brotli/dec/k;

    array-length v5, v4

    if-ge v7, v5, :cond_2

    iget v5, v0, Lorg/brotli/dec/j;->N:I

    invoke-static {}, Lorg/brotli/dec/e;->a()[B

    move-result-object v6

    iget v9, v0, Lorg/brotli/dec/j;->M:I

    aget-object v13, v4, v7

    move-object v4, v10

    move v7, v8

    move v8, v9

    move-object v9, v13

    invoke-static/range {v4 .. v9}, Lorg/brotli/dec/k;->b([BI[BIILorg/brotli/dec/k;)I

    move-result v4

    iget v5, v0, Lorg/brotli/dec/j;->N:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/j;->N:I

    iget v6, v0, Lorg/brotli/dec/j;->r:I

    add-int/2addr v6, v4

    iput v6, v0, Lorg/brotli/dec/j;->r:I

    iget v6, v0, Lorg/brotli/dec/j;->g:I

    sub-int/2addr v6, v4

    iput v6, v0, Lorg/brotli/dec/j;->g:I

    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    if-lt v5, v4, :cond_1

    iput v12, v0, Lorg/brotli/dec/j;->b:I

    iput v4, v0, Lorg/brotli/dec/j;->Y:I

    iput v15, v0, Lorg/brotli/dec/j;->X:I

    iput v11, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_1
    iput v14, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    iget v5, v0, Lorg/brotli/dec/j;->N:I

    sub-int/2addr v5, v4

    invoke-static {v10, v4, v10, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v14, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :pswitch_2
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->a(Lorg/brotli/dec/j;)V

    goto/16 :goto_0

    :goto_1
    :pswitch_3
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    if-lez v4, :cond_4

    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    invoke-static {v1, v12}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    iget v4, v0, Lorg/brotli/dec/j;->g:I

    sub-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/j;->g:I

    goto :goto_1

    :cond_4
    iput v3, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :pswitch_4
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->p(Lorg/brotli/dec/j;)V

    iput v14, v0, Lorg/brotli/dec/j;->a:I

    :pswitch_5
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    if-gtz v4, :cond_5

    iput v3, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->c(Lorg/brotli/dec/j;)V

    :cond_6
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    aget v5, v4, v3

    sub-int/2addr v5, v3

    aput v5, v4, v3

    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget-object v4, v0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    iget-object v4, v4, Lorg/brotli/dec/g;->b:[I

    iget v5, v0, Lorg/brotli/dec/j;->F:I

    invoke-static {v4, v5, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x6

    iput v15, v0, Lorg/brotli/dec/j;->G:I

    if-lt v5, v13, :cond_7

    add-int/lit8 v5, v5, -0x2

    const/4 v12, -0x1

    iput v12, v0, Lorg/brotli/dec/j;->G:I

    :cond_7
    sget-object v12, Lorg/brotli/dec/i;->g:[I

    aget v12, v12, v5

    ushr-int/lit8 v16, v4, 0x3

    and-int/lit8 v16, v16, 0x7

    add-int v12, v12, v16

    sget-object v16, Lorg/brotli/dec/i;->h:[I

    aget v5, v16, v5

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v5, v4

    sget-object v4, Lorg/brotli/dec/i;->c:[I

    aget v4, v4, v12

    sget-object v16, Lorg/brotli/dec/i;->d:[I

    aget v12, v16, v12

    invoke-static {v1, v12}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Lorg/brotli/dec/j;->y:I

    sget-object v4, Lorg/brotli/dec/i;->e:[I

    aget v4, v4, v5

    sget-object v12, Lorg/brotli/dec/i;->f:[I

    aget v5, v12, v5

    invoke-static {v1, v5}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/j;->M:I

    iput v15, v0, Lorg/brotli/dec/j;->x:I

    iput v9, v0, Lorg/brotli/dec/j;->a:I

    :pswitch_6
    iget-boolean v4, v0, Lorg/brotli/dec/j;->u:Z

    if-eqz v4, :cond_a

    :cond_8
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    iget v5, v0, Lorg/brotli/dec/j;->y:I

    if-ge v4, v5, :cond_d

    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    aget v4, v4, v15

    if-nez v4, :cond_9

    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->f(Lorg/brotli/dec/j;)V

    :cond_9
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    aget v5, v4, v15

    sub-int/2addr v5, v3

    aput v5, v4, v15

    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget v4, v0, Lorg/brotli/dec/j;->r:I

    iget-object v5, v0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    iget-object v5, v5, Lorg/brotli/dec/g;->b:[I

    iget v12, v0, Lorg/brotli/dec/j;->w:I

    invoke-static {v5, v12, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    iget v4, v0, Lorg/brotli/dec/j;->x:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/j;->x:I

    iget v4, v0, Lorg/brotli/dec/j;->r:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/brotli/dec/j;->r:I

    if-ne v4, v2, :cond_8

    iput v9, v0, Lorg/brotli/dec/j;->b:I

    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    iput v4, v0, Lorg/brotli/dec/j;->Y:I

    iput v15, v0, Lorg/brotli/dec/j;->X:I

    iput v11, v0, Lorg/brotli/dec/j;->a:I

    goto :goto_3

    :cond_a
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v13

    and-int/2addr v4, v2

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    :goto_2
    iget v12, v0, Lorg/brotli/dec/j;->x:I

    iget v8, v0, Lorg/brotli/dec/j;->y:I

    if-ge v12, v8, :cond_d

    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    iget-object v8, v0, Lorg/brotli/dec/j;->n:[I

    aget v8, v8, v15

    if-nez v8, :cond_b

    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->f(Lorg/brotli/dec/j;)V

    :cond_b
    iget-object v8, v0, Lorg/brotli/dec/j;->A:[B

    iget v12, v0, Lorg/brotli/dec/j;->B:I

    sget-object v17, Lorg/brotli/dec/c;->a:[I

    iget v7, v0, Lorg/brotli/dec/j;->D:I

    add-int/2addr v7, v5

    aget v7, v17, v7

    iget v13, v0, Lorg/brotli/dec/j;->E:I

    add-int/2addr v13, v4

    aget v4, v17, v13

    or-int/2addr v4, v7

    add-int/2addr v12, v4

    aget-byte v4, v8, v12

    and-int/lit16 v4, v4, 0xff

    iget-object v7, v0, Lorg/brotli/dec/j;->n:[I

    aget v8, v7, v15

    sub-int/2addr v8, v3

    aput v8, v7, v15

    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget-object v7, v0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    iget-object v8, v7, Lorg/brotli/dec/g;->b:[I

    iget-object v7, v7, Lorg/brotli/dec/g;->c:[I

    aget v4, v7, v4

    invoke-static {v8, v4, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result v4

    iget v7, v0, Lorg/brotli/dec/j;->r:I

    int-to-byte v8, v4

    aput-byte v8, v10, v7

    iget v8, v0, Lorg/brotli/dec/j;->x:I

    add-int/2addr v8, v3

    iput v8, v0, Lorg/brotli/dec/j;->x:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/brotli/dec/j;->r:I

    if-ne v7, v2, :cond_c

    iput v9, v0, Lorg/brotli/dec/j;->b:I

    iget v4, v0, Lorg/brotli/dec/j;->Q:I

    iput v4, v0, Lorg/brotli/dec/j;->Y:I

    iput v15, v0, Lorg/brotli/dec/j;->X:I

    iput v11, v0, Lorg/brotli/dec/j;->a:I

    goto :goto_3

    :cond_c
    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v13, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_2

    :cond_d
    :goto_3
    iget v4, v0, Lorg/brotli/dec/j;->a:I

    if-eq v4, v9, :cond_e

    goto/16 :goto_0

    :cond_e
    iget v4, v0, Lorg/brotli/dec/j;->g:I

    iget v5, v0, Lorg/brotli/dec/j;->y:I

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/j;->g:I

    if-gtz v4, :cond_f

    iput v14, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_f
    iget v4, v0, Lorg/brotli/dec/j;->G:I

    if-gez v4, :cond_12

    invoke-static {v1}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-nez v4, :cond_10

    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->e(Lorg/brotli/dec/j;)V

    :cond_10
    iget-object v4, v0, Lorg/brotli/dec/j;->n:[I

    aget v7, v4, v5

    sub-int/2addr v7, v3

    aput v7, v4, v5

    invoke-static {v1}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget-object v4, v0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    iget-object v5, v4, Lorg/brotli/dec/g;->b:[I

    iget-object v4, v4, Lorg/brotli/dec/g;->c:[I

    iget-object v7, v0, Lorg/brotli/dec/j;->H:[B

    iget v8, v0, Lorg/brotli/dec/j;->C:I

    iget v9, v0, Lorg/brotli/dec/j;->M:I

    const/4 v12, 0x4

    if-le v9, v12, :cond_11

    move v9, v14

    goto :goto_4

    :cond_11
    add-int/lit8 v9, v9, -0x2

    :goto_4
    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    invoke-static {v5, v4, v1}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/j;->G:I

    iget v5, v0, Lorg/brotli/dec/j;->I:I

    if-lt v4, v5, :cond_12

    sub-int/2addr v4, v5

    iget v7, v0, Lorg/brotli/dec/j;->J:I

    and-int/2addr v7, v4

    iget v8, v0, Lorg/brotli/dec/j;->K:I

    ushr-int/2addr v4, v8

    iput v4, v0, Lorg/brotli/dec/j;->G:I

    ushr-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v3

    and-int/2addr v4, v3

    const/4 v9, 0x2

    add-int/2addr v4, v9

    shl-int/2addr v4, v8

    const/4 v9, 0x4

    sub-int/2addr v4, v9

    add-int/2addr v5, v7

    invoke-static {v1, v8}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v7

    add-int/2addr v4, v7

    iget v7, v0, Lorg/brotli/dec/j;->K:I

    shl-int/2addr v4, v7

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/j;->G:I

    :cond_12
    iget v4, v0, Lorg/brotli/dec/j;->G:I

    iget-object v5, v0, Lorg/brotli/dec/j;->q:[I

    iget v7, v0, Lorg/brotli/dec/j;->t:I

    invoke-static {v4, v5, v7}, Lorg/brotli/dec/d;->t(I[II)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/j;->L:I

    if-ltz v4, :cond_1a

    iget v5, v0, Lorg/brotli/dec/j;->s:I

    iget v7, v0, Lorg/brotli/dec/j;->O:I

    if-eq v5, v7, :cond_13

    iget v5, v0, Lorg/brotli/dec/j;->r:I

    if-ge v5, v7, :cond_13

    iput v5, v0, Lorg/brotli/dec/j;->s:I

    goto :goto_5

    :cond_13
    iput v7, v0, Lorg/brotli/dec/j;->s:I

    :goto_5
    iget v5, v0, Lorg/brotli/dec/j;->r:I

    iput v5, v0, Lorg/brotli/dec/j;->N:I

    iget v5, v0, Lorg/brotli/dec/j;->s:I

    if-le v4, v5, :cond_14

    const/16 v4, 0x9

    iput v4, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_14
    iget v5, v0, Lorg/brotli/dec/j;->G:I

    if-lez v5, :cond_15

    iget-object v5, v0, Lorg/brotli/dec/j;->q:[I

    iget v7, v0, Lorg/brotli/dec/j;->t:I

    and-int/lit8 v8, v7, 0x3

    aput v4, v5, v8

    add-int/2addr v7, v3

    iput v7, v0, Lorg/brotli/dec/j;->t:I

    :cond_15
    iget v4, v0, Lorg/brotli/dec/j;->M:I

    iget v5, v0, Lorg/brotli/dec/j;->g:I

    if-gt v4, v5, :cond_19

    iput v15, v0, Lorg/brotli/dec/j;->x:I

    const/4 v4, 0x7

    iput v4, v0, Lorg/brotli/dec/j;->a:I

    :pswitch_7
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    iget v5, v0, Lorg/brotli/dec/j;->L:I

    sub-int v5, v4, v5

    and-int/2addr v5, v2

    iget v6, v0, Lorg/brotli/dec/j;->M:I

    iget v7, v0, Lorg/brotli/dec/j;->x:I

    sub-int/2addr v6, v7

    add-int v7, v5, v6

    if-ge v7, v2, :cond_18

    add-int v7, v4, v6

    if-ge v7, v2, :cond_18

    :goto_6
    if-ge v15, v6, :cond_16

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v10, v5

    aput-byte v5, v10, v4

    add-int/lit8 v15, v15, 0x1

    move v4, v7

    move v5, v8

    goto :goto_6

    :cond_16
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/j;->x:I

    iget v4, v0, Lorg/brotli/dec/j;->g:I

    sub-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/j;->g:I

    iget v4, v0, Lorg/brotli/dec/j;->r:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/j;->r:I

    :cond_17
    const/4 v4, 0x7

    goto :goto_7

    :cond_18
    iget v4, v0, Lorg/brotli/dec/j;->x:I

    iget v5, v0, Lorg/brotli/dec/j;->M:I

    if-ge v4, v5, :cond_17

    iget v5, v0, Lorg/brotli/dec/j;->r:I

    iget v6, v0, Lorg/brotli/dec/j;->L:I

    sub-int v6, v5, v6

    and-int/2addr v6, v2

    aget-byte v6, v10, v6

    aput-byte v6, v10, v5

    iget v6, v0, Lorg/brotli/dec/j;->g:I

    sub-int/2addr v6, v3

    iput v6, v0, Lorg/brotli/dec/j;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lorg/brotli/dec/j;->x:I

    add-int/lit8 v4, v5, 0x1

    iput v4, v0, Lorg/brotli/dec/j;->r:I

    if-ne v5, v2, :cond_18

    const/4 v4, 0x7

    iput v4, v0, Lorg/brotli/dec/j;->b:I

    iget v5, v0, Lorg/brotli/dec/j;->Q:I

    iput v5, v0, Lorg/brotli/dec/j;->Y:I

    iput v15, v0, Lorg/brotli/dec/j;->X:I

    iput v11, v0, Lorg/brotli/dec/j;->a:I

    :goto_7
    iget v5, v0, Lorg/brotli/dec/j;->a:I

    if-ne v5, v4, :cond_0

    iput v14, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_19
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    iget v2, v0, Lorg/brotli/dec/j;->g:I

    if-ltz v2, :cond_1b

    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->q(Lorg/brotli/dec/j;)V

    iget v2, v0, Lorg/brotli/dec/j;->Q:I

    sub-int/2addr v2, v3

    iget-object v10, v0, Lorg/brotli/dec/j;->d:[B

    goto/16 :goto_0

    :cond_1b
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/d;->u(Lorg/brotli/dec/j;)Z

    move-result v4

    if-nez v4, :cond_1d

    return-void

    :cond_1d
    iget v4, v0, Lorg/brotli/dec/j;->r:I

    iget v5, v0, Lorg/brotli/dec/j;->O:I

    if-lt v4, v5, :cond_1e

    iput v5, v0, Lorg/brotli/dec/j;->s:I

    :cond_1e
    and-int/2addr v4, v2

    iput v4, v0, Lorg/brotli/dec/j;->r:I

    iget v4, v0, Lorg/brotli/dec/j;->b:I

    iput v4, v0, Lorg/brotli/dec/j;->a:I

    goto/16 :goto_0

    :cond_1f
    if-ne v4, v6, :cond_21

    iget v2, v0, Lorg/brotli/dec/j;->g:I

    if-ltz v2, :cond_20

    invoke-static {v1}, Lorg/brotli/dec/a;->g(Lorg/brotli/dec/a;)V

    iget-object v0, v0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    invoke-static {v0, v3}, Lorg/brotli/dec/a;->a(Lorg/brotli/dec/a;Z)V

    goto :goto_8

    :cond_20
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_8
    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static j([BI)V
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lorg/brotli/dec/d;->l([II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static k(Lorg/brotli/dec/j;)V
    .locals 6

    iget v0, p0, Lorg/brotli/dec/j;->P:I

    int-to-long v1, v0

    iget-wide v3, p0, Lorg/brotli/dec/j;->R:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    long-to-int v1, v3

    iget-object v2, p0, Lorg/brotli/dec/j;->S:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-le v2, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/j;->h:Z

    if-nez v1, :cond_1

    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    iget v2, p0, Lorg/brotli/dec/j;->P:I

    if-lt v2, v1, :cond_1

    move v0, v1

    :cond_1
    iget v1, p0, Lorg/brotli/dec/j;->Q:I

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v0, 0x25

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/brotli/dec/j;->d:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/brotli/dec/j;->S:[B

    array-length v3, v1

    if-eqz v3, :cond_5

    array-length v3, v1

    iget v5, p0, Lorg/brotli/dec/j;->O:I

    if-le v3, v5, :cond_4

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_4
    move v5, v3

    move v3, v4

    :goto_1
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lorg/brotli/dec/j;->r:I

    iput v5, p0, Lorg/brotli/dec/j;->T:I

    :cond_5
    :goto_2
    iput-object v2, p0, Lorg/brotli/dec/j;->d:[B

    iput v0, p0, Lorg/brotli/dec/j;->Q:I

    return-void
.end method

.method private static l([II)V
    .locals 2

    aget v0, p0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aput v0, p0, p1

    return-void
.end method

.method private static m([IILorg/brotli/dec/a;)I
    .locals 1

    invoke-static {p2}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    invoke-static {p0, p1, p2}, Lorg/brotli/dec/d;->r([IILorg/brotli/dec/a;)I

    move-result p0

    sget-object p1, Lorg/brotli/dec/i;->b:[I

    aget p1, p1, p0

    sget-object v0, Lorg/brotli/dec/i;->a:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static n(I[IILorg/brotli/dec/a;)V
    .locals 15

    move v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    new-array v2, v0, [I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    add-int/lit8 v4, v0, -0x1

    const/4 v7, 0x4

    new-array v7, v7, [I

    invoke-static {v1, v3}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v8

    add-int/2addr v8, v6

    move v9, v5

    :goto_0
    if-eqz v4, :cond_0

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_1

    invoke-static {v1, v9}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v10

    rem-int/2addr v10, v0

    aput v10, v7, v4

    aput v3, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aget v4, v7, v5

    aput v6, v2, v4

    if-eq v8, v6, :cond_d

    if-eq v8, v3, :cond_5

    const/4 v4, 0x3

    if-eq v8, v4, :cond_4

    aget v8, v7, v5

    aget v9, v7, v6

    if-eq v8, v9, :cond_2

    aget v10, v7, v3

    if-eq v8, v10, :cond_2

    aget v11, v7, v4

    if-eq v8, v11, :cond_2

    if-eq v9, v10, :cond_2

    if-eq v9, v11, :cond_2

    if-eq v10, v11, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    invoke-static {v1, v6}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    aget v1, v7, v3

    aput v4, v2, v1

    aget v1, v7, v4

    aput v4, v2, v1

    goto :goto_3

    :cond_3
    aget v1, v7, v5

    aput v3, v2, v1

    :goto_3
    move v6, v8

    goto :goto_6

    :cond_4
    aget v1, v7, v5

    aget v4, v7, v6

    if-eq v1, v4, :cond_c

    aget v3, v7, v3

    if-eq v1, v3, :cond_c

    if-eq v4, v3, :cond_c

    move v5, v6

    goto :goto_5

    :cond_5
    aget v1, v7, v5

    aget v3, v7, v6

    if-eq v1, v3, :cond_6

    move v5, v6

    :cond_6
    aput v6, v2, v3

    goto :goto_5

    :cond_7
    const/16 v3, 0x12

    new-array v7, v3, [I

    const/16 v8, 0x20

    move v10, v5

    move v9, v8

    :goto_4
    if-ge v4, v3, :cond_9

    if-lez v9, :cond_9

    sget-object v11, Lorg/brotli/dec/d;->a:[I

    aget v11, v11, v4

    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget-wide v12, v1, Lorg/brotli/dec/a;->f:J

    iget v14, v1, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0xf

    sget-object v13, Lorg/brotli/dec/d;->d:[I

    aget v12, v13, v12

    shr-int/lit8 v13, v12, 0x10

    add-int/2addr v14, v13

    iput v14, v1, Lorg/brotli/dec/a;->g:I

    const v13, 0xffff

    and-int/2addr v12, v13

    aput v12, v7, v11

    if-eqz v12, :cond_8

    shr-int v11, v8, v12

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eq v10, v6, :cond_a

    if-nez v9, :cond_b

    :cond_a
    move v5, v6

    :cond_b
    invoke-static {v7, p0, v2, v1}, Lorg/brotli/dec/d;->o([II[ILorg/brotli/dec/a;)V

    :cond_c
    :goto_5
    move v6, v5

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    const/16 v1, 0x8

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v3, v4, v1, v2, p0}, Lorg/brotli/dec/f;->a([III[II)V

    return-void

    :cond_e
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static o([II[ILorg/brotli/dec/a;)V
    .locals 10

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x5

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p0, v2}, Lorg/brotli/dec/f;->a([III[II)V

    const/16 p0, 0x8

    const v1, 0x8000

    move v4, v1

    move v2, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v2, p1, :cond_8

    if-lez v4, :cond_8

    invoke-static {p3}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    invoke-static {p3}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    iget-wide v7, p3, Lorg/brotli/dec/a;->f:J

    iget v9, p3, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget v7, v0, v7

    shr-int/lit8 v8, v7, 0x10

    add-int/2addr v9, v8

    iput v9, p3, Lorg/brotli/dec/a;->g:I

    const v8, 0xffff

    and-int/2addr v7, v8

    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    add-int/lit8 v6, v2, 0x1

    aput v7, p2, v2

    if-eqz v7, :cond_0

    shr-int p0, v1, v7

    sub-int/2addr v4, p0

    move v2, v6

    move p0, v7

    :goto_1
    move v6, v3

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v7, -0xe

    if-ne v7, v8, :cond_2

    move v7, p0

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eq v5, v7, :cond_3

    move v6, v3

    move v5, v7

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v9

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    invoke-static {p3, v9}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v2, v6

    if-gt v8, p1, :cond_7

    move v8, v3

    :goto_4
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v2, 0x1

    aput v5, p2, v2

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v6, v8

    sub-int/2addr v4, v6

    :cond_6
    move v6, v7

    goto :goto_0

    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v4, :cond_9

    sub-int/2addr p1, v2

    invoke-static {p2, v2, p1}, Lorg/brotli/dec/l;->b([III)V

    return-void

    :cond_9
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static p(Lorg/brotli/dec/j;)V
    .locals 12

    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/brotli/dec/j;->o:[I

    invoke-static {v0}, Lorg/brotli/dec/d;->h(Lorg/brotli/dec/a;)I

    move-result v5

    add-int/2addr v5, v4

    aput v5, v3, v2

    iget-object v3, p0, Lorg/brotli/dec/j;->n:[I

    const/high16 v5, 0x10000000

    aput v5, v3, v2

    iget-object v3, p0, Lorg/brotli/dec/j;->o:[I

    aget v3, v3, v2

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/brotli/dec/j;->e:[I

    mul-int/lit16 v5, v2, 0x438

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/d;->n(I[IILorg/brotli/dec/a;)V

    const/16 v3, 0x1a

    iget-object v4, p0, Lorg/brotli/dec/j;->f:[I

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/d;->n(I[IILorg/brotli/dec/a;)V

    iget-object v3, p0, Lorg/brotli/dec/j;->n:[I

    iget-object v4, p0, Lorg/brotli/dec/j;->f:[I

    invoke-static {v4, v5, v0}, Lorg/brotli/dec/d;->m([IILorg/brotli/dec/a;)I

    move-result v4

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v5

    iput v5, p0, Lorg/brotli/dec/j;->K:I

    const/4 v5, 0x4

    invoke-static {v0, v5}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v6

    iget v7, p0, Lorg/brotli/dec/j;->K:I

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/brotli/dec/j;->I:I

    shl-int v8, v4, v7

    sub-int/2addr v8, v4

    iput v8, p0, Lorg/brotli/dec/j;->J:I

    const/16 v8, 0x30

    shl-int v7, v8, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/brotli/dec/j;->o:[I

    aget v7, v7, v1

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/j;->z:[B

    move v7, v1

    :goto_1
    iget-object v8, p0, Lorg/brotli/dec/j;->o:[I

    aget v8, v8, v1

    if-ge v7, v8, :cond_3

    add-int/lit8 v9, v7, 0x60

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    iget-object v9, p0, Lorg/brotli/dec/j;->z:[B

    invoke-static {v0, v2}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result v10

    shl-int/2addr v10, v4

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    goto :goto_1

    :cond_3
    shl-int/lit8 v7, v8, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/j;->A:[B

    shl-int/lit8 v8, v8, 0x6

    invoke-static {v8, v7, v0}, Lorg/brotli/dec/d;->d(I[BLorg/brotli/dec/a;)I

    move-result v7

    iput-boolean v4, p0, Lorg/brotli/dec/j;->u:Z

    move v8, v1

    :goto_3
    iget-object v9, p0, Lorg/brotli/dec/j;->o:[I

    aget v10, v9, v1

    shl-int/lit8 v10, v10, 0x6

    if-ge v8, v10, :cond_5

    iget-object v10, p0, Lorg/brotli/dec/j;->A:[B

    aget-byte v10, v10, v8

    shr-int/lit8 v11, v8, 0x6

    if-eq v10, v11, :cond_4

    iput-boolean v1, p0, Lorg/brotli/dec/j;->u:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    aget v8, v9, v2

    shl-int/lit8 v9, v8, 0x2

    new-array v9, v9, [B

    iput-object v9, p0, Lorg/brotli/dec/j;->H:[B

    shl-int/2addr v8, v2

    invoke-static {v8, v9, v0}, Lorg/brotli/dec/d;->d(I[BLorg/brotli/dec/a;)I

    move-result v8

    iget-object v9, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    const/16 v10, 0x100

    invoke-static {v9, v10, v7}, Lorg/brotli/dec/g;->b(Lorg/brotli/dec/g;II)V

    iget-object v7, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    iget-object v9, p0, Lorg/brotli/dec/j;->o:[I

    aget v9, v9, v4

    const/16 v10, 0x2c0

    invoke-static {v7, v10, v9}, Lorg/brotli/dec/g;->b(Lorg/brotli/dec/g;II)V

    iget-object v7, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    invoke-static {v7, v6, v8}, Lorg/brotli/dec/g;->b(Lorg/brotli/dec/g;II)V

    iget-object v6, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    invoke-static {v6, v0}, Lorg/brotli/dec/g;->a(Lorg/brotli/dec/g;Lorg/brotli/dec/a;)V

    iget-object v6, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    invoke-static {v6, v0}, Lorg/brotli/dec/g;->a(Lorg/brotli/dec/g;Lorg/brotli/dec/a;)V

    iget-object v6, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    invoke-static {v6, v0}, Lorg/brotli/dec/g;->a(Lorg/brotli/dec/g;Lorg/brotli/dec/a;)V

    iput v1, p0, Lorg/brotli/dec/j;->B:I

    iput v1, p0, Lorg/brotli/dec/j;->C:I

    sget-object v0, Lorg/brotli/dec/c;->b:[I

    iget-object v6, p0, Lorg/brotli/dec/j;->z:[B

    aget-byte v6, v6, v1

    aget v7, v0, v6

    iput v7, p0, Lorg/brotli/dec/j;->D:I

    add-int/2addr v6, v4

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/j;->E:I

    iput v1, p0, Lorg/brotli/dec/j;->v:I

    iget-object v0, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    iget-object v0, v0, Lorg/brotli/dec/g;->c:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/j;->w:I

    iget-object v0, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    iget-object v0, v0, Lorg/brotli/dec/g;->c:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/j;->F:I

    iget-object p0, p0, Lorg/brotli/dec/j;->p:[I

    aput v4, p0, v5

    aput v4, p0, v2

    aput v4, p0, v1

    const/4 v0, 0x5

    aput v1, p0, v0

    aput v1, p0, v3

    aput v1, p0, v4

    return-void
.end method

.method private static q(Lorg/brotli/dec/j;)V
    .locals 4

    iget-object v0, p0, Lorg/brotli/dec/j;->c:Lorg/brotli/dec/a;

    iget-boolean v1, p0, Lorg/brotli/dec/j;->h:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    iput v0, p0, Lorg/brotli/dec/j;->b:I

    iget v0, p0, Lorg/brotli/dec/j;->r:I

    iput v0, p0, Lorg/brotli/dec/j;->Y:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/brotli/dec/j;->X:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/brotli/dec/j;->a:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/brotli/dec/j;->k:Lorg/brotli/dec/g;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/brotli/dec/g;->b:[I

    iput-object v2, v1, Lorg/brotli/dec/g;->c:[I

    iget-object v1, p0, Lorg/brotli/dec/j;->l:Lorg/brotli/dec/g;

    iput-object v2, v1, Lorg/brotli/dec/g;->b:[I

    iput-object v2, v1, Lorg/brotli/dec/g;->c:[I

    iget-object v1, p0, Lorg/brotli/dec/j;->m:Lorg/brotli/dec/g;

    iput-object v2, v1, Lorg/brotli/dec/g;->b:[I

    iput-object v2, v1, Lorg/brotli/dec/g;->c:[I

    invoke-static {v0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    invoke-static {v0, p0}, Lorg/brotli/dec/d;->g(Lorg/brotli/dec/a;Lorg/brotli/dec/j;)V

    iget v1, p0, Lorg/brotli/dec/j;->g:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/brotli/dec/j;->j:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/brotli/dec/j;->i:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/brotli/dec/j;->j:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/brotli/dec/j;->a:I

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/a;->g(Lorg/brotli/dec/a;)V

    iget-boolean v0, p0, Lorg/brotli/dec/j;->j:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lorg/brotli/dec/j;->a:I

    :goto_2
    iget-boolean v0, p0, Lorg/brotli/dec/j;->j:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lorg/brotli/dec/j;->R:J

    iget v2, p0, Lorg/brotli/dec/j;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/j;->R:J

    iget v0, p0, Lorg/brotli/dec/j;->Q:I

    iget v1, p0, Lorg/brotli/dec/j;->P:I

    if-ge v0, v1, :cond_6

    invoke-static {p0}, Lorg/brotli/dec/d;->k(Lorg/brotli/dec/j;)V

    :cond_6
    return-void
.end method

.method private static r([IILorg/brotli/dec/a;)I
    .locals 6

    iget-wide v0, p2, Lorg/brotli/dec/a;->f:J

    iget v2, p2, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v1, v0, 0xff

    add-int/2addr p1, v1

    aget v1, p0, p1

    shr-int/lit8 v3, v1, 0x10

    const v4, 0xffff

    and-int/2addr v1, v4

    const/16 v5, 0x8

    if-gt v3, v5, :cond_0

    add-int/2addr v2, v3

    iput v2, p2, Lorg/brotli/dec/a;->g:I

    return v1

    :cond_0
    add-int/2addr p1, v1

    const/4 v1, 0x1

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    and-int/2addr v0, v3

    ushr-int/2addr v0, v5

    add-int/2addr p1, v0

    aget p0, p0, p1

    shr-int/lit8 p1, p0, 0x10

    add-int/2addr p1, v5

    add-int/2addr v2, p1

    iput v2, p2, Lorg/brotli/dec/a;->g:I

    and-int/2addr p0, v4

    return p0
.end method

.method static s(Lorg/brotli/dec/j;[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    :cond_0
    iput-object p1, p0, Lorg/brotli/dec/j;->S:[B

    return-void
.end method

.method private static t(I[II)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/brotli/dec/d;->b:[I

    aget v0, v0, p0

    add-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x3

    aget p1, p1, p2

    sget-object p2, Lorg/brotli/dec/d;->c:[I

    aget p0, p2, p0

    add-int/2addr p1, p0

    return p1

    :cond_0
    add-int/lit8 p0, p0, -0xf

    return p0
.end method

.method private static u(Lorg/brotli/dec/j;)Z
    .locals 7

    iget v0, p0, Lorg/brotli/dec/j;->T:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/brotli/dec/j;->X:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/j;->X:I

    iput v1, p0, Lorg/brotli/dec/j;->T:I

    :cond_0
    iget v0, p0, Lorg/brotli/dec/j;->V:I

    iget v2, p0, Lorg/brotli/dec/j;->W:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/brotli/dec/j;->Y:I

    iget v3, p0, Lorg/brotli/dec/j;->X:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/brotli/dec/j;->d:[B

    iget v3, p0, Lorg/brotli/dec/j;->X:I

    iget-object v4, p0, Lorg/brotli/dec/j;->Z:[B

    iget v5, p0, Lorg/brotli/dec/j;->U:I

    iget v6, p0, Lorg/brotli/dec/j;->W:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/brotli/dec/j;->W:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/j;->W:I

    iget v2, p0, Lorg/brotli/dec/j;->X:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/j;->X:I

    :cond_1
    iget v0, p0, Lorg/brotli/dec/j;->W:I

    iget p0, p0, Lorg/brotli/dec/j;->V:I

    if-ge v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
