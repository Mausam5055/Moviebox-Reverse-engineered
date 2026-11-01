.class public final Lq9/q;
.super Ljava/lang/Object;

# interfaces
.implements Lq9/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/q$a;
    }
.end annotation


# instance fields
.field private final a:Lq9/d0;

.field private b:Ljava/lang/String;

.field private c:Lg9/e0;

.field private d:Lq9/q$a;

.field private e:Z

.field private final f:[Z

.field private final g:Lq9/u;

.field private final h:Lq9/u;

.field private final i:Lq9/u;

.field private final j:Lq9/u;

.field private final k:Lq9/u;

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/exoplayer2/util/d0;


# direct methods
.method public constructor <init>(Lq9/d0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/q;->a:Lq9/d0;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lq9/q;->f:[Z

    new-instance p1, Lq9/u;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/q;->g:Lq9/u;

    new-instance p1, Lq9/u;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/q;->h:Lq9/u;

    new-instance p1, Lq9/u;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/q;->i:Lq9/u;

    new-instance p1, Lq9/u;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/q;->j:Lq9/u;

    new-instance p1, Lq9/u;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lq9/u;-><init>(II)V

    iput-object p1, p0, Lq9/q;->k:Lq9/u;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/q;->m:J

    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lq9/q;->c:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lq9/q;->d:Lq9/q$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(JIIJ)V
    .locals 2

    iget-object v0, p0, Lq9/q;->d:Lq9/q$a;

    iget-boolean v1, p0, Lq9/q;->e:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lq9/q$a;->a(JIZ)V

    iget-boolean p1, p0, Lq9/q;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lq9/q;->g:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->b(I)Z

    iget-object p1, p0, Lq9/q;->h:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->b(I)Z

    iget-object p1, p0, Lq9/q;->i:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->b(I)Z

    iget-object p1, p0, Lq9/q;->g:Lq9/u;

    invoke-virtual {p1}, Lq9/u;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lq9/q;->h:Lq9/u;

    invoke-virtual {p1}, Lq9/u;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lq9/q;->i:Lq9/u;

    invoke-virtual {p1}, Lq9/u;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lq9/q;->c:Lg9/e0;

    iget-object p2, p0, Lq9/q;->b:Ljava/lang/String;

    iget-object p3, p0, Lq9/q;->g:Lq9/u;

    iget-object v0, p0, Lq9/q;->h:Lq9/u;

    iget-object v1, p0, Lq9/q;->i:Lq9/u;

    invoke-static {p2, p3, v0, v1}, Lq9/q;->g(Ljava/lang/String;Lq9/u;Lq9/u;Lq9/u;)Lcom/google/android/exoplayer2/o1;

    move-result-object p2

    invoke-interface {p1, p2}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq9/q;->e:Z

    :cond_0
    iget-object p1, p0, Lq9/q;->j:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->b(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_1

    iget-object p1, p0, Lq9/q;->j:Lq9/u;

    iget-object p3, p1, Lq9/u;->d:[B

    iget p1, p1, Lq9/u;->e:I

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/x;->q([BI)I

    move-result p1

    iget-object p3, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    iget-object v0, p0, Lq9/q;->j:Lq9/u;

    iget-object v0, v0, Lq9/u;->d:[B

    invoke-virtual {p3, v0, p1}, Lcom/google/android/exoplayer2/util/d0;->N([BI)V

    iget-object p1, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    iget-object p1, p0, Lq9/q;->a:Lq9/d0;

    iget-object p3, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, p5, p6, p3}, Lq9/d0;->a(JLcom/google/android/exoplayer2/util/d0;)V

    :cond_1
    iget-object p1, p0, Lq9/q;->k:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lq9/q;->k:Lq9/u;

    iget-object p3, p1, Lq9/u;->d:[B

    iget p1, p1, Lq9/u;->e:I

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/x;->q([BI)I

    move-result p1

    iget-object p3, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    iget-object p4, p0, Lq9/q;->k:Lq9/u;

    iget-object p4, p4, Lq9/u;->d:[B

    invoke-virtual {p3, p4, p1}, Lcom/google/android/exoplayer2/util/d0;->N([BI)V

    iget-object p1, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    iget-object p1, p0, Lq9/q;->a:Lq9/d0;

    iget-object p2, p0, Lq9/q;->n:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, p5, p6, p2}, Lq9/d0;->a(JLcom/google/android/exoplayer2/util/d0;)V

    :cond_2
    return-void
.end method

.method private f([BII)V
    .locals 1

    iget-object v0, p0, Lq9/q;->d:Lq9/q$a;

    invoke-virtual {v0, p1, p2, p3}, Lq9/q$a;->e([BII)V

    iget-boolean v0, p0, Lq9/q;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lq9/q;->g:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    iget-object v0, p0, Lq9/q;->h:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    iget-object v0, p0, Lq9/q;->i:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    :cond_0
    iget-object v0, p0, Lq9/q;->j:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    iget-object v0, p0, Lq9/q;->k:Lq9/u;

    invoke-virtual {v0, p1, p2, p3}, Lq9/u;->a([BII)V

    return-void
.end method

.method private static g(Ljava/lang/String;Lq9/u;Lq9/u;Lq9/u;)Lcom/google/android/exoplayer2/o1;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lq9/u;->e:I

    iget v4, v1, Lq9/u;->e:I

    add-int/2addr v4, v3

    iget v5, v2, Lq9/u;->e:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, v0, Lq9/u;->d:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lq9/u;->d:[B

    iget v5, v0, Lq9/u;->e:I

    iget v7, v1, Lq9/u;->e:I

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v2, Lq9/u;->d:[B

    iget v0, v0, Lq9/u;->e:I

    iget v5, v1, Lq9/u;->e:I

    add-int/2addr v0, v5

    iget v2, v2, Lq9/u;->e:I

    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/android/exoplayer2/util/e0;

    iget-object v2, v1, Lq9/u;->d:[B

    iget v1, v1, Lq9/u;->e:I

    invoke-direct {v0, v2, v6, v1}, Lcom/google/android/exoplayer2/util/e0;-><init>([BII)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v8

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v9

    move v10, v6

    move v11, v10

    :goto_0
    const/16 v12, 0x20

    const/4 v13, 0x1

    if-ge v11, v12, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v12

    if-eqz v12, :cond_0

    shl-int v12, v13, v11

    or-int/2addr v10, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x6

    new-array v12, v11, [I

    move v14, v6

    :goto_1
    const/16 v15, 0x8

    if-ge v14, v11, :cond_2

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v15

    aput v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v14

    move v11, v6

    :goto_2
    if-ge v11, v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v6, v6, 0x59

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v16

    if-eqz v16, :cond_4

    add-int/lit8 v6, v6, 0x8

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    if-lez v2, :cond_6

    rsub-int/lit8 v6, v2, 0x8

    mul-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v6

    if-ne v6, v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v11

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v16

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v17

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v18

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v19

    if-eq v6, v13, :cond_9

    if-ne v6, v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v20, v13

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v20, v3

    :goto_4
    if-ne v6, v13, :cond_a

    move v13, v3

    :cond_a
    add-int v16, v16, v17

    mul-int v20, v20, v16

    sub-int v1, v1, v20

    add-int v18, v18, v19

    mul-int v13, v13, v18

    sub-int/2addr v11, v13

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    move v13, v2

    :goto_5
    if-gt v13, v2, :cond_d

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v0}, Lq9/q;->h(Lcom/google/android/exoplayer2/util/e0;)V

    :cond_e
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    :cond_f
    invoke-static {v0}, Lq9/q;->i(Lcom/google/android/exoplayer2/util/e0;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v13

    if-ge v2, v13, :cond_10

    add-int/lit8 v13, v6, 0x5

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v2

    const/16 v5, 0xff

    if-ne v2, v5, :cond_11

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/e0;->e(I)I

    move-result v2

    if-eqz v5, :cond_13

    if-eqz v2, :cond_13

    int-to-float v3, v5

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_7

    :cond_11
    sget-object v5, Lcom/google/android/exoplayer2/util/x;->b:[F

    array-length v6, v5

    if-ge v2, v6, :cond_12

    aget v3, v5, v2

    goto :goto_7

    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "H265Reader"

    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/e0;->l(I)V

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    mul-int/lit8 v11, v11, 0x2

    :cond_17
    move v0, v11

    move-object v11, v12

    move v12, v14

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/f;->c(IZII[II)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    const-string v6, "video/hevc"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/o1$b;->a0(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    return-object v0
.end method

.method private static h(Lcom/google/android/exoplayer2/util/e0;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    move v3, v0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    goto :goto_3

    :cond_0
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->g()I

    :cond_1
    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->g()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v5, v4

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static i(Lcom/google/android/exoplayer2/util/e0;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move v5, v1

    :goto_1
    if-gt v5, v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    move-result v5

    add-int v6, v4, v5

    move v7, v1

    :goto_2
    if-ge v7, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-ge v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->h()I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/e0;->k()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private j(JIIJ)V
    .locals 8

    iget-object v0, p0, Lq9/q;->d:Lq9/q$a;

    iget-boolean v7, p0, Lq9/q;->e:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lq9/q$a;->g(JIIJZ)V

    iget-boolean p1, p0, Lq9/q;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lq9/q;->g:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->e(I)V

    iget-object p1, p0, Lq9/q;->h:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->e(I)V

    iget-object p1, p0, Lq9/q;->i:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->e(I)V

    :cond_0
    iget-object p1, p0, Lq9/q;->j:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->e(I)V

    iget-object p1, p0, Lq9/q;->k:Lq9/u;

    invoke-virtual {p1, p4}, Lq9/u;->e(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 16

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lq9/q;->d()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v9

    iget-wide v1, v7, Lq9/q;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lq9/q;->l:J

    iget-object v1, v7, Lq9/q;->c:Lg9/e0;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v2

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v2}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v1, v7, Lq9/q;->f:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/android/exoplayer2/util/x;->c([BII[Z)I

    move-result v11

    if-ne v11, v8, :cond_1

    invoke-direct {v7, v9, v0, v8}, Lq9/q;->f([BII)V

    return-void

    :cond_1
    invoke-static {v9, v11}, Lcom/google/android/exoplayer2/util/x;->e([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    invoke-direct {v7, v9, v0, v11}, Lq9/q;->f([BII)V

    :cond_2
    sub-int v13, v8, v11

    iget-wide v2, v7, Lq9/q;->l:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-wide v5, v7, Lq9/q;->m:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lq9/q;->e(JIIJ)V

    iget-wide v5, v7, Lq9/q;->m:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lq9/q;->j(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lq9/q;->m:J

    :cond_0
    return-void
.end method

.method public c(Lg9/n;Lq9/i0$d;)V
    .locals 2

    invoke-virtual {p2}, Lq9/i0$d;->a()V

    invoke-virtual {p2}, Lq9/i0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq9/q;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lq9/i0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v0

    iput-object v0, p0, Lq9/q;->c:Lg9/e0;

    new-instance v1, Lq9/q$a;

    invoke-direct {v1, v0}, Lq9/q$a;-><init>(Lg9/e0;)V

    iput-object v1, p0, Lq9/q;->d:Lq9/q$a;

    iget-object v0, p0, Lq9/q;->a:Lq9/d0;

    invoke-virtual {v0, p1, p2}, Lq9/d0;->b(Lg9/n;Lq9/i0$d;)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lq9/q;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/q;->m:J

    iget-object v0, p0, Lq9/q;->f:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/x;->a([Z)V

    iget-object v0, p0, Lq9/q;->g:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/q;->h:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/q;->i:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/q;->j:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/q;->k:Lq9/u;

    invoke-virtual {v0}, Lq9/u;->d()V

    iget-object v0, p0, Lq9/q;->d:Lq9/q$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq9/q$a;->f()V

    :cond_0
    return-void
.end method
