.class public abstract Lhf/b;
.super Ljava/lang/Object;


# direct methods
.method public static A(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    return p0
.end method

.method public static B(J)S
    .locals 1

    const/16 v0, 0x10

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static C(J)S
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static D(J)S
    .locals 1

    const/16 v0, 0x30

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static a(I)S
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus unsigned code unit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static c(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static d(II)S
    .locals 1

    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_1

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus highByte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus lowByte"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(IIII)S
    .locals 1

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    and-int/lit8 v0, p2, -0x10

    if-nez v0, :cond_1

    and-int/lit8 v0, p3, -0x10

    if-nez v0, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus nibble0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lhf/h;Lhf/e;)V
    .locals 17

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Lhf/a;->d()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lhf/h;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lhf/a;->c()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v2

    invoke-static {v2}, Lhf/g;->a(I)I

    move-result v3

    invoke-static {v3}, Lhf/b;->k(I)I

    move-result v0

    const-string v4, "bogus registerCount: "

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown instruction format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v4

    const/16 v3, 0x8

    if-eq v0, v9, :cond_6

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_2

    if-ne v0, v3, :cond_1

    new-array v3, v4, [J

    :goto_1
    if-ge v8, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->i()J

    move-result-wide v5

    aput-wide v5, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lhf/e;->a(IILjava/lang/Object;II)V

    :goto_2
    move-object/from16 v11, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bogus element_width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lif/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-array v3, v4, [I

    :goto_3
    if-ge v8, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v0

    aput v0, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x4

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lhf/e;->a(IILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    new-array v3, v4, [S

    :goto_4
    if-ge v8, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lhf/e;->a(IILjava/lang/Object;II)V

    goto :goto_2

    :cond_6
    new-array v5, v4, [B

    move v0, v8

    :goto_5
    if-ge v8, v4, :cond_8

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    :cond_7
    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    shr-int/2addr v0, v3

    add-int/lit8 v8, v8, 0x1

    xor-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v3, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lhf/e;->a(IILjava/lang/Object;II)V

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lhf/a;->b()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v3

    new-array v4, v3, [I

    new-array v5, v3, [I

    move v6, v8

    :goto_6
    if-ge v6, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v8, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v6

    add-int/2addr v6, v0

    aput v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v13, v1, v2, v4, v5}, Lhf/e;->i(II[I[I)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lhf/a;->b()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v4

    new-array v5, v3, [I

    :goto_8
    if-ge v8, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v6

    add-int/2addr v6, v0

    aput v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v13, v1, v2, v4, v5}, Lhf/e;->g(III[I)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0xfb

    if-ne v3, v0, :cond_c

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v7

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v8

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lhf/e;->e(IIIIIII)V

    goto/16 :goto_2

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/16 v0, 0xfa

    if-ne v3, v0, :cond_e

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v0

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v7

    invoke-static {v7}, Lhf/b;->u(I)I

    move-result v10

    invoke-static {v7}, Lhf/b;->v(I)I

    move-result v11

    invoke-static {v7}, Lhf/b;->w(I)I

    move-result v12

    invoke-static {v7}, Lhf/b;->x(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v14

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v15

    if-lt v2, v9, :cond_d

    if-gt v2, v5, :cond_d

    filled-new-array {v10, v11, v12, v7, v0}, [I

    move-result-object v0

    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    move-object/from16 v0, p1

    move v2, v3

    move v3, v6

    move v4, v15

    move v5, v14

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lhf/e;->d(IIIII[I)V

    goto/16 :goto_2

    :cond_d
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lif/a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->i()J

    move-result-wide v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v8

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->h(IIIIIJII)V

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v12

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v2

    invoke-static {v2}, Lhf/b;->u(I)I

    move-result v10

    invoke-static {v2}, Lhf/b;->v(I)I

    move-result v11

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v14

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v15

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v16

    if-eqz v0, :cond_14

    if-eq v0, v9, :cond_13

    if-eq v0, v7, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    if-eq v0, v6, :cond_10

    if-ne v0, v5, :cond_f

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    move/from16 v4, v16

    move v8, v10

    move v9, v11

    move v10, v14

    move v11, v15

    invoke-virtual/range {v0 .. v12}, Lhf/e;->b(IIIIIJIIIII)V

    goto/16 :goto_2

    :cond_f
    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lif/a;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    move/from16 v4, v16

    move v8, v10

    move v9, v11

    move v10, v14

    move v11, v15

    invoke-virtual/range {v0 .. v11}, Lhf/e;->c(IIIIIJIIII)V

    goto/16 :goto_2

    :cond_11
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    move/from16 v4, v16

    move v8, v10

    move v9, v11

    move v10, v14

    invoke-virtual/range {v0 .. v10}, Lhf/e;->j(IIIIIJIII)V

    goto/16 :goto_2

    :cond_12
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    move/from16 v4, v16

    move v8, v10

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_2

    :cond_13
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    move/from16 v4, v16

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_2

    :cond_14
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    goto/16 :goto_2

    :pswitch_8
    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v9

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_2

    :pswitch_9
    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v0

    add-int v5, v1, v0

    const/16 v0, 0x2b

    if-eq v3, v0, :cond_15

    const/16 v0, 0x2c

    if-eq v3, v0, :cond_15

    move-object/from16 v11, p0

    goto :goto_9

    :cond_15
    add-int/lit8 v0, v5, 0x1

    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v1}, Lhf/a;->e(II)V

    :goto_9
    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v0

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v4

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->h()I

    move-result v2

    add-int v5, v1, v2

    const/4 v4, 0x1

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    invoke-static {v0}, Lhf/b;->b(I)I

    move-result v9

    invoke-static {v0}, Lhf/b;->c(I)I

    move-result v10

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v12

    invoke-virtual/range {v0 .. v10}, Lhf/e;->j(IIIIIJIII)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v9

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v8

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    int-to-short v0, v0

    add-int v5, v1, v0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v8

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    int-to-short v0, v0

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v8

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v4

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v14

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    invoke-static {v0}, Lhf/b;->b(I)I

    move-result v9

    invoke-static {v0}, Lhf/b;->c(I)I

    move-result v0

    int-to-byte v0, v0

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    int-to-short v0, v0

    add-int v5, v1, v0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    int-to-short v0, v0

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v0

    int-to-short v0, v0

    int-to-long v4, v0

    const/16 v0, 0x15

    if-ne v3, v0, :cond_16

    const/16 v0, 0x10

    goto :goto_a

    :cond_16
    const/16 v0, 0x30

    :goto_a
    shl-long v6, v4, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v4

    invoke-static {v3}, Lhf/b;->l(I)I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lhf/h;->g()I

    move-result v2

    int-to-short v2, v2

    add-int v5, v1, v2

    const/4 v4, 0x1

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v8

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v9

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->w(I)I

    move-result v8

    invoke-static {v2}, Lhf/b;->x(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v0, v0, 0x1c

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v0

    const/4 v5, 0x0

    int-to-long v6, v0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v11, p0

    invoke-static {v2}, Lhf/b;->c(I)I

    move-result v0

    int-to-byte v0, v0

    add-int v5, v1, v0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v2, v3

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v11, p0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    goto/16 :goto_0

    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lhf/i;Lhf/f;)V
    .locals 9

    iget v0, p1, Lhf/f;->e:I

    invoke-static {v0}, Lhf/b;->k(I)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown instruction format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget v1, p1, Lhf/f;->u:I

    int-to-short v1, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    invoke-virtual {p0, v1}, Lhf/i;->h(S)V

    iget v0, p1, Lhf/f;->w:I

    invoke-virtual {p0, v0}, Lhf/i;->q(I)V

    iget-object p1, p1, Lhf/f;->v:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lhf/i;->o([J)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bogus element_width: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lif/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lhf/i;->n([I)V

    goto/16 :goto_5

    :cond_2
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lhf/i;->p([S)V

    goto/16 :goto_5

    :cond_3
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lhf/i;->m([B)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p1, Lhf/f;->r:[I

    iget-object p1, p1, Lhf/f;->s:[I

    invoke-virtual {p0}, Lhf/a;->b()I

    move-result v3

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    array-length v0, p1

    invoke-static {v0}, Lhf/b;->a(I)S

    move-result v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    array-length v0, v1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_4

    aget v5, v1, v4

    invoke-virtual {p0, v5}, Lhf/i;->q(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_7

    aget v1, p1, v2

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lhf/i;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Lhf/f;->s:[I

    invoke-virtual {p0}, Lhf/a;->b()I

    move-result v3

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    array-length v0, v1

    invoke-static {v0}, Lhf/b;->a(I)S

    move-result v0

    invoke-virtual {p0, v0}, Lhf/i;->h(S)V

    iget p1, p1, Lhf/f;->t:I

    invoke-virtual {p0, p1}, Lhf/i;->q(I)V

    array-length p1, v1

    :goto_2
    if-ge v2, p1, :cond_7

    aget v0, v1, v2

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lhf/i;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_3
    iget v1, p1, Lhf/f;->i:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget v1, p1, Lhf/f;->f:I

    int-to-short v1, v1

    iget v2, p1, Lhf/f;->l:I

    invoke-static {v2}, Lhf/b;->j(I)S

    move-result v2

    iget p1, p1, Lhf/f;->q:I

    int-to-short p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lhf/i;->k(SSSS)V

    goto/16 :goto_5

    :pswitch_4
    iget v1, p1, Lhf/f;->p:I

    iget v2, p1, Lhf/f;->i:I

    invoke-static {v1, v2}, Lhf/b;->t(II)I

    move-result v1

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget v1, p1, Lhf/f;->f:I

    int-to-short v1, v1

    iget v2, p1, Lhf/f;->l:I

    iget v3, p1, Lhf/f;->m:I

    iget v4, p1, Lhf/f;->n:I

    iget v5, p1, Lhf/f;->o:I

    invoke-static {v2, v3, v4, v5}, Lhf/b;->e(IIII)S

    move-result v2

    iget p1, p1, Lhf/f;->q:I

    int-to-short p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lhf/i;->k(SSSS)V

    goto/16 :goto_5

    :pswitch_5
    iget-wide v1, p1, Lhf/f;->h:J

    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result v4

    invoke-static {v1, v2}, Lhf/b;->z(J)S

    move-result v5

    invoke-static {v1, v2}, Lhf/b;->B(J)S

    move-result v6

    invoke-static {v1, v2}, Lhf/b;->C(J)S

    move-result v7

    invoke-static {v1, v2}, Lhf/b;->D(J)S

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lhf/i;->l(SSSSS)V

    goto/16 :goto_5

    :pswitch_6
    iget v1, p1, Lhf/f;->i:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget v1, p1, Lhf/f;->f:I

    int-to-short v1, v1

    iget p1, p1, Lhf/f;->j:I

    invoke-static {p1}, Lhf/b;->h(I)S

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_7
    iget v1, p1, Lhf/f;->n:I

    iget v2, p1, Lhf/f;->i:I

    invoke-static {v1, v2}, Lhf/b;->t(II)I

    move-result v1

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget v1, p1, Lhf/f;->f:I

    int-to-short v1, v1

    iget v2, p1, Lhf/f;->j:I

    iget v3, p1, Lhf/f;->k:I

    iget v4, p1, Lhf/f;->l:I

    iget p1, p1, Lhf/f;->m:I

    invoke-static {v2, v3, v4, p1}, Lhf/b;->e(IIII)S

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_8
    int-to-short v0, v0

    iget v1, p1, Lhf/f;->j:I

    invoke-static {v1}, Lhf/b;->h(I)S

    move-result v1

    iget p1, p1, Lhf/f;->k:I

    invoke-static {p1}, Lhf/b;->i(I)S

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_9
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lhf/a;->e(II)V

    :goto_3
    iget v1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhf/b;->q(II)I

    move-result v1

    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-static {v1}, Lhf/b;->y(I)S

    move-result v0

    invoke-static {v1}, Lhf/b;->A(I)S

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_a
    iget-wide v1, p1, Lhf/f;->h:J

    invoke-static {v1, v2}, Lhf/b;->n(J)I

    move-result v1

    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-static {v1}, Lhf/b;->y(I)S

    move-result v0

    invoke-static {v1}, Lhf/b;->A(I)S

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_b
    iget v1, p1, Lhf/f;->f:I

    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-static {v1}, Lhf/b;->y(I)S

    move-result v0

    invoke-static {v1}, Lhf/b;->A(I)S

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_c
    iget p1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v1

    invoke-static {p1, v1}, Lhf/b;->q(II)I

    move-result p1

    int-to-short v0, v0

    invoke-static {p1}, Lhf/b;->y(I)S

    move-result v1

    invoke-static {p1}, Lhf/b;->A(I)S

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lhf/i;->j(SSS)V

    goto/16 :goto_5

    :pswitch_d
    iget v1, p1, Lhf/f;->j:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget v1, p1, Lhf/f;->k:I

    iget p1, p1, Lhf/f;->l:I

    invoke-static {v1, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_e
    iget v1, p1, Lhf/f;->j:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget p1, p1, Lhf/f;->k:I

    invoke-static {p1}, Lhf/b;->i(I)S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_f
    iget v1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhf/b;->s(II)S

    move-result v1

    iget v2, p1, Lhf/f;->j:I

    iget p1, p1, Lhf/f;->k:I

    invoke-static {v2, p1}, Lhf/b;->t(II)I

    move-result p1

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1, v1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_10
    iget v1, p1, Lhf/f;->j:I

    iget v2, p1, Lhf/f;->k:I

    invoke-static {v1, v2}, Lhf/b;->t(II)I

    move-result v1

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget-wide v1, p1, Lhf/f;->h:J

    invoke-static {v1, v2}, Lhf/b;->p(J)S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_11
    iget v1, p1, Lhf/f;->j:I

    iget v2, p1, Lhf/f;->k:I

    invoke-static {v1, v2}, Lhf/b;->t(II)I

    move-result v1

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget p1, p1, Lhf/f;->f:I

    int-to-short p1, p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_12
    iget v1, p1, Lhf/f;->j:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget v1, p1, Lhf/f;->k:I

    iget-wide v2, p1, Lhf/f;->h:J

    invoke-static {v2, v3}, Lhf/b;->m(J)I

    move-result p1

    invoke-static {v1, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_13
    iget v1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lhf/b;->s(II)S

    move-result v1

    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1, v1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_14
    iget v1, p1, Lhf/f;->j:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget-wide v1, p1, Lhf/f;->h:J

    invoke-static {v1, v2}, Lhf/b;->p(J)S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto/16 :goto_5

    :pswitch_15
    const/16 v1, 0x15

    if-ne v0, v1, :cond_6

    const/16 v1, 0x10

    goto :goto_4

    :cond_6
    const/16 v1, 0x30

    :goto_4
    iget-wide v2, p1, Lhf/f;->h:J

    shr-long v1, v2, v1

    long-to-int v1, v1

    int-to-short v1, v1

    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1, v1}, Lhf/i;->i(SS)V

    goto :goto_5

    :pswitch_16
    iget v1, p1, Lhf/f;->j:I

    invoke-static {v0, v1}, Lhf/b;->d(II)S

    move-result v0

    iget p1, p1, Lhf/f;->f:I

    int-to-short p1, p1

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto :goto_5

    :pswitch_17
    iget p1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v1

    invoke-static {p1, v1}, Lhf/b;->s(II)S

    move-result p1

    int-to-short v0, v0

    invoke-virtual {p0, v0, p1}, Lhf/i;->i(SS)V

    goto :goto_5

    :pswitch_18
    iget v1, p1, Lhf/f;->j:I

    iget p1, p1, Lhf/f;->k:I

    invoke-static {v1, p1}, Lhf/b;->t(II)I

    move-result p1

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    goto :goto_5

    :pswitch_19
    iget p1, p1, Lhf/f;->j:I

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    goto :goto_5

    :pswitch_1a
    iget v1, p1, Lhf/f;->j:I

    iget-wide v2, p1, Lhf/f;->h:J

    invoke-static {v2, v3}, Lhf/b;->o(J)I

    move-result p1

    invoke-static {v1, p1}, Lhf/b;->t(II)I

    move-result p1

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    goto :goto_5

    :pswitch_1b
    iget p1, p1, Lhf/f;->g:I

    invoke-virtual {p0}, Lhf/a;->c()I

    move-result v1

    invoke-static {p1, v1}, Lhf/b;->r(II)I

    move-result p1

    invoke-static {v0, p1}, Lhf/b;->d(II)S

    move-result p1

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    goto :goto_5

    :pswitch_1c
    int-to-short p1, v0

    invoke-virtual {p0, p1}, Lhf/i;->h(S)V

    :cond_7
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(I)S
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register A out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    invoke-static {v2, v3}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(I)S
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register B out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    invoke-static {v2, v3}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(I)S
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register C out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    invoke-static {v2, v3}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(I)I
    .locals 1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_1

    const/16 v0, 0x300

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x1c

    return p0

    :pswitch_1
    const/16 p0, 0x1b

    return p0

    :pswitch_2
    const/16 p0, 0x1a

    return p0

    :pswitch_3
    const/16 p0, 0xc

    return p0

    :pswitch_4
    const/16 p0, 0xe

    return p0

    :pswitch_5
    const/16 p0, 0xb

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0x12

    return p0

    :pswitch_9
    const/4 p0, 0x7

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/16 p0, 0x15

    return p0

    :pswitch_c
    const/16 p0, 0x18

    return p0

    :pswitch_d
    const/16 p0, 0x17

    return p0

    :pswitch_e
    const/16 p0, 0xd

    return p0

    :pswitch_f
    const/16 p0, 0x13

    return p0

    :pswitch_10
    const/16 p0, 0x8

    return p0

    :pswitch_11
    const/16 p0, 0x19

    return p0

    :pswitch_12
    const/16 p0, 0x9

    return p0

    :pswitch_13
    const/16 p0, 0x14

    return p0

    :pswitch_14
    const/16 p0, 0xa

    return p0

    :pswitch_15
    const/4 p0, 0x4

    return p0

    :pswitch_16
    const/4 p0, 0x5

    return p0

    :pswitch_17
    const/16 p0, 0x16

    return p0

    :pswitch_18
    const/16 p0, 0x10

    return p0

    :pswitch_19
    const/4 p0, 0x6

    return p0

    :pswitch_1a
    const/4 p0, 0x3

    return p0

    :pswitch_1b
    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    :cond_1
    const/16 p0, 0x1d

    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1a
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_16
        :pswitch_16
        :pswitch_10
        :pswitch_e
        :pswitch_19
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_16
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfa
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_10
        :pswitch_10
        :pswitch_0
    .end packed-switch
.end method

.method public static l(I)I
    .locals 1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    const/16 v0, 0x300

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :cond_0
    :pswitch_8
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xfa
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static m(J)I
    .locals 3

    long-to-int v0, p0

    int-to-byte v1, v0

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    and-int/lit16 p0, v0, 0xff

    return p0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o(J)I
    .locals 3

    const-wide/16 v0, -0x8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x7

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0xf

    return p0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p(J)S
    .locals 3

    long-to-int v0, p0

    int-to-short v0, v0

    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Literal out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lif/a;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static q(II)I
    .locals 0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static r(II)I
    .locals 2

    invoke-static {p0, p1}, Lhf/b;->q(II)I

    move-result p0

    int-to-byte p1, p0

    if-ne p0, p1, :cond_0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", perhaps you need to enable force jumbo mode."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static s(II)S
    .locals 2

    invoke-static {p0, p1}, Lhf/b;->q(II)I

    move-result p0

    int-to-short p1, p0

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/a;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", perhaps you need to enable force jumbo mode."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static t(II)I
    .locals 1

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus highNibble"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus lowNibble"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static u(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static v(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static w(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static x(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static y(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method public static z(J)S
    .locals 0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method
