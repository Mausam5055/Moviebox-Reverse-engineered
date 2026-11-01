.class final Lh10/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh10/x$a;
    }
.end annotation


# instance fields
.field final a:Lh10/g;

.field private final b:Lh10/e;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[Lh10/x$a;

.field private g:I

.field private h:Lh10/d;

.field private i:I

.field private j:Lh10/d;

.field private k:I

.field private l:[Lh10/x$a;


# direct methods
.method constructor <init>(Lh10/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh10/x;->a:Lh10/g;

    const/4 p1, 0x0

    iput-object p1, p0, Lh10/x;->b:Lh10/e;

    const/16 p1, 0x100

    new-array p1, p1, [Lh10/x$a;

    iput-object p1, p0, Lh10/x;->f:[Lh10/x$a;

    const/4 p1, 0x1

    iput p1, p0, Lh10/x;->g:I

    new-instance p1, Lh10/d;

    invoke-direct {p1}, Lh10/d;-><init>()V

    iput-object p1, p0, Lh10/x;->h:Lh10/d;

    return-void
.end method

.method constructor <init>(Lh10/g;Lh10/e;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh10/x;->a:Lh10/g;

    iput-object p2, p0, Lh10/x;->b:Lh10/e;

    iget-object p1, p2, Lh10/e;->a:[B

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lh10/e;->f(I)I

    move-result v1

    sub-int/2addr v1, v0

    iget v2, p2, Lh10/e;->g:I

    sub-int/2addr v2, v1

    invoke-virtual {p2}, Lh10/e;->g()I

    move-result v3

    iput v3, p0, Lh10/x;->g:I

    new-instance v3, Lh10/d;

    invoke-direct {v3, v2}, Lh10/d;-><init>(I)V

    iput-object v3, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {v3, p1, v1, v2}, Lh10/d;->h([BII)Lh10/d;

    iget v1, p0, Lh10/x;->g:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    new-array v1, v1, [Lh10/x$a;

    iput-object v1, p0, Lh10/x;->f:[Lh10/x$a;

    invoke-virtual {p2}, Lh10/e;->h()I

    move-result v1

    new-array v1, v1, [C

    const/4 v3, 0x0

    move v10, v0

    :goto_0
    iget v4, p0, Lh10/x;->g:I

    if-ge v10, v4, :cond_2

    invoke-virtual {p2, v10}, Lh10/e;->f(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    aget-byte v11, p1, v5

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    add-int/lit8 v3, v4, 0x2

    invoke-virtual {p2, v3}, Lh10/e;->H(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lh10/e;->f(I)I

    move-result v3

    invoke-virtual {p2, v3, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v4}, Lh10/e;->H(I)I

    move-result v9

    move-object v4, p0

    move v5, v11

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lh10/x;->i(IILjava/lang/String;Ljava/lang/String;I)V

    move v3, v0

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Lh10/e;->H(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lh10/e;->f(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p2, v6}, Lh10/e;->H(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lh10/e;->f(I)I

    move-result v6

    invoke-virtual {p2, v4}, Lh10/e;->l(I)I

    move-result v7

    invoke-virtual {p2, v5, v1}, Lh10/e;->m(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v2

    invoke-virtual {p2, v6, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v12

    move-object v4, p0

    move v5, v10

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lh10/x;->v(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v4, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p2, v4, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v5, v4}, Lh10/x;->A(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p2, v5}, Lh10/e;->H(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lh10/e;->f(I)I

    move-result v5

    invoke-virtual {p2, v4, v1}, Lh10/e;->m(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v5, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v5, v2

    invoke-virtual {p2, v5, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move v5, v10

    move v6, v11

    invoke-direct/range {v4 .. v9}, Lh10/x;->t(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2, v4, v1}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v11, v4}, Lh10/x;->G(IILjava/lang/String;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2, v4}, Lh10/e;->v(I)J

    move-result-wide v4

    invoke-direct {p0, v10, v11, v4, v5}, Lh10/x;->r(IIJ)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2, v4}, Lh10/e;->t(I)I

    move-result v4

    invoke-direct {p0, v10, v11, v4}, Lh10/x;->n(III)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p2, v10, v1}, Lh10/e;->J(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v4}, Lh10/x;->E(ILjava/lang/String;)V

    :goto_1
    const/4 v4, 0x5

    if-eq v11, v4, :cond_1

    const/4 v4, 0x6

    if-ne v11, v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v0

    goto :goto_3

    :cond_1
    :goto_2
    move v4, v2

    :goto_3
    add-int/2addr v10, v4

    goto/16 :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0, p2, v1}, Lh10/x;->M(Lh10/e;[C)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private A(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lh10/x$a;

    const/16 v0, 0xc

    invoke-static {v0, p2, p3}, Lh10/x;->Y(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v2, 0xc

    move-object v0, v6

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v6}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private E(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lh10/x$a;

    const/4 v1, 0x1

    invoke-static {v1, p2}, Lh10/x;->W(ILjava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lh10/x$a;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private F(ILjava/lang/String;)Lh10/w;
    .locals 4

    invoke-static {p1, p2}, Lh10/x;->W(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lh10/w;->b:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lh10/x$a;->h:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, v1, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {p0, p2}, Lh10/x;->D(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lh10/d;->e(II)Lh10/d;

    new-instance v1, Lh10/x$a;

    iget v2, p0, Lh10/x;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lh10/x;->g:I

    invoke-direct {v1, v2, p1, p2, v0}, Lh10/x$a;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v1}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method private G(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Lh10/x$a;

    invoke-static {p2, p3}, Lh10/x;->W(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lh10/x$a;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private J(Lh10/x$a;)I
    .locals 4

    iget-object v0, p0, Lh10/x;->l:[Lh10/x$a;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lh10/x$a;

    iput-object v0, p0, Lh10/x;->l:[Lh10/x$a;

    :cond_0
    iget v0, p0, Lh10/x;->k:I

    iget-object v1, p0, Lh10/x;->l:[Lh10/x$a;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lh10/x$a;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lh10/x;->l:[Lh10/x$a;

    :cond_1
    iget-object v0, p0, Lh10/x;->l:[Lh10/x$a;

    iget v1, p0, Lh10/x;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh10/x;->k:I

    aput-object p1, v0, v1

    invoke-direct {p0, p1}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    iget p1, p1, Lh10/w;->a:I

    return p1
.end method

.method private M(Lh10/e;[C)V
    .locals 10

    iget-object v0, p1, Lh10/e;->a:[B

    invoke-virtual {p1}, Lh10/e;->e()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Lh10/e;->H(I)I

    move-result v2

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {p1, v1, p2}, Lh10/e;->G(I[C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p1, v2}, Lh10/e;->H(I)I

    move-result v2

    iput v2, p0, Lh10/x;->i:I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Lh10/e;->t(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Lh10/x;->i:I

    if-lez v2, :cond_3

    add-int/lit8 v2, v1, 0x8

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lh10/e;->t(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    new-instance v3, Lh10/d;

    invoke-direct {v3, v1}, Lh10/d;-><init>(I)V

    iput-object v3, p0, Lh10/x;->j:Lh10/d;

    invoke-virtual {v3, v0, v2, v1}, Lh10/d;->h([BII)Lh10/d;

    const/4 v0, 0x0

    move v1, v2

    :goto_2
    iget v3, p0, Lh10/x;->i:I

    if-ge v0, v3, :cond_3

    sub-int v3, v1, v2

    invoke-virtual {p1, v1}, Lh10/e;->H(I)I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Lh10/e;->H(I)I

    move-result v5

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v4, p2}, Lh10/e;->o(I[C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_2

    invoke-virtual {p1, v1}, Lh10/e;->H(I)I

    move-result v5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v5, p2}, Lh10/e;->o(I[C)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    move v5, v6

    goto :goto_3

    :cond_2
    new-instance v9, Lh10/x$a;

    int-to-long v6, v3

    const v3, 0x7fffffff

    and-int v8, v4, v3

    const/16 v5, 0x40

    move-object v3, v9

    move v4, v0

    invoke-direct/range {v3 .. v8}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, v9}, Lh10/x;->a(Lh10/x$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private N(I)Lh10/x$a;
    .locals 2

    iget-object v0, p0, Lh10/x;->f:[Lh10/x$a;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static U(II)I
    .locals 1

    const v0, 0x7fffffff

    add-int/2addr p0, p1

    and-int/2addr p0, v0

    return p0
.end method

.method private static V(IJ)I
    .locals 1

    long-to-int v0, p1

    add-int/2addr p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static W(ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static X(ILjava/lang/String;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static Y(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static Z(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/2addr p1, p2

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p1, p3

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private a(Lh10/x$a;)V
    .locals 3

    iget v0, p0, Lh10/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh10/x;->e:I

    iget v0, p1, Lh10/x$a;->h:I

    iget-object v1, p0, Lh10/x;->f:[Lh10/x$a;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    iput-object v2, p1, Lh10/x$a;->i:Lh10/x$a;

    aput-object p1, v1, v0

    return-void
.end method

.method private static a0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private b(III)Lh10/w;
    .locals 8

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    iget-object v0, v0, Lh10/d;->a:[B

    invoke-direct {p0, p3}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget v2, v1, Lh10/w;->b:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    iget v2, v1, Lh10/x$a;->h:I

    if-ne v2, p3, :cond_2

    iget-wide v2, v1, Lh10/w;->f:J

    long-to-int v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    add-int v4, p1, v3

    aget-byte v4, v0, v4

    add-int v5, v2, v3

    aget-byte v5, v0, v5

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lh10/x;->j:Lh10/d;

    iput p1, p2, Lh10/d;->b:I

    return-object v1

    :cond_2
    :goto_2
    iget-object v1, v1, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_3
    new-instance p2, Lh10/x$a;

    iget v3, p0, Lh10/x;->i:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lh10/x;->i:I

    const/16 v4, 0x40

    int-to-long v5, p1

    move-object v2, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, p2}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method private static b0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/2addr p1, p4

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private c0(Lh10/x$a;)Lh10/x$a;
    .locals 7

    iget v0, p0, Lh10/x;->e:I

    iget-object v1, p0, Lh10/x;->f:[Lh10/x$a;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    array-length v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lh10/x$a;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lh10/x;->f:[Lh10/x$a;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Lh10/x$a;->h:I

    rem-int/2addr v4, v1

    iget-object v5, v3, Lh10/x$a;->i:Lh10/x$a;

    aget-object v6, v2, v4

    iput-object v6, v3, Lh10/x$a;->i:Lh10/x$a;

    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lh10/x;->f:[Lh10/x$a;

    :cond_2
    iget v0, p0, Lh10/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh10/x;->e:I

    iget v0, p1, Lh10/x$a;->h:I

    iget-object v1, p0, Lh10/x;->f:[Lh10/x$a;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    iput-object v2, p1, Lh10/x$a;->i:Lh10/x$a;

    aput-object p1, v1, v0

    return-object p1
.end method

.method private h(ILjava/lang/String;Ljava/lang/String;I)Lh10/w;
    .locals 10

    invoke-static {p1, p2, p3, p4}, Lh10/x;->Z(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lh10/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lh10/x$a;->h:I

    if-ne v1, v8, :cond_0

    iget-wide v1, v0, Lh10/w;->f:J

    int-to-long v3, p4

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lh10/w;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {p0, p2, p3}, Lh10/x;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, p4, v1}, Lh10/d;->f(III)Lh10/d;

    new-instance v9, Lh10/x$a;

    iget v1, p0, Lh10/x;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lh10/x;->g:I

    const/4 v3, 0x0

    int-to-long v6, p4

    move-object v0, v9

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method private i(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    invoke-static {p1, p3, p4, p5}, Lh10/x;->Z(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Lh10/x$a;

    const/4 v3, 0x0

    int-to-long v6, p5

    move-object v0, v9

    move v1, p2

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private m(II)Lh10/w;
    .locals 7

    invoke-static {p1, p2}, Lh10/x;->U(II)I

    move-result v5

    invoke-direct {p0, v5}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lh10/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lh10/x$a;->h:I

    if-ne v1, v5, :cond_0

    iget-wide v1, v0, Lh10/w;->f:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {v0, p1}, Lh10/d;->g(I)Lh10/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lh10/d;->i(I)Lh10/d;

    new-instance v6, Lh10/x$a;

    iget v1, p0, Lh10/x;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lh10/x;->g:I

    int-to-long v3, p2

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method private n(III)V
    .locals 7

    new-instance v6, Lh10/x$a;

    int-to-long v3, p3

    invoke-static {p2, p3}, Lh10/x;->U(II)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private q(IJ)Lh10/w;
    .locals 7

    invoke-static {p1, p2, p3}, Lh10/x;->V(IJ)I

    move-result v5

    invoke-direct {p0, v5}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lh10/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lh10/x$a;->h:I

    if-ne v1, v5, :cond_0

    iget-wide v1, v0, Lh10/w;->f:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget v1, p0, Lh10/x;->g:I

    iget-object v0, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {v0, p1}, Lh10/d;->g(I)Lh10/d;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lh10/d;->j(J)Lh10/d;

    iget v0, p0, Lh10/x;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lh10/x;->g:I

    new-instance v6, Lh10/x$a;

    move-object v0, v6

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method private r(IIJ)V
    .locals 7

    new-instance v6, Lh10/x$a;

    invoke-static {p2, p3, p4}, Lh10/x;->V(IJ)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh10/x$a;
    .locals 10

    invoke-static {p1, p2, p3, p4}, Lh10/x;->a0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lh10/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lh10/x$a;->h:I

    if-ne v1, v8, :cond_0

    iget-object v1, v0, Lh10/w;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lh10/w;->d:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {p0, p2}, Lh10/x;->e(Ljava/lang/String;)Lh10/w;

    move-result-object v1

    iget v1, v1, Lh10/w;->a:I

    invoke-virtual {p0, p3, p4}, Lh10/x;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lh10/d;->f(III)Lh10/d;

    new-instance v9, Lh10/x$a;

    iget v1, p0, Lh10/x;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lh10/x;->g:I

    const-wide/16 v6, 0x0

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method private t(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    new-instance v9, Lh10/x$a;

    const-wide/16 v6, 0x0

    invoke-static {p2, p3, p4, p5}, Lh10/x;->a0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method

.method private v(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0xf

    invoke-static {v0, p3, p4, p5, p2}, Lh10/x;->b0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    new-instance v0, Lh10/x$a;

    const/16 v3, 0xf

    int-to-long v7, p2

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lh10/x;->a(Lh10/x$a;)V

    return-void
.end method


# virtual methods
.method B(Ljava/lang/String;)Lh10/w;
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lh10/x;->F(ILjava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method C(Ljava/lang/String;)Lh10/w;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lh10/x;->F(ILjava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method D(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lh10/x;->W(ILjava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lh10/w;->b:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lh10/x$a;->h:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v2, Lh10/w;->a:I

    return p1

    :cond_0
    iget-object v2, v2, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {v2, v0}, Lh10/d;->g(I)Lh10/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lh10/d;->l(Ljava/lang/String;)Lh10/d;

    new-instance v2, Lh10/x$a;

    iget v3, p0, Lh10/x;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lh10/x;->g:I

    invoke-direct {v2, v3, v0, p1, v1}, Lh10/x$a;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    iget p1, p1, Lh10/w;->a:I

    return p1
.end method

.method H(II)I
    .locals 10

    int-to-long v0, p1

    int-to-long v2, p2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long v7, v0, v2

    add-int v0, p1, p2

    const/16 v1, 0x82

    invoke-static {v1, v0}, Lh10/x;->U(II)I

    move-result v9

    invoke-direct {p0, v9}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lh10/w;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lh10/x$a;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v2, v0, Lh10/w;->f:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    iget p1, v0, Lh10/w;->g:I

    return p1

    :cond_0
    iget-object v0, v0, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh10/x;->l:[Lh10/x$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lh10/w;->e:Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object p2, p2, Lh10/w;->e:Ljava/lang/String;

    iget-object v0, p0, Lh10/x;->a:Lh10/g;

    invoke-virtual {v0, p1, p2}, Lh10/g;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh10/x;->I(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lh10/x$a;

    iget v5, p0, Lh10/x;->k:I

    const/16 v6, 0x82

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lh10/x$a;-><init>(IIJI)V

    invoke-direct {p0, p2}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p2

    iput p1, p2, Lh10/w;->g:I

    return p1
.end method

.method I(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x80

    invoke-static {v0, p1}, Lh10/x;->W(ILjava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lh10/w;->b:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lh10/x$a;->h:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v2, Lh10/w;->a:I

    return p1

    :cond_0
    iget-object v2, v2, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    new-instance v2, Lh10/x$a;

    iget v3, p0, Lh10/x;->k:I

    invoke-direct {v2, v3, v0, p1, v1}, Lh10/x$a;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lh10/x;->J(Lh10/x$a;)I

    move-result p1

    return p1
.end method

.method K(Ljava/lang/String;I)I
    .locals 8

    const/16 v0, 0x81

    invoke-static {v0, p1, p2}, Lh10/x;->X(ILjava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lh10/w;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lh10/x$a;->h:I

    if-ne v2, v7, :cond_0

    iget-wide v2, v1, Lh10/w;->f:J

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v1, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lh10/w;->a:I

    return p1

    :cond_0
    iget-object v1, v1, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    new-instance v0, Lh10/x$a;

    iget v2, p0, Lh10/x;->k:I

    const/16 v3, 0x81

    int-to-long v5, p2

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lh10/x$a;-><init>(IILjava/lang/String;JI)V

    invoke-direct {p0, v0}, Lh10/x;->J(Lh10/x$a;)I

    move-result p1

    return p1
.end method

.method L()I
    .locals 1

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    if-eqz v0, :cond_0

    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lh10/x;->D(Ljava/lang/String;)I

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    iget v0, v0, Lh10/d;->b:I

    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh10/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method P()I
    .locals 1

    iget v0, p0, Lh10/x;->g:I

    return v0
.end method

.method Q()I
    .locals 1

    iget-object v0, p0, Lh10/x;->h:Lh10/d;

    iget v0, v0, Lh10/d;->b:I

    return v0
.end method

.method R()I
    .locals 1

    iget v0, p0, Lh10/x;->c:I

    return v0
.end method

.method S()Lh10/e;
    .locals 1

    iget-object v0, p0, Lh10/x;->b:Lh10/e;

    return-object v0
.end method

.method T(I)Lh10/w;
    .locals 1

    iget-object v0, p0, Lh10/x;->l:[Lh10/x$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method varargs c(Lh10/o;[Ljava/lang/Object;)Lh10/w;
    .locals 9

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    if-nez v0, :cond_0

    new-instance v0, Lh10/d;

    invoke-direct {v0}, Lh10/d;-><init>()V

    iput-object v0, p0, Lh10/x;->j:Lh10/d;

    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    invoke-virtual {p0, v4}, Lh10/x;->d(Ljava/lang/Object;)Lh10/w;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v1, v0, Lh10/d;->b:I

    invoke-virtual {p1}, Lh10/o;->d()I

    move-result v4

    invoke-virtual {p1}, Lh10/o;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lh10/o;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lh10/o;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lh10/o;->e()Z

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lh10/x;->u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lh10/w;

    move-result-object v3

    iget v3, v3, Lh10/w;->a:I

    invoke-virtual {v0, v3}, Lh10/d;->k(I)Lh10/d;

    array-length v3, p2

    invoke-virtual {v0, v3}, Lh10/d;->k(I)Lh10/d;

    array-length v3, p2

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lh10/x;->d(Ljava/lang/Object;)Lh10/w;

    move-result-object v5

    iget v5, v5, Lh10/w;->a:I

    invoke-virtual {v0, v5}, Lh10/d;->k(I)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v0, v0, Lh10/d;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lh10/o;->hashCode()I

    move-result p1

    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-direct {p0, v1, v0, p1}, Lh10/x;->b(III)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method d(Ljava/lang/Object;)Lh10/w;
    .locals 6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lh10/x;->l(I)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lh10/x;->l(I)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lh10/x;->l(I)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lh10/x;->l(I)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lh10/x;->l(I)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lh10/x;->k(F)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lh10/x;->p(J)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lh10/x;->f(D)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lh10/x;->C(Ljava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Lh10/y;

    if-eqz v0, :cond_b

    check-cast p1, Lh10/y;

    invoke-virtual {p1}, Lh10/y;->l()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lh10/y;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh10/x;->e(Ljava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Lh10/y;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh10/x;->w(Ljava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p1}, Lh10/y;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh10/x;->e(Ljava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lh10/o;

    if-eqz v0, :cond_c

    check-cast p1, Lh10/o;

    invoke-virtual {p1}, Lh10/o;->d()I

    move-result v1

    invoke-virtual {p1}, Lh10/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lh10/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lh10/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lh10/o;->e()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lh10/x;->u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v0, p1, Lh10/h;

    if-eqz v0, :cond_d

    check-cast p1, Lh10/h;

    invoke-virtual {p1}, Lh10/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lh10/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lh10/h;->a()Lh10/o;

    move-result-object v2

    invoke-virtual {p1}, Lh10/h;->b()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lh10/x;->g(Ljava/lang/String;Ljava/lang/String;Lh10/o;[Ljava/lang/Object;)Lh10/w;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance p1, Lorg/mvel2/optimizers/OptimizationNotSupported;

    invoke-direct {p1}, Lorg/mvel2/optimizers/OptimizationNotSupported;-><init>()V

    throw p1
.end method

.method d0(Lh10/d;)V
    .locals 3

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    if-eqz v0, :cond_0

    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lh10/x;->D(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lh10/d;->k(I)Lh10/d;

    move-result-object p1

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    iget v0, v0, Lh10/d;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lh10/d;->i(I)Lh10/d;

    move-result-object p1

    iget v0, p0, Lh10/x;->i:I

    invoke-virtual {p1, v0}, Lh10/d;->k(I)Lh10/d;

    move-result-object p1

    iget-object v0, p0, Lh10/x;->j:Lh10/d;

    iget-object v1, v0, Lh10/d;->a:[B

    const/4 v2, 0x0

    iget v0, v0, Lh10/d;->b:I

    invoke-virtual {p1, v1, v2, v0}, Lh10/d;->h([BII)Lh10/d;

    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;)Lh10/w;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lh10/x;->F(ILjava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method e0(Lh10/d;)V
    .locals 3

    iget v0, p0, Lh10/x;->g:I

    invoke-virtual {p1, v0}, Lh10/d;->k(I)Lh10/d;

    move-result-object p1

    iget-object v0, p0, Lh10/x;->h:Lh10/d;

    iget-object v1, v0, Lh10/d;->a:[B

    const/4 v2, 0x0

    iget v0, v0, Lh10/d;->b:I

    invoke-virtual {p1, v1, v2, v0}, Lh10/d;->h([BII)Lh10/d;

    return-void
.end method

.method f(D)Lh10/w;
    .locals 1

    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lh10/x;->q(IJ)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method f0(ILjava/lang/String;)I
    .locals 0

    iput p1, p0, Lh10/x;->c:I

    iput-object p2, p0, Lh10/x;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lh10/x;->e(Ljava/lang/String;)Lh10/w;

    move-result-object p1

    iget p1, p1, Lh10/w;->a:I

    return p1
.end method

.method varargs g(Ljava/lang/String;Ljava/lang/String;Lh10/o;[Ljava/lang/Object;)Lh10/w;
    .locals 0

    invoke-virtual {p0, p3, p4}, Lh10/x;->c(Lh10/o;[Ljava/lang/Object;)Lh10/w;

    move-result-object p3

    const/16 p4, 0x11

    iget p3, p3, Lh10/w;->a:I

    invoke-direct {p0, p4, p1, p2, p3}, Lh10/x;->h(ILjava/lang/String;Ljava/lang/String;I)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh10/w;
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lh10/x;->s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method k(F)Lh10/w;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lh10/x;->m(II)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method l(I)Lh10/w;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lh10/x;->m(II)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method varargs o(Ljava/lang/String;Ljava/lang/String;Lh10/o;[Ljava/lang/Object;)Lh10/w;
    .locals 0

    invoke-virtual {p0, p3, p4}, Lh10/x;->c(Lh10/o;[Ljava/lang/Object;)Lh10/w;

    move-result-object p3

    const/16 p4, 0x12

    iget p3, p3, Lh10/w;->a:I

    invoke-direct {p0, p4, p1, p2, p3}, Lh10/x;->h(ILjava/lang/String;Ljava/lang/String;I)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method p(J)Lh10/w;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lh10/x;->q(IJ)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lh10/w;
    .locals 10

    const/16 v0, 0xf

    invoke-static {v0, p2, p3, p4, p1}, Lh10/x;->b0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v9}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lh10/w;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lh10/x$a;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v2, v1, Lh10/w;->f:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v1, Lh10/w;->c:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lh10/w;->d:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, v1, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-gt p1, v1, :cond_2

    iget-object p5, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {p0, p2, p3, p4}, Lh10/x;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh10/w;

    move-result-object v1

    iget v1, v1, Lh10/w;->a:I

    invoke-virtual {p5, v0, p1, v1}, Lh10/d;->d(III)Lh10/d;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {p0, p2, p3, p4, p5}, Lh10/x;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lh10/w;

    move-result-object p5

    iget p5, p5, Lh10/w;->a:I

    invoke-virtual {v1, v0, p1, p5}, Lh10/d;->d(III)Lh10/d;

    :goto_1
    new-instance p5, Lh10/x$a;

    iget v2, p0, Lh10/x;->g:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lh10/x;->g:I

    const/16 v3, 0xf

    int-to-long v7, p1

    move-object v1, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, p5}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method w(Ljava/lang/String;)Lh10/w;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lh10/x;->F(ILjava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lh10/w;
    .locals 0

    if-eqz p4, :cond_0

    const/16 p4, 0xb

    goto :goto_0

    :cond_0
    const/16 p4, 0xa

    :goto_0
    invoke-direct {p0, p4, p1, p2, p3}, Lh10/x;->s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh10/x$a;

    move-result-object p1

    return-object p1
.end method

.method y(Ljava/lang/String;)Lh10/w;
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lh10/x;->F(ILjava/lang/String;)Lh10/w;

    move-result-object p1

    return-object p1
.end method

.method z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0xc

    invoke-static {v0, p1, p2}, Lh10/x;->Y(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lh10/x;->N(I)Lh10/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lh10/w;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lh10/x$a;->h:I

    if-ne v2, v6, :cond_0

    iget-object v2, v1, Lh10/w;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lh10/w;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lh10/w;->a:I

    return p1

    :cond_0
    iget-object v1, v1, Lh10/x$a;->i:Lh10/x$a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh10/x;->h:Lh10/d;

    invoke-virtual {p0, p1}, Lh10/x;->D(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lh10/x;->D(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lh10/d;->f(III)Lh10/d;

    new-instance v0, Lh10/x$a;

    iget v2, p0, Lh10/x;->g:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lh10/x;->g:I

    const/16 v3, 0xc

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lh10/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lh10/x;->c0(Lh10/x$a;)Lh10/x$a;

    move-result-object p1

    iget p1, p1, Lh10/w;->a:I

    return p1
.end method
