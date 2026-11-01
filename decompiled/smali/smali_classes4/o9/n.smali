.class abstract Lo9/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo9/n;->a:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private static a(IZ)Z
    .locals 5

    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    sget-object p1, Lo9/n;->a:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p1, v3

    if-ne v4, p0, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static b(Lg9/m;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lo9/n;->c(Lg9/m;ZZ)Z

    move-result p0

    return p0
.end method

.method private static c(Lg9/m;ZZ)Z
    .locals 21

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lg9/m;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :cond_1
    :goto_0
    long-to-int v6, v6

    new-instance v7, Lcom/google/android/exoplayer2/util/d0;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v6, :cond_2

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v13

    invoke-interface {v0, v13, v8, v12, v11}, Lg9/m;->peekFully([BIIZ)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    move v5, v8

    move v8, v11

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v13

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    if-nez v16, :cond_4

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v13

    invoke-interface {v0, v13, v12, v12}, Lg9/m;->peekFully([BII)V

    const/16 v13, 0x10

    invoke-virtual {v7, v13}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->w()J

    move-result-wide v16

    move v3, v13

    move-wide/from16 v13, v16

    goto :goto_2

    :cond_4
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-nez v16, :cond_5

    invoke-interface/range {p0 .. p0}, Lg9/m;->getLength()J

    move-result-wide v16

    cmp-long v18, v16, v3

    if-eqz v18, :cond_5

    invoke-interface/range {p0 .. p0}, Lg9/m;->getPeekPosition()J

    move-result-wide v13

    sub-long v16, v16, v13

    int-to-long v13, v12

    add-long v13, v16, v13

    :cond_5
    move v3, v12

    :goto_2
    int-to-long v11, v3

    cmp-long v19, v13, v11

    if-gez v19, :cond_6

    return v8

    :cond_6
    add-int/2addr v9, v3

    const v3, 0x6d6f6f76

    if-ne v15, v3, :cond_8

    long-to-int v3, v13

    add-int/2addr v6, v3

    if-eqz v5, :cond_7

    int-to-long v3, v6

    cmp-long v3, v3, v1

    if-lez v3, :cond_7

    long-to-int v6, v1

    :cond_7
    :goto_3
    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_8
    const v3, 0x6d6f6f66

    if-eq v15, v3, :cond_9

    const v3, 0x6d766578

    if-ne v15, v3, :cond_a

    :cond_9
    move v5, v8

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    move v3, v5

    int-to-long v4, v9

    add-long/2addr v4, v13

    sub-long/2addr v4, v11

    move/from16 v20, v9

    int-to-long v8, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_b

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    sub-long/2addr v13, v11

    long-to-int v4, v13

    add-int v9, v20, v4

    const v5, 0x66747970

    if-ne v15, v5, :cond_11

    const/16 v5, 0x8

    if-ge v4, v5, :cond_c

    const/4 v5, 0x0

    return v5

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v8

    invoke-interface {v0, v8, v5, v4}, Lg9/m;->peekFully([BII)V

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_f

    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    move/from16 v12, p2

    goto :goto_5

    :cond_d
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v11

    move/from16 v12, p2

    invoke-static {v11, v12}, Lo9/n;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_e

    move v10, v8

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    move/from16 v12, p2

    :goto_6
    if-nez v10, :cond_10

    const/4 v5, 0x0

    return v5

    :cond_10
    const/4 v5, 0x0

    goto :goto_7

    :cond_11
    move/from16 v12, p2

    const/4 v5, 0x0

    if-eqz v4, :cond_12

    invoke-interface {v0, v4}, Lg9/m;->advancePeekPosition(I)V

    :cond_12
    :goto_7
    move v8, v5

    move v5, v3

    goto :goto_3

    :goto_8
    move v0, v8

    goto :goto_a

    :goto_9
    move v0, v5

    :goto_a
    if-eqz v10, :cond_13

    move/from16 v1, p1

    if-ne v1, v0, :cond_13

    goto :goto_b

    :cond_13
    move v8, v5

    :goto_b
    return v8
.end method

.method public static d(Lg9/m;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lo9/n;->c(Lg9/m;ZZ)Z

    move-result p0

    return p0
.end method
