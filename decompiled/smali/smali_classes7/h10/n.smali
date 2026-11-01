.class Lh10/n;
.super Ljava/lang/Object;


# instance fields
.field a:Lh10/q;

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:S

.field private g:S

.field private h:I

.field private i:[I


# direct methods
.method constructor <init>(Lh10/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh10/n;->a:Lh10/q;

    return-void
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lh10/n;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lh10/n;->i:[I

    :cond_0
    iget-object v0, p0, Lh10/n;->i:[I

    array-length v0, v0

    iget v1, p0, Lh10/n;->h:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lh10/n;->i:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lh10/n;->i:[I

    :cond_1
    iget-object v0, p0, Lh10/n;->i:[I

    iget v1, p0, Lh10/n;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh10/n;->h:I

    aput p1, v0, v1

    return-void
.end method

.method static e(Lh10/x;Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lh10/y;->k(Ljava/lang/String;)Lh10/y;

    move-result-object p1

    invoke-virtual {p1}, Lh10/y;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lh10/n;->f(Lh10/x;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lh10/q;

    iget p1, p1, Lh10/q;->d:I

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lh10/x;->K(Ljava/lang/String;I)I

    move-result p0

    const/high16 p1, 0x3000000

    or-int/2addr p0, p1

    return p0
.end method

.method private static f(Lh10/x;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x1000002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_c

    const/high16 v5, 0x2000000

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_b

    const v7, 0x1000001

    const/16 v8, 0x53

    if-eq v2, v8, :cond_a

    const/16 v9, 0x56

    if-eq v2, v9, :cond_9

    const/16 v9, 0x49

    if-eq v2, v9, :cond_a

    const v10, 0x1000004

    const/16 v11, 0x4a

    if-eq v2, v11, :cond_8

    const/16 v12, 0x5a

    if-eq v2, v12, :cond_a

    const v13, 0x1000003

    const/16 v14, 0x5b

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    return v13

    :cond_0
    add-int/lit8 v2, p2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_7

    if-eq v14, v6, :cond_6

    if-eq v14, v8, :cond_5

    if-eq v14, v12, :cond_4

    if-eq v14, v9, :cond_3

    if-eq v14, v11, :cond_2

    packed-switch v14, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    move v3, v13

    goto :goto_1

    :pswitch_2
    const v3, 0x100000b

    goto :goto_1

    :pswitch_3
    const v3, 0x100000a

    goto :goto_1

    :cond_2
    move v3, v10

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_1

    :cond_4
    const v3, 0x1000009

    goto :goto_1

    :cond_5
    const v3, 0x100000c

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v0

    or-int v3, v0, v5

    :cond_7
    :goto_1
    sub-int v2, v2, p2

    shl-int/lit8 v0, v2, 0x1c

    or-int/2addr v0, v3

    return v0

    :cond_8
    return v10

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :pswitch_4
    return v7

    :cond_b
    add-int/lit8 v2, p2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    return v0

    :cond_c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static g(Lh10/x;Ljava/lang/String;)I
    .locals 1

    const/high16 v0, 0x2000000

    invoke-virtual {p0, p1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private h(Lh10/x;I)I
    .locals 8

    const v0, 0x1000006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    const/high16 v2, 0x3000000

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lh10/n;->h:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lh10/n;->i:[I

    aget v2, v2, v1

    const/high16 v3, -0x10000000

    and-int/2addr v3, v2

    const/high16 v4, 0xf000000

    and-int/2addr v4, v2

    const v5, 0xfffff

    and-int v6, v2, v5

    const/high16 v7, 0x4000000

    if-ne v4, v7, :cond_1

    iget-object v2, p0, Lh10/n;->b:[I

    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x5000000

    if-ne v4, v7, :cond_2

    iget-object v2, p0, Lh10/n;->c:[I

    array-length v4, v2

    sub-int/2addr v4, v6

    aget v2, v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    const/high16 v1, 0x2000000

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lh10/x;->O()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    :cond_3
    and-int/2addr p2, v5

    invoke-virtual {p1, p2}, Lh10/x;->T(I)Lh10/w;

    move-result-object p2

    iget-object p2, p2, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method private j(I)I
    .locals 3

    iget-object v0, p0, Lh10/n;->d:[I

    const/high16 v1, 0x4000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method private static k(Lh10/x;I[II)Z
    .locals 11

    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffffff

    and-int/2addr v2, p1

    const v3, 0x1000005

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    move p1, v3

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    aput p1, p2, p3

    return v2

    :cond_3
    const/high16 v4, -0x10000000

    and-int v5, v0, v4

    const/high16 v6, 0x1000000

    const/high16 v7, 0xf000000

    const/high16 v8, 0x2000000

    if-nez v5, :cond_7

    and-int v9, v0, v7

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_e

    and-int p0, p1, v4

    if-nez p0, :cond_6

    and-int p0, p1, v7

    if-ne p0, v8, :cond_5

    goto :goto_0

    :cond_5
    move p1, v6

    :cond_6
    :goto_0
    move v6, p1

    goto :goto_3

    :cond_7
    :goto_1
    if-ne p1, v3, :cond_8

    return v1

    :cond_8
    const/high16 v3, -0x1000000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_a

    and-int v3, v0, v7

    if-ne v3, v8, :cond_9

    and-int v3, p1, v4

    or-int/2addr v3, v8

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    invoke-virtual {p0, p1, v4}, Lh10/x;->H(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_3

    :cond_9
    and-int/2addr p1, v4

    add-int/2addr p1, v4

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p0

    :goto_2
    or-int v6, p1, p0

    goto :goto_3

    :cond_a
    and-int v3, p1, v4

    if-nez v3, :cond_b

    and-int v9, p1, v7

    if-ne v9, v8, :cond_e

    :cond_b
    if-eqz v3, :cond_c

    and-int/2addr p1, v7

    if-eq p1, v8, :cond_c

    add-int/2addr v3, v4

    :cond_c
    if-eqz v5, :cond_d

    and-int p1, v0, v7

    if-eq p1, v8, :cond_d

    add-int/2addr v5, v4

    :cond_d
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_e
    :goto_3
    if-eq v6, v0, :cond_f

    aput v6, p2, p3

    return v2

    :cond_f
    return v1
.end method

.method private m()I
    .locals 2

    iget-short v0, p0, Lh10/n;->g:S

    if-lez v0, :cond_0

    iget-object v1, p0, Lh10/n;->e:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lh10/n;->g:S

    aget v0, v1, v0

    return v0

    :cond_0
    iget-short v0, p0, Lh10/n;->f:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lh10/n;->f:S

    neg-int v0, v0

    const/high16 v1, 0x5000000

    or-int/2addr v0, v1

    return v0
.end method

.method private n(I)V
    .locals 2

    iget-short v0, p0, Lh10/n;->g:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lh10/n;->g:S

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lh10/n;->f:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lh10/n;->f:S

    const/4 p1, 0x0

    iput-short p1, p0, Lh10/n;->g:S

    :goto_0
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lh10/y;->c(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v3

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lh10/n;->n(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lh10/n;->n(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lh10/n;->n(I)V

    :goto_1
    return-void
.end method

.method private p(I)V
    .locals 4

    iget-object v0, p0, Lh10/n;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lh10/n;->e:[I

    :cond_0
    iget-object v0, p0, Lh10/n;->e:[I

    array-length v0, v0

    iget-short v1, p0, Lh10/n;->g:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lh10/n;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lh10/n;->e:[I

    :cond_1
    iget-object v0, p0, Lh10/n;->e:[I

    iget-short v1, p0, Lh10/n;->g:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lh10/n;->g:S

    aput p1, v0, v1

    iget-short p1, p0, Lh10/n;->f:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    iget-object v0, p0, Lh10/n;->a:Lh10/q;

    iget-short v1, v0, Lh10/q;->h:S

    if-le p1, v1, :cond_2

    iput-short p1, v0, Lh10/q;->h:S

    :cond_2
    return-void
.end method

.method private q(Lh10/x;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p1, p2, v0}, Lh10/n;->f(Lh10/x;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lh10/n;->p(I)V

    const p2, 0x1000004

    if-eq p1, p2, :cond_1

    const p2, 0x1000003

    if-ne p1, p2, :cond_2

    :cond_1
    const/high16 p1, 0x1000000

    invoke-direct {p0, p1}, Lh10/n;->p(I)V

    :cond_2
    return-void
.end method

.method static r(Lh10/x;ILh10/d;)V
    .locals 7

    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x7

    const/high16 v2, 0x2000000

    const/high16 v3, 0xf000000

    const v4, 0xfffff

    if-nez v0, :cond_3

    and-int v0, p1, v4

    and-int/2addr p1, v3

    const/high16 v3, 0x1000000

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const/high16 v1, 0x3000000

    if-ne p1, v1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lh10/d;->g(I)Lh10/d;

    move-result-object p1

    invoke-virtual {p0, v0}, Lh10/x;->T(I)Lh10/w;

    move-result-object p0

    iget-wide v0, p0, Lh10/w;->f:J

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lh10/d;->k(I)Lh10/d;

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p2, v1}, Lh10/d;->g(I)Lh10/d;

    move-result-object p1

    invoke-virtual {p0, v0}, Lh10/x;->T(I)Lh10/w;

    move-result-object p2

    iget-object p2, p2, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lh10/x;->e(Ljava/lang/String;)Lh10/w;

    move-result-object p0

    iget p0, p0, Lh10/w;->a:I

    invoke-virtual {p1, p0}, Lh10/d;->k(I)Lh10/d;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2, v0}, Lh10/d;->g(I)Lh10/d;

    goto/16 :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_4

    const/16 v0, 0x5b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v6

    goto :goto_0

    :cond_4
    and-int v0, p1, v3

    if-ne v0, v2, :cond_5

    const/16 v0, 0x4c

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lh10/x;->T(I)Lh10/w;

    move-result-object p1

    iget-object p1, p1, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    and-int/2addr p1, v4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p1, 0x53

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x43

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x42

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x5a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 p1, 0x4a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 p1, 0x44

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 p1, 0x46

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 p1, 0x49

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2, v1}, Lh10/d;->g(I)Lh10/d;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh10/x;->e(Ljava/lang/String;)Lh10/w;

    move-result-object p0

    iget p0, p0, Lh10/w;->a:I

    invoke-virtual {p1, p0}, Lh10/d;->k(I)Lh10/d;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u(II)V
    .locals 4

    iget-object v0, p0, Lh10/n;->d:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lh10/n;->d:[I

    :cond_0
    iget-object v0, p0, Lh10/n;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lh10/n;->d:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lh10/n;->d:[I

    :cond_1
    iget-object v0, p0, Lh10/n;->d:[I

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method final a(Lh10/s;)V
    .locals 13

    iget-object v0, p0, Lh10/n;->b:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, v0

    const/4 v6, 0x2

    const v7, 0x1000003

    const v8, 0x1000004

    const/4 v9, 0x1

    if-ge v2, v5, :cond_3

    aget v5, v0, v2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v9

    :cond_1
    :goto_1
    add-int/2addr v2, v6

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    move v4, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lh10/n;->c:[I

    move v4, v1

    move v5, v4

    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_6

    aget v10, v2, v4

    if-eq v10, v8, :cond_5

    if-ne v10, v7, :cond_4

    goto :goto_3

    :cond_4
    move v10, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v6

    :goto_4
    add-int/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lh10/n;->a:Lh10/q;

    iget v4, v4, Lh10/q;->d:I

    invoke-virtual {p1, v4, v3, v5}, Lh10/s;->V(III)I

    move-result v4

    move v10, v1

    :goto_5
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_9

    aget v3, v0, v10

    if-eq v3, v8, :cond_8

    if-ne v3, v7, :cond_7

    goto :goto_6

    :cond_7
    move v12, v9

    goto :goto_7

    :cond_8
    :goto_6
    move v12, v6

    :goto_7
    add-int/2addr v10, v12

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p1, v4, v3}, Lh10/s;->T(II)V

    move v3, v11

    move v4, v12

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_c

    aget v3, v2, v1

    if-eq v3, v8, :cond_b

    if-ne v3, v7, :cond_a

    goto :goto_9

    :cond_a
    move v5, v9

    goto :goto_a

    :cond_b
    :goto_9
    move v5, v6

    :goto_a
    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4, v3}, Lh10/s;->T(II)V

    move v4, v5

    move v5, v0

    goto :goto_8

    :cond_c
    invoke-virtual {p1}, Lh10/s;->U()V

    return-void
.end method

.method final c(Lh10/n;)V
    .locals 1

    iget-object v0, p1, Lh10/n;->b:[I

    iput-object v0, p0, Lh10/n;->b:[I

    iget-object v0, p1, Lh10/n;->c:[I

    iput-object v0, p0, Lh10/n;->c:[I

    const/4 v0, 0x0

    iput-short v0, p0, Lh10/n;->f:S

    iget-object v0, p1, Lh10/n;->d:[I

    iput-object v0, p0, Lh10/n;->d:[I

    iget-object v0, p1, Lh10/n;->e:[I

    iput-object v0, p0, Lh10/n;->e:[I

    iget-short v0, p1, Lh10/n;->g:S

    iput-short v0, p0, Lh10/n;->g:S

    iget v0, p1, Lh10/n;->h:I

    iput v0, p0, Lh10/n;->h:I

    iget-object p1, p1, Lh10/n;->i:[I

    iput-object p1, p0, Lh10/n;->i:[I

    return-void
.end method

.method d(IILh10/w;Lh10/x;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const v6, 0x1000002

    const/high16 v7, 0x2000000

    const v8, 0x1000001

    const v9, 0x1000003

    const v10, 0x1000004

    const/high16 v11, 0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/high16 v13, 0x5000000

    const/high16 v14, 0x4000000

    const/high16 v15, 0xf000000

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_2

    const/4 v13, 0x3

    const/16 v14, 0x5b

    const/4 v15, 0x0

    const/4 v5, 0x4

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-direct {v0, v2}, Lh10/n;->n(I)V

    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_0

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v4, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_2
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    const/high16 v2, 0x12000000

    invoke-virtual {v4, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    packed-switch v2, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_4
    const v1, 0x11000004

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_5
    const v1, 0x11000001

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_6
    const v1, 0x1100000c

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_7
    const v1, 0x1100000a

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_8
    const v1, 0x11000003

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_9
    const v1, 0x11000002

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_a
    const v1, 0x1100000b

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_b
    const v1, 0x11000009

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_c
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lh10/x;->K(Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x3000000

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_d
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lh10/n;->o(Ljava/lang/String;)V

    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_e
    iget-object v2, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lh10/n;->o(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_2

    iget-object v1, v3, Lh10/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_2

    invoke-direct {v0, v2}, Lh10/n;->b(I)V

    :cond_2
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_f
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lh10/n;->o(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    goto/16 :goto_7

    :pswitch_10
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_11
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lh10/n;->o(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_12
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_14
    invoke-direct {v0, v5}, Lh10/n;->n(I)V

    invoke-direct {v0, v8}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_15
    const/4 v1, 0x2

    goto/16 :goto_5

    :pswitch_16
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    invoke-direct {v0, v8}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_17
    const/4 v1, 0x2

    goto/16 :goto_3

    :pswitch_18
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    invoke-direct {v0, v9}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_19
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    invoke-direct {v0, v6}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_1a
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    invoke-direct {v0, v10}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_1b
    invoke-direct {v0, v2, v8}, Lh10/n;->u(II)V

    goto/16 :goto_7

    :pswitch_1c
    invoke-direct {v0, v13}, Lh10/n;->n(I)V

    invoke-direct {v0, v10}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_1d
    invoke-direct {v0, v5}, Lh10/n;->n(I)V

    invoke-direct {v0, v9}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_1e
    const/4 v1, 0x2

    goto/16 :goto_4

    :pswitch_1f
    invoke-direct {v0, v5}, Lh10/n;->n(I)V

    invoke-direct {v0, v10}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_20
    const/4 v1, 0x2

    goto/16 :goto_6

    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v4

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v4}, Lh10/n;->p(I)V

    invoke-direct {v0, v3}, Lh10/n;->p(I)V

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v3

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v3}, Lh10/n;->p(I)V

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_24
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_25
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v3

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v3}, Lh10/n;->p(I)V

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_26
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v2

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v2}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_27
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_28
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh10/n;->n(I)V

    goto/16 :goto_7

    :pswitch_29
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    goto/16 :goto_7

    :pswitch_2a
    invoke-direct {v0, v5}, Lh10/n;->n(I)V

    goto/16 :goto_7

    :pswitch_2b
    invoke-direct {v0, v13}, Lh10/n;->n(I)V

    goto/16 :goto_7

    :pswitch_2c
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lh10/n;->u(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1, v11}, Lh10/n;->u(II)V

    if-lez v2, :cond_a

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lh10/n;->j(I)I

    move-result v2

    if-eq v2, v10, :cond_5

    if-ne v2, v9, :cond_3

    goto :goto_0

    :cond_3
    and-int v3, v2, v15

    if-eq v3, v14, :cond_4

    if-ne v3, v13, :cond_a

    :cond_4
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lh10/n;->u(II)V

    goto/16 :goto_7

    :cond_5
    :goto_0
    invoke-direct {v0, v1, v11}, Lh10/n;->u(II)V

    goto/16 :goto_7

    :pswitch_2d
    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lh10/n;->u(II)V

    if-lez v2, :cond_a

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lh10/n;->j(I)I

    move-result v2

    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_6

    goto :goto_1

    :cond_6
    and-int v3, v2, v15

    if-eq v3, v14, :cond_7

    if-ne v3, v13, :cond_a

    :cond_7
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lh10/n;->u(II)V

    goto/16 :goto_7

    :cond_8
    :goto_1
    invoke-direct {v0, v1, v11}, Lh10/n;->u(II)V

    goto/16 :goto_7

    :pswitch_2e
    invoke-direct {v0, v12}, Lh10/n;->n(I)V

    invoke-direct/range {p0 .. p0}, Lh10/n;->m()I

    move-result v1

    const v2, 0x1000005

    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    const/high16 v2, -0x10000000

    add-int/2addr v1, v2

    :goto_2
    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :goto_3
    invoke-direct {v0, v1}, Lh10/n;->n(I)V

    invoke-direct {v0, v9}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :goto_4
    invoke-direct {v0, v1}, Lh10/n;->n(I)V

    invoke-direct {v0, v6}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :goto_5
    invoke-direct {v0, v1}, Lh10/n;->n(I)V

    invoke-direct {v0, v10}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :goto_6
    invoke-direct {v0, v1}, Lh10/n;->n(I)V

    invoke-direct {v0, v8}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_2f
    invoke-direct {v0, v2}, Lh10/n;->j(I)I

    move-result v1

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto/16 :goto_7

    :pswitch_30
    iget v1, v3, Lh10/w;->b:I

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_31
    iget-object v1, v3, Lh10/w;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lh10/n;->q(Lh10/x;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_32
    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {v4, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_33
    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {v4, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_34
    const-string v1, "java/lang/String"

    invoke-virtual {v4, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_35
    const-string v1, "java/lang/Class"

    invoke-virtual {v4, v1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_36
    invoke-direct {v0, v9}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_37
    invoke-direct {v0, v10}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_38
    invoke-direct {v0, v6}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_39
    invoke-direct {v0, v8}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_3a
    invoke-direct {v0, v9}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_3b
    invoke-direct {v0, v6}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_3c
    invoke-direct {v0, v10}, Lh10/n;->p(I)V

    invoke-direct {v0, v11}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_3d
    invoke-direct {v0, v8}, Lh10/n;->p(I)V

    goto :goto_7

    :pswitch_3e
    const v1, 0x1000005

    invoke-direct {v0, v1}, Lh10/n;->p(I)V

    :cond_a
    :goto_7
    :pswitch_3f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
        :pswitch_3d
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_17
        :pswitch_2e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_20
        :pswitch_1e
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_14
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3f
        :pswitch_13
        :pswitch_13
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_3f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_16
        :pswitch_29
        :pswitch_1
        :pswitch_16
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method final i()I
    .locals 1

    iget-object v0, p0, Lh10/n;->c:[I

    array-length v0, v0

    return v0
.end method

.method final l(Lh10/x;Lh10/n;I)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lh10/n;->b:[I

    array-length v4, v4

    iget-object v5, v0, Lh10/n;->c:[I

    array-length v5, v5

    iget-object v6, v2, Lh10/n;->b:[I

    if-nez v6, :cond_0

    new-array v6, v4, [I

    iput-object v6, v2, Lh10/n;->b:[I

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const/high16 v10, 0x5000000

    const/high16 v11, 0x4000000

    const/high16 v12, 0xf000000

    const/high16 v13, -0x10000000

    const v15, 0x1000003

    const v14, 0x1000004

    const/high16 v16, 0x100000

    const v17, 0xfffff

    if-ge v9, v4, :cond_8

    iget-object v8, v0, Lh10/n;->d:[I

    if-eqz v8, :cond_6

    array-length v7, v8

    if-ge v9, v7, :cond_6

    aget v7, v8, v9

    if-nez v7, :cond_1

    iget-object v7, v0, Lh10/n;->b:[I

    aget v14, v7, v9

    goto :goto_3

    :cond_1
    and-int v8, v7, v13

    and-int/2addr v12, v7

    if-ne v12, v11, :cond_4

    iget-object v10, v0, Lh10/n;->b:[I

    and-int v11, v7, v17

    aget v10, v10, v11

    add-int/2addr v8, v10

    and-int v7, v7, v16

    if-eqz v7, :cond_3

    if-eq v8, v14, :cond_2

    if-ne v8, v15, :cond_3

    :cond_2
    :goto_2
    const/high16 v14, 0x1000000

    goto :goto_3

    :cond_3
    move v14, v8

    goto :goto_3

    :cond_4
    if-ne v12, v10, :cond_5

    iget-object v10, v0, Lh10/n;->c:[I

    and-int v11, v7, v17

    sub-int v11, v5, v11

    aget v10, v10, v11

    add-int/2addr v8, v10

    and-int v7, v7, v16

    if-eqz v7, :cond_3

    if-eq v8, v14, :cond_2

    if-ne v8, v15, :cond_3

    goto :goto_2

    :cond_5
    move v14, v7

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lh10/n;->b:[I

    aget v14, v7, v9

    :goto_3
    iget-object v7, v0, Lh10/n;->i:[I

    if-eqz v7, :cond_7

    invoke-direct {v0, v1, v14}, Lh10/n;->h(Lh10/x;I)I

    move-result v14

    :cond_7
    iget-object v7, v2, Lh10/n;->b:[I

    invoke-static {v1, v14, v7, v9}, Lh10/n;->k(Lh10/x;I[II)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    if-lez v3, :cond_b

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_9

    iget-object v7, v0, Lh10/n;->b:[I

    aget v7, v7, v5

    iget-object v8, v2, Lh10/n;->b:[I

    invoke-static {v1, v7, v8, v5}, Lh10/n;->k(Lh10/x;I[II)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    iget-object v4, v2, Lh10/n;->c:[I

    if-nez v4, :cond_a

    const/4 v4, 0x1

    new-array v5, v4, [I

    iput-object v5, v2, Lh10/n;->c:[I

    move v7, v4

    goto :goto_5

    :cond_a
    move v7, v6

    :goto_5
    iget-object v2, v2, Lh10/n;->c:[I

    const/4 v8, 0x0

    invoke-static {v1, v3, v2, v8}, Lh10/n;->k(Lh10/x;I[II)Z

    move-result v1

    or-int/2addr v1, v7

    return v1

    :cond_b
    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v3, v0, Lh10/n;->c:[I

    array-length v3, v3

    iget-short v7, v0, Lh10/n;->f:S

    add-int/2addr v3, v7

    iget-object v7, v2, Lh10/n;->c:[I

    if-nez v7, :cond_c

    iget-short v6, v0, Lh10/n;->g:S

    add-int/2addr v6, v3

    new-array v6, v6, [I

    iput-object v6, v2, Lh10/n;->c:[I

    move v7, v4

    goto :goto_6

    :cond_c
    move v7, v6

    :goto_6
    move v4, v8

    :goto_7
    if-ge v4, v3, :cond_e

    iget-object v6, v0, Lh10/n;->c:[I

    aget v6, v6, v4

    iget-object v9, v0, Lh10/n;->i:[I

    if-eqz v9, :cond_d

    invoke-direct {v0, v1, v6}, Lh10/n;->h(Lh10/x;I)I

    move-result v6

    :cond_d
    iget-object v9, v2, Lh10/n;->c:[I

    invoke-static {v1, v6, v9, v4}, Lh10/n;->k(Lh10/x;I[II)Z

    move-result v6

    or-int/2addr v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget-short v4, v0, Lh10/n;->g:S

    if-ge v8, v4, :cond_14

    iget-object v4, v0, Lh10/n;->e:[I

    aget v4, v4, v8

    and-int v6, v4, v13

    and-int v9, v4, v12

    if-ne v9, v11, :cond_11

    iget-object v9, v0, Lh10/n;->b:[I

    and-int v18, v4, v17

    aget v9, v9, v18

    add-int/2addr v6, v9

    and-int v4, v4, v16

    if-eqz v4, :cond_10

    if-eq v6, v14, :cond_f

    if-ne v6, v15, :cond_10

    :cond_f
    :goto_9
    const/high16 v4, 0x1000000

    goto :goto_a

    :cond_10
    move v4, v6

    goto :goto_a

    :cond_11
    if-ne v9, v10, :cond_12

    iget-object v9, v0, Lh10/n;->c:[I

    and-int v18, v4, v17

    sub-int v18, v5, v18

    aget v9, v9, v18

    add-int/2addr v6, v9

    and-int v4, v4, v16

    if-eqz v4, :cond_10

    if-eq v6, v14, :cond_f

    if-ne v6, v15, :cond_10

    goto :goto_9

    :cond_12
    :goto_a
    iget-object v6, v0, Lh10/n;->i:[I

    if-eqz v6, :cond_13

    invoke-direct {v0, v1, v4}, Lh10/n;->h(Lh10/x;I)I

    move-result v4

    :cond_13
    iget-object v6, v2, Lh10/n;->c:[I

    add-int v9, v3, v8

    invoke-static {v1, v4, v6, v9}, Lh10/n;->k(Lh10/x;I[II)Z

    move-result v4

    or-int/2addr v7, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_14
    return v7
.end method

.method final s(Lh10/x;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/high16 v3, 0x1000000

    if-ge v1, p2, :cond_2

    iget-object v4, p0, Lh10/n;->b:[I

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p3, v1

    invoke-static {p1, v6}, Lh10/n;->e(Lh10/x;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v2

    aget-object v4, p3, v1

    sget-object v6, Lh10/v;->e:Ljava/lang/Integer;

    if-eq v4, v6, :cond_1

    sget-object v6, Lh10/v;->d:Ljava/lang/Integer;

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lh10/n;->b:[I

    add-int/lit8 v2, v2, 0x2

    aput v3, v4, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    iget-object p2, p0, Lh10/n;->b:[I

    array-length p3, p2

    if-ge v2, p3, :cond_3

    add-int/lit8 p3, v2, 0x1

    aput v3, p2, v2

    move v2, p3

    goto :goto_3

    :cond_3
    move p2, v0

    move p3, p2

    :goto_4
    if-ge p2, p4, :cond_6

    aget-object v1, p5, p2

    sget-object v2, Lh10/v;->e:Ljava/lang/Integer;

    if-eq v1, v2, :cond_4

    sget-object v2, Lh10/v;->d:Ljava/lang/Integer;

    if-ne v1, v2, :cond_5

    :cond_4
    add-int/lit8 p3, p3, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr p3, p4

    new-array p2, p3, [I

    iput-object p2, p0, Lh10/n;->c:[I

    move p2, v0

    move p3, p2

    :goto_5
    if-ge p2, p4, :cond_9

    iget-object v1, p0, Lh10/n;->c:[I

    add-int/lit8 v2, p3, 0x1

    aget-object v4, p5, p2

    invoke-static {p1, v4}, Lh10/n;->e(Lh10/x;Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, p3

    aget-object v1, p5, p2

    sget-object v4, Lh10/v;->e:Ljava/lang/Integer;

    if-eq v1, v4, :cond_8

    sget-object v4, Lh10/v;->d:Ljava/lang/Integer;

    if-ne v1, v4, :cond_7

    goto :goto_6

    :cond_7
    move p3, v2

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v1, p0, Lh10/n;->c:[I

    add-int/lit8 p3, p3, 0x2

    aput v3, v1, v2

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    iput-short v0, p0, Lh10/n;->g:S

    iput v0, p0, Lh10/n;->h:I

    return-void
.end method

.method final t(Lh10/x;ILjava/lang/String;I)V
    .locals 8

    new-array v0, p4, [I

    iput-object v0, p0, Lh10/n;->b:[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Lh10/n;->c:[I

    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lh10/x;->O()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p2

    const/high16 v3, 0x2000000

    or-int/2addr p2, v3

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const p2, 0x1000006

    aput p2, v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {p3}, Lh10/y;->b(Ljava/lang/String;)[Lh10/y;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_1
    const/high16 v3, 0x1000000

    if-ge v0, p3, :cond_4

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lh10/y;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lh10/n;->f(Lh10/x;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lh10/n;->b:[I

    add-int/lit8 v6, v2, 0x1

    aput v4, v5, v2

    const v7, 0x1000004

    if-eq v4, v7, :cond_3

    const v7, 0x1000003

    if-ne v4, v7, :cond_2

    goto :goto_2

    :cond_2
    move v2, v6

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    aput v3, v5, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v2, p4, :cond_5

    iget-object p1, p0, Lh10/n;->b:[I

    add-int/lit8 p2, v2, 0x1

    aput v3, p1, v2

    move v2, p2

    goto :goto_4

    :cond_5
    return-void
.end method
