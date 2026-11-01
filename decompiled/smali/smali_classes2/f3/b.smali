.class public abstract Lf3/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/b$k;,
        Lf3/b$e;,
        Lf3/b$h;,
        Lf3/b$i;,
        Lf3/b$j;,
        Lf3/b$f;,
        Lf3/b$b;,
        Lf3/b$l;,
        Lf3/b$d;,
        Lf3/b$g;,
        Lf3/b$c;,
        Lf3/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lf3/b;->a:[B

    return-void
.end method

.method public static A(Lf3/t;Landroidx/media3/container/d$b;Ll2/e0;)Lf3/w;
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    invoke-virtual {v0, v3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Lf3/b$i;

    iget-object v6, v1, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-direct {v5, v3, v6}, Lf3/b$i;-><init>(Landroidx/media3/container/d$c;Landroidx/media3/common/r;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    invoke-virtual {v0, v3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v3

    if-eqz v3, :cond_36

    new-instance v5, Lf3/b$j;

    invoke-direct {v5, v3}, Lf3/b$j;-><init>(Landroidx/media3/container/d$c;)V

    :goto_0
    invoke-interface {v5}, Lf3/b$f;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    new-instance v9, Lf3/w;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lf3/w;-><init>(Lf3/t;[J[II[J[IJ)V

    return-object v9

    :cond_1
    iget v7, v1, Lf3/t;->b:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Lf3/t;->f:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    long-to-float v11, v11

    const v12, 0x49742400    # 1000000.0f

    div-float/2addr v11, v12

    div-float/2addr v7, v11

    iget-object v11, v1, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-virtual {v11}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v7

    invoke-virtual {v1, v7}, Lf3/t;->a(Landroidx/media3/common/r;)Lf3/t;

    move-result-object v1

    :cond_2
    const v7, 0x7374636f

    invoke-virtual {v0, v7}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v7

    const/4 v11, 0x1

    if-nez v7, :cond_3

    const v7, 0x636f3634

    invoke-virtual {v0, v7}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/d$c;

    move v12, v11

    goto :goto_1

    :cond_3
    move v12, v6

    :goto_1
    iget-object v7, v7, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const v13, 0x73747363

    invoke-virtual {v0, v13}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v13

    invoke-static {v13}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/container/d$c;

    iget-object v13, v13, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const v14, 0x73747473

    invoke-virtual {v0, v14}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v14

    invoke-static {v14}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/container/d$c;

    iget-object v14, v14, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const v15, 0x73747373

    invoke-virtual {v0, v15}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v15, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const v4, 0x63747473

    invoke-virtual {v0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    new-instance v4, Lf3/b$b;

    invoke-direct {v4, v13, v7, v12}, Lf3/b$b;-><init>(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V

    const/16 v7, 0xc

    invoke-virtual {v14, v7}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->L()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->L()I

    move-result v13

    invoke-virtual {v14}, Landroidx/media3/common/util/j0;->L()I

    move-result v6

    if-eqz v0, :cond_6

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v18

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    const/4 v8, -0x1

    if-eqz v15, :cond_8

    invoke-virtual {v15, v7}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/j0;->L()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v15}, Landroidx/media3/common/util/j0;->L()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_7
    move/from16 v16, v8

    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    move/from16 v16, v8

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v5}, Lf3/b$f;->a()I

    move-result v9

    iget-object v10, v1, Lf3/t;->g:Landroidx/media3/common/r;

    iget-object v10, v10, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eq v9, v8, :cond_a

    const-string v8, "audio/raw"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "audio/g711-mlaw"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "audio/g711-alaw"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    if-nez v12, :cond_a

    if-nez v18, :cond_a

    if-nez v7, :cond_a

    move v8, v11

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_c

    iget v0, v4, Lf3/b$b;->a:I

    new-array v5, v0, [J

    new-array v0, v0, [I

    :goto_7
    invoke-virtual {v4}, Lf3/b$b;->a()Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, v4, Lf3/b$b;->b:I

    iget-wide v12, v4, Lf3/b$b;->d:J

    aput-wide v12, v5, v7

    iget v8, v4, Lf3/b$b;->c:I

    aput v8, v0, v7

    goto :goto_7

    :cond_b
    int-to-long v6, v6

    invoke-static {v9, v5, v0, v6, v7}, Lf3/d;->a(I[J[IJ)Lf3/d$b;

    move-result-object v0

    iget-object v4, v0, Lf3/d$b;->a:[J

    iget-object v5, v0, Lf3/d$b;->b:[I

    iget v6, v0, Lf3/d$b;->c:I

    iget-object v7, v0, Lf3/d$b;->d:[J

    iget-object v8, v0, Lf3/d$b;->e:[I

    iget-wide v9, v0, Lf3/d$b;->f:J

    iget-wide v12, v0, Lf3/d$b;->g:J

    move-object v11, v1

    move-object v2, v5

    move v14, v6

    move-object v15, v7

    move-object/from16 v28, v8

    move-wide v0, v9

    goto/16 :goto_14

    :cond_c
    new-array v8, v3, [J

    new-array v9, v3, [I

    new-array v10, v3, [J

    new-array v11, v3, [I

    move/from16 p1, v12

    move-object/from16 v24, v14

    move/from16 v2, v16

    move/from16 v25, v18

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_8
    const-string v12, "BoxParsers"

    if-ge v1, v3, :cond_16

    move-wide/from16 v32, v28

    move/from16 v28, v16

    const/16 v16, 0x1

    :goto_9
    if-nez v28, :cond_d

    invoke-virtual {v4}, Lf3/b$b;->a()Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v29, v6

    move/from16 v34, v7

    iget-wide v6, v4, Lf3/b$b;->d:J

    move/from16 v35, v3

    iget v3, v4, Lf3/b$b;->c:I

    move/from16 v28, v3

    move-wide/from16 v32, v6

    move/from16 v6, v29

    move/from16 v7, v34

    move/from16 v3, v35

    goto :goto_9

    :cond_d
    move/from16 v35, v3

    move/from16 v29, v6

    move/from16 v34, v7

    if-nez v16, :cond_e

    const-string v2, "Unexpected end of chunk data"

    invoke-static {v12, v2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object v7, v4

    move-object v8, v5

    move-object v4, v2

    move-object v5, v3

    move/from16 v2, v22

    move v3, v1

    move/from16 v1, v28

    goto/16 :goto_e

    :cond_e
    if-eqz v0, :cond_10

    :goto_a
    if-nez v23, :cond_f

    if-lez v25, :cond_f

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v23

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    move-result v22

    add-int/lit8 v25, v25, -0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v23, v23, -0x1

    :cond_10
    move/from16 v3, v22

    aput-wide v32, v8, v1

    invoke-interface {v5}, Lf3/b$f;->readNextSampleSize()I

    move-result v6

    aput v6, v9, v1

    move-object/from16 v36, v4

    move-object v7, v5

    int-to-long v4, v6

    add-long v30, v30, v4

    if-le v6, v14, :cond_11

    move v14, v6

    :cond_11
    int-to-long v4, v3

    add-long v4, v26, v4

    aput-wide v4, v10, v1

    if-nez v15, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :goto_b
    aput v4, v11, v1

    if-ne v1, v2, :cond_14

    const/4 v4, 0x1

    aput v4, v11, v1

    add-int/lit8 v5, v34, -0x1

    if-lez v5, :cond_13

    invoke-static {v15}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->L()I

    move-result v2

    sub-int/2addr v2, v4

    :cond_13
    move v12, v2

    move v4, v3

    move/from16 v6, v29

    goto :goto_c

    :cond_14
    move v12, v2

    move v4, v3

    move/from16 v6, v29

    move/from16 v5, v34

    :goto_c
    int-to-long v2, v6

    add-long v26, v26, v2

    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_15

    if-lez p1, :cond_15

    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/j0;->L()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    add-int/lit8 v6, p1, -0x1

    move v13, v2

    goto :goto_d

    :cond_15
    move v3, v6

    move/from16 v6, p1

    :goto_d
    aget v2, v9, v1

    move/from16 p1, v3

    int-to-long v2, v2

    add-long v2, v32, v2

    add-int/lit8 v16, v28, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v28, v2

    move/from16 v22, v4

    move v2, v12

    move/from16 v3, v35

    move-object/from16 v4, v36

    move/from16 v44, v6

    move/from16 v6, p1

    move/from16 p1, v44

    move-object/from16 v45, v7

    move v7, v5

    move-object/from16 v5, v45

    goto/16 :goto_8

    :cond_16
    move/from16 v35, v3

    move/from16 v34, v7

    move-object v4, v8

    move-object v5, v9

    move-object v7, v10

    move-object v8, v11

    move/from16 v1, v16

    move/from16 v2, v22

    :goto_e
    int-to-long v9, v2

    add-long v9, v26, v9

    if-eqz v0, :cond_18

    :goto_f
    if-lez v25, :cond_18

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    goto :goto_10

    :cond_17
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    add-int/lit8 v25, v25, -0x1

    goto :goto_f

    :cond_18
    const/4 v0, 0x1

    :goto_10
    if-nez v34, :cond_1a

    if-nez v13, :cond_1a

    if-nez v1, :cond_1a

    if-nez p1, :cond_1a

    move/from16 v2, v23

    if-nez v2, :cond_1b

    if-nez v0, :cond_19

    goto :goto_11

    :cond_19
    move-object/from16 v11, v18

    goto :goto_13

    :cond_1a
    move/from16 v2, v23

    :cond_1b
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inconsistent stbl box for track "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    iget v15, v11, Lf3/t;->a:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v34

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", remainingSamplesInChunk "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1c

    const-string v0, ", ctts invalid"

    goto :goto_12

    :cond_1c
    const-string v0, ""

    :goto_12
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object v2, v5

    move-object v15, v7

    move-object/from16 v28, v8

    move-wide v0, v9

    move-wide/from16 v12, v30

    :goto_14
    iget-wide v5, v11, Lf3/t;->f:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const-wide/32 v36, 0x7fffffff

    if-lez v9, :cond_1d

    const-wide/16 v7, 0x8

    mul-long v29, v12, v7

    const-wide/32 v31, 0xf4240

    sget-object v35, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v33, v5

    invoke-static/range {v29 .. v35}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1d

    cmp-long v7, v5, v36

    if-gez v7, :cond_1d

    iget-object v7, v11, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-virtual {v7}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v7

    long-to-int v5, v5

    invoke-virtual {v7, v5}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v5

    invoke-virtual {v11, v5}, Lf3/t;->a(Landroidx/media3/common/r;)Lf3/t;

    move-result-object v5

    move-object v11, v5

    :cond_1d
    iget-wide v9, v11, Lf3/t;->c:J

    const-wide/32 v7, 0xf4240

    move-wide v5, v0

    move-object/from16 v12, v28

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    iget-object v5, v11, Lf3/t;->i:[J

    const-wide/32 v6, 0xf4240

    if-nez v5, :cond_1e

    iget-wide v0, v11, Lf3/t;->c:J

    invoke-static {v15, v6, v7, v0, v1}, Landroidx/media3/common/util/a1;->f1([JJJ)V

    new-instance v0, Lf3/w;

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v12

    invoke-direct/range {v22 .. v30}, Lf3/w;-><init>(Lf3/t;[J[II[J[IJ)V

    return-object v0

    :cond_1e
    array-length v5, v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_20

    iget v5, v11, Lf3/t;->b:I

    if-ne v5, v8, :cond_20

    array-length v5, v15

    const/4 v8, 0x2

    if-lt v5, v8, :cond_20

    iget-object v5, v11, Lf3/t;->j:[J

    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    const/4 v8, 0x0

    aget-wide v9, v5, v8

    iget-object v5, v11, Lf3/t;->i:[J

    aget-wide v22, v5, v8

    iget-wide v6, v11, Lf3/t;->c:J

    move-object/from16 p1, v12

    iget-wide v12, v11, Lf3/t;->d:J

    move-wide/from16 v24, v6

    move-wide/from16 v26, v12

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v5

    add-long/2addr v5, v9

    move-object/from16 v22, v15

    move-wide/from16 v23, v0

    move-wide/from16 v25, v9

    move-wide/from16 v27, v5

    invoke-static/range {v22 .. v28}, Lf3/b;->b([JJJJ)Z

    move-result v7

    if-eqz v7, :cond_21

    sub-long v22, v0, v5

    const/4 v5, 0x0

    aget-wide v6, v15, v5

    sub-long v38, v9, v6

    iget-object v5, v11, Lf3/t;->g:Landroidx/media3/common/r;

    iget v5, v5, Landroidx/media3/common/r;->F:I

    int-to-long v5, v5

    iget-wide v7, v11, Lf3/t;->c:J

    move-wide/from16 v40, v5

    move-wide/from16 v42, v7

    invoke-static/range {v38 .. v43}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v5

    iget-object v7, v11, Lf3/t;->g:Landroidx/media3/common/r;

    iget v7, v7, Landroidx/media3/common/r;->F:I

    int-to-long v7, v7

    iget-wide v9, v11, Lf3/t;->c:J

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v12, v5, v9

    if-nez v12, :cond_1f

    cmp-long v12, v7, v9

    if-eqz v12, :cond_21

    :cond_1f
    cmp-long v9, v5, v36

    if-gtz v9, :cond_21

    cmp-long v9, v7, v36

    if-gtz v9, :cond_21

    long-to-int v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Ll2/e0;->a:I

    long-to-int v0, v7

    iput v0, v1, Ll2/e0;->b:I

    iget-wide v0, v11, Lf3/t;->c:J

    const-wide/32 v5, 0xf4240

    invoke-static {v15, v5, v6, v0, v1}, Landroidx/media3/common/util/a1;->f1([JJJ)V

    iget-object v0, v11, Lf3/t;->i:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    const-wide/32 v7, 0xf4240

    iget-wide v9, v11, Lf3/t;->d:J

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    new-instance v0, Lf3/w;

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, p1

    invoke-direct/range {v22 .. v30}, Lf3/w;-><init>(Lf3/t;[J[II[J[IJ)V

    return-object v0

    :cond_20
    move-object/from16 p1, v12

    :cond_21
    iget-object v5, v11, Lf3/t;->i:[J

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_23

    iget-object v3, v11, Lf3/t;->j:[J

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v7, v3, v6

    const/4 v6, 0x0

    :goto_15
    array-length v3, v15

    if-ge v6, v3, :cond_22

    aget-wide v9, v15, v6

    sub-long v16, v9, v7

    const-wide/32 v18, 0xf4240

    iget-wide v9, v11, Lf3/t;->c:J

    move-wide/from16 v20, v9

    invoke-static/range {v16 .. v21}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v9

    aput-wide v9, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_22
    sub-long v16, v0, v7

    const-wide/32 v18, 0xf4240

    iget-wide v0, v11, Lf3/t;->c:J

    move-wide/from16 v20, v0

    invoke-static/range {v16 .. v21}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    new-instance v0, Lf3/w;

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, p1

    invoke-direct/range {v22 .. v30}, Lf3/w;-><init>(Lf3/t;[J[II[J[IJ)V

    return-object v0

    :cond_23
    iget v0, v11, Lf3/t;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    :goto_16
    array-length v1, v5

    new-array v1, v1, [I

    array-length v5, v5

    new-array v5, v5, [I

    iget-object v6, v11, Lf3/t;->j:[J

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_17
    iget-object v12, v11, Lf3/t;->i:[J

    array-length v13, v12

    if-ge v8, v13, :cond_2a

    move/from16 v16, v14

    aget-wide v13, v6, v8

    const-wide/16 v22, -0x1

    cmp-long v18, v13, v22

    if-eqz v18, :cond_29

    aget-wide v22, v12, v8

    move-object v12, v2

    move/from16 v18, v3

    iget-wide v2, v11, Lf3/t;->c:J

    move-object/from16 p2, v6

    move/from16 v28, v7

    iget-wide v6, v11, Lf3/t;->d:J

    move-wide/from16 v24, v2

    move-wide/from16 v26, v6

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-static {v15, v13, v14, v6, v6}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    move-result v7

    aput v7, v1, v8

    add-long/2addr v13, v2

    const/4 v2, 0x0

    invoke-static {v15, v13, v14, v0, v2}, Landroidx/media3/common/util/a1;->d([JJZZ)I

    move-result v3

    aput v3, v5, v8

    aget v3, v1, v8

    :goto_18
    aget v7, v1, v8

    if-ltz v7, :cond_25

    aget v17, p1, v7

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_25

    add-int/lit8 v7, v7, -0x1

    aput v7, v1, v8

    const/4 v6, 0x1

    goto :goto_18

    :cond_25
    if-gez v7, :cond_26

    aput v3, v1, v8

    :goto_19
    aget v3, v1, v8

    aget v6, v5, v8

    if-ge v3, v6, :cond_26

    aget v6, p1, v3

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_26

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v8

    goto :goto_19

    :cond_26
    iget v3, v11, Lf3/t;->b:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_27

    aget v3, v1, v8

    aget v7, v5, v8

    if-eq v3, v7, :cond_27

    :goto_1a
    aget v3, v5, v8

    array-length v7, v15

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_27

    add-int/lit8 v7, v3, 0x1

    aget-wide v22, v15, v7

    cmp-long v7, v22, v13

    if-gtz v7, :cond_27

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v8

    goto :goto_1a

    :cond_27
    aget v3, v5, v8

    aget v7, v1, v8

    sub-int v13, v3, v7

    add-int/2addr v9, v13

    if-eq v10, v7, :cond_28

    const/4 v7, 0x1

    goto :goto_1b

    :cond_28
    move v7, v2

    :goto_1b
    or-int v7, v28, v7

    move v10, v3

    goto :goto_1c

    :cond_29
    move-object v12, v2

    move/from16 v18, v3

    move-object/from16 p2, v6

    move/from16 v28, v7

    const/4 v2, 0x0

    const/4 v6, 0x2

    :goto_1c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p2

    move-object v2, v12

    move/from16 v14, v16

    move/from16 v3, v18

    goto/16 :goto_17

    :cond_2a
    move-object v12, v2

    move/from16 v28, v7

    move/from16 v16, v14

    const/4 v2, 0x0

    if-eq v9, v3, :cond_2b

    const/4 v0, 0x1

    goto :goto_1d

    :cond_2b
    move v0, v2

    :goto_1d
    or-int v0, v28, v0

    if-eqz v0, :cond_2c

    new-array v3, v9, [J

    goto :goto_1e

    :cond_2c
    move-object v3, v4

    :goto_1e
    if-eqz v0, :cond_2d

    new-array v6, v9, [I

    goto :goto_1f

    :cond_2d
    move-object v6, v12

    :goto_1f
    if-eqz v0, :cond_2e

    move v14, v2

    goto :goto_20

    :cond_2e
    move/from16 v14, v16

    :goto_20
    if-eqz v0, :cond_2f

    new-array v7, v9, [I

    goto :goto_21

    :cond_2f
    move-object/from16 v7, p1

    :goto_21
    new-array v8, v9, [J

    move/from16 p2, v2

    move/from16 v10, p2

    move/from16 v16, v14

    const-wide/16 v13, 0x0

    :goto_22
    iget-object v9, v11, Lf3/t;->i:[J

    array-length v9, v9

    if-ge v2, v9, :cond_34

    iget-object v9, v11, Lf3/t;->j:[J

    aget-wide v17, v9, v2

    aget v9, v1, v2

    move-object/from16 v19, v1

    aget v1, v5, v2

    if-eqz v0, :cond_30

    move-object/from16 v28, v5

    sub-int v5, v1, v9

    invoke-static {v4, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v9, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v29, v4

    move-object/from16 v4, p1

    invoke-static {v4, v9, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_30
    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v4, p1

    :goto_23
    move/from16 v5, p2

    move-object/from16 p1, v4

    move/from16 v4, v16

    :goto_24
    if-ge v9, v1, :cond_33

    const-wide/32 v24, 0xf4240

    move/from16 v31, v1

    move/from16 v30, v2

    iget-wide v1, v11, Lf3/t;->d:J

    move-wide/from16 v22, v13

    move-wide/from16 v26, v1

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v1

    aget-wide v22, v15, v9

    sub-long v32, v22, v17

    const-wide/32 v34, 0xf4240

    move-wide/from16 v22, v13

    iget-wide v13, v11, Lf3/t;->c:J

    move-wide/from16 v36, v13

    invoke-static/range {v32 .. v37}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v13

    const-wide/16 v20, 0x0

    cmp-long v16, v13, v20

    if-gez v16, :cond_31

    const/4 v5, 0x1

    :cond_31
    add-long/2addr v1, v13

    aput-wide v1, v8, v10

    if-eqz v0, :cond_32

    aget v1, v6, v10

    if-le v1, v4, :cond_32

    aget v1, v12, v9

    move v4, v1

    :cond_32
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v13, v22

    move/from16 v2, v30

    move/from16 v1, v31

    goto :goto_24

    :cond_33
    move/from16 v30, v2

    move-wide/from16 v22, v13

    const-wide/16 v20, 0x0

    iget-object v1, v11, Lf3/t;->i:[J

    aget-wide v13, v1, v30

    add-long v13, v22, v13

    add-int/lit8 v2, v30, 0x1

    move/from16 v16, v4

    move/from16 p2, v5

    move-object/from16 v1, v19

    move-object/from16 v5, v28

    move-object/from16 v4, v29

    goto/16 :goto_22

    :cond_34
    move-wide/from16 v22, v13

    const-wide/32 v24, 0xf4240

    iget-wide v0, v11, Lf3/t;->d:J

    move-wide/from16 v26, v0

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v29

    if-eqz p2, :cond_35

    iget-object v0, v11, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-virtual {v0}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->c0(Z)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    invoke-virtual {v11, v0}, Lf3/t;->a(Landroidx/media3/common/r;)Lf3/t;

    move-result-object v11

    :cond_35
    move-object/from16 v23, v11

    new-instance v0, Lf3/w;

    move-object/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move/from16 v26, v16

    move-object/from16 v27, v8

    move-object/from16 v28, v7

    invoke-direct/range {v22 .. v30}, Lf3/w;-><init>(Lf3/t;[J[II[J[IJ)V

    return-object v0

    :cond_36
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static B(Landroidx/media3/common/util/j0;II)Lf3/b$d;
    .locals 6

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    const v5, 0x73747269

    if-ne v4, v5, :cond_4

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result p0

    new-instance p1, Lf3/b$d;

    new-instance p2, Lf3/b$g;

    and-int/lit8 v0, p0, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    move v0, v2

    :goto_2
    and-int/lit8 v1, p0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    const/16 v4, 0x8

    and-int/2addr p0, v4

    if-ne p0, v4, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p2, v0, v1, v2}, Lf3/b$g;-><init>(ZZZ)V

    invoke-direct {p1, p2}, Lf3/b$d;-><init>(Lf3/b$g;)V

    return-object p1

    :cond_4
    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static C(Landroidx/media3/common/util/j0;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Lf3/b$h;
    .locals 18

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v12

    new-instance v13, Lf3/b$h;

    invoke-direct {v13, v12}, Lf3/b$h;-><init>(I)V

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v14

    :goto_1
    const-string v1, "childAtomSize must be positive"

    invoke-static {v0, v1}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_1

    const v0, 0x61766333

    if-eq v1, v0, :cond_1

    const v0, 0x656e6376

    if-eq v1, v0, :cond_1

    const v0, 0x6d317620

    if-eq v1, v0, :cond_1

    const v0, 0x6d703476

    if-eq v1, v0, :cond_1

    const v0, 0x68766331

    if-eq v1, v0, :cond_1

    const v0, 0x68657631

    if-eq v1, v0, :cond_1

    const v0, 0x73323633

    if-eq v1, v0, :cond_1

    const v0, 0x48323633

    if-eq v1, v0, :cond_1

    const v0, 0x68323633

    if-eq v1, v0, :cond_1

    const v0, 0x76703038

    if-eq v1, v0, :cond_1

    const v0, 0x76703039

    if-eq v1, v0, :cond_1

    const v0, 0x61763031

    if-eq v1, v0, :cond_1

    const v0, 0x64766176

    if-eq v1, v0, :cond_1

    const v0, 0x64766131

    if-eq v1, v0, :cond_1

    const v0, 0x64766865

    if-eq v1, v0, :cond_1

    const v0, 0x64766831

    if-eq v1, v0, :cond_1

    const v0, 0x61707631

    if-ne v1, v0, :cond_2

    :cond_1
    move/from16 v17, v9

    goto/16 :goto_5

    :cond_2
    const v0, 0x6d703461

    if-eq v1, v0, :cond_8

    const v0, 0x656e6361

    if-eq v1, v0, :cond_8

    const v0, 0x61632d33

    if-eq v1, v0, :cond_8

    const v0, 0x65632d33

    if-eq v1, v0, :cond_8

    const v0, 0x61632d34

    if-eq v1, v0, :cond_8

    const v0, 0x6d6c7061

    if-eq v1, v0, :cond_8

    const v0, 0x64747363

    if-eq v1, v0, :cond_8

    const v0, 0x64747365

    if-eq v1, v0, :cond_8

    const v0, 0x64747368

    if-eq v1, v0, :cond_8

    const v0, 0x6474736c

    if-eq v1, v0, :cond_8

    const v0, 0x64747378

    if-eq v1, v0, :cond_8

    const v0, 0x73616d72

    if-eq v1, v0, :cond_8

    const v0, 0x73617762

    if-eq v1, v0, :cond_8

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_8

    const v0, 0x736f7774

    if-eq v1, v0, :cond_8

    const v0, 0x74776f73

    if-eq v1, v0, :cond_8

    const v0, 0x2e6d7032

    if-eq v1, v0, :cond_8

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_8

    const v0, 0x6d686131

    if-eq v1, v0, :cond_8

    const v0, 0x6d686d31

    if-eq v1, v0, :cond_8

    const v0, 0x616c6163

    if-eq v1, v0, :cond_8

    const v0, 0x616c6177

    if-eq v1, v0, :cond_8

    const v0, 0x756c6177

    if-eq v1, v0, :cond_8

    const v0, 0x4f707573

    if-eq v1, v0, :cond_8

    const v0, 0x664c6143

    if-eq v1, v0, :cond_8

    const v0, 0x69616d66

    if-ne v1, v0, :cond_3

    goto :goto_4

    :cond_3
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_7

    const v0, 0x74783367

    if-eq v1, v0, :cond_7

    const v0, 0x77767474

    if-eq v1, v0, :cond_7

    const v0, 0x73747070

    if-eq v1, v0, :cond_7

    const v0, 0x63363038

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    const v0, 0x6d657474

    if-ne v1, v0, :cond_6

    invoke-static {v10, v1, v9, v11, v13}, Lf3/b;->u(Landroidx/media3/common/util/j0;IIILf3/b$h;)V

    :cond_5
    :goto_2
    move/from16 v17, v9

    goto :goto_6

    :cond_6
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_5

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v0, v11}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    iput-object v0, v13, Lf3/b$h;->b:Landroidx/media3/common/r;

    goto :goto_2

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lf3/b;->D(Landroidx/media3/common/util/j0;IIIILjava/lang/String;Lf3/b$h;)V

    goto :goto_2

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    move v9, v15

    invoke-static/range {v0 .. v9}, Lf3/b;->h(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Lf3/b$h;I)V

    goto :goto_6

    :goto_5
    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p2

    move-object/from16 v7, p4

    move-object v8, v13

    move v9, v15

    invoke-static/range {v0 .. v9}, Lf3/b;->K(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Lf3/b$h;I)V

    :goto_6
    add-int v9, v17, v16

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/j0;->W(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v13
.end method

.method private static D(Landroidx/media3/common/util/j0;IIIILjava/lang/String;Lf3/b$h;)V
    .locals 4

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->W(I)V

    const p2, 0x54544d4c

    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x74783367

    if-ne p1, p2, :cond_1

    add-int/lit8 p3, p3, -0x10

    new-array p1, p3, [B

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_0

    :cond_1
    const p0, 0x77767474

    if-ne p1, p0, :cond_2

    const-string v0, "application/x-mp4-vtt"

    goto :goto_0

    :cond_2
    const p0, 0x73747070

    if-ne p1, p0, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    const p0, 0x63363038

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    iput p0, p6, Lf3/b$h;->d:I

    const-string v0, "application/x-mp4-cea-608"

    :goto_0
    new-instance p0, Landroidx/media3/common/r$b;

    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p0, p4}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    iput-object p0, p6, Lf3/b$h;->b:Landroidx/media3/common/r;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static E(Landroidx/media3/common/util/j0;)Lf3/b$k;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->p(I)I

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v3

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v9

    add-int v10, v3, v6

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v0

    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v3, v0, v9

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    :goto_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v0

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p0

    const/high16 v6, -0x10000

    const/high16 v9, 0x10000

    if-nez v1, :cond_6

    if-ne v3, v9, :cond_6

    if-ne v2, v6, :cond_6

    if-nez p0, :cond_6

    const/16 p0, 0x5a

    goto :goto_4

    :cond_6
    if-nez v1, :cond_7

    if-ne v3, v6, :cond_7

    if-ne v2, v9, :cond_7

    if-nez p0, :cond_7

    const/16 p0, 0x10e

    goto :goto_4

    :cond_7
    if-ne v1, v6, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-ne p0, v6, :cond_8

    const/16 p0, 0xb4

    goto :goto_4

    :cond_8
    move p0, v5

    :goto_4
    new-instance v1, Lf3/b$k;

    move-object v3, v1

    move-wide v5, v7

    move v7, v0

    move v8, p0

    invoke-direct/range {v3 .. v8}, Lf3/b$k;-><init>(IJII)V

    return-object v1
.end method

.method public static F(Landroidx/media3/container/d$b;Landroidx/media3/container/d$c;JLandroidx/media3/common/DrmInitData;ZZ)Lf3/t;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x6d646961

    invoke-virtual {v0, v3}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/d$b;

    const v4, 0x68646c72    # 4.3148E24f

    invoke-virtual {v3, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/d$c;

    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v4}, Lf3/b;->q(Landroidx/media3/common/util/j0;)I

    move-result v4

    invoke-static {v4}, Lf3/b;->e(I)I

    move-result v7

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v7, v4, :cond_0

    return-object v5

    :cond_0
    const v4, 0x746b6864

    invoke-virtual {v0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/d$c;

    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v4}, Lf3/b;->E(Landroidx/media3/common/util/j0;)Lf3/b$k;

    move-result-object v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p2, v8

    if-nez v6, :cond_1

    invoke-static {v4}, Lf3/b$k;->a(Lf3/b$k;)J

    move-result-wide v10

    move-object/from16 v6, p1

    move-wide v12, v10

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    move-wide/from16 v12, p2

    :goto_0
    iget-object v6, v6, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v6}, Lf3/b;->v(Landroidx/media3/common/util/j0;)Landroidx/media3/container/f;

    move-result-object v6

    iget-wide v10, v6, Landroidx/media3/container/f;->c:J

    cmp-long v6, v12, v8

    if-nez v6, :cond_2

    :goto_1
    move-wide v12, v8

    goto :goto_2

    :cond_2
    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v8

    goto :goto_1

    :goto_2
    const v6, 0x6d696e66

    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/d$b;

    const v8, 0x7374626c

    invoke-virtual {v6, v8}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/d$b;

    const v8, 0x6d646864

    invoke-virtual {v3, v8}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/d$c;

    iget-object v3, v3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v3}, Lf3/b;->s(Landroidx/media3/common/util/j0;)Lf3/b$e;

    move-result-object v3

    const v8, 0x73747364

    invoke-virtual {v6, v8}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v14, v6, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v4}, Lf3/b$k;->b(Lf3/b$k;)I

    move-result v15

    invoke-static {v4}, Lf3/b$k;->c(Lf3/b$k;)I

    move-result v16

    invoke-static {v3}, Lf3/b$e;->a(Lf3/b$e;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, p4

    move/from16 v19, p6

    invoke-static/range {v14 .. v19}, Lf3/b;->C(Landroidx/media3/common/util/j0;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Lf3/b$h;

    move-result-object v14

    if-nez p5, :cond_3

    const v6, 0x65647473

    invoke-virtual {v0, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lf3/b;->l(Landroidx/media3/container/d$b;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v21, v0

    move-object/from16 v20, v6

    goto :goto_3

    :cond_3
    move-object/from16 v20, v5

    move-object/from16 v21, v20

    :goto_3
    iget-object v0, v14, Lf3/b$h;->b:Landroidx/media3/common/r;

    if-nez v0, :cond_4

    return-object v5

    :cond_4
    invoke-static {v4}, Lf3/b$k;->d(Lf3/b$k;)I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/media3/container/c;

    invoke-static {v4}, Lf3/b$k;->d(Lf3/b$k;)I

    move-result v5

    invoke-direct {v0, v5}, Landroidx/media3/container/c;-><init>(I)V

    iget-object v5, v14, Lf3/b$h;->b:Landroidx/media3/common/r;

    invoke-virtual {v5}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v5

    iget-object v6, v14, Lf3/b$h;->b:Landroidx/media3/common/r;

    iget-object v6, v6, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-eqz v6, :cond_5

    new-array v2, v2, [Landroidx/media3/common/x$a;

    aput-object v0, v2, v1

    invoke-virtual {v6, v2}, Landroidx/media3/common/x;->a([Landroidx/media3/common/x$a;)Landroidx/media3/common/x;

    move-result-object v0

    goto :goto_4

    :cond_5
    new-instance v6, Landroidx/media3/common/x;

    new-array v2, v2, [Landroidx/media3/common/x$a;

    aput-object v0, v2, v1

    invoke-direct {v6, v2}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    move-object v0, v6

    :goto_4
    invoke-virtual {v5, v0}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    :goto_5
    move-object/from16 v16, v0

    goto :goto_6

    :cond_6
    iget-object v0, v14, Lf3/b$h;->b:Landroidx/media3/common/r;

    goto :goto_5

    :goto_6
    new-instance v0, Lf3/t;

    move-object v5, v0

    invoke-static {v4}, Lf3/b$k;->b(Lf3/b$k;)I

    move-result v6

    invoke-static {v3}, Lf3/b$e;->b(Lf3/b$e;)J

    move-result-wide v8

    invoke-static {v3}, Lf3/b$e;->c(Lf3/b$e;)J

    move-result-wide v1

    move-object v3, v14

    move-wide v14, v1

    iget v1, v3, Lf3/b$h;->d:I

    move/from16 v17, v1

    iget-object v1, v3, Lf3/b$h;->a:[Lf3/u;

    move-object/from16 v18, v1

    iget v1, v3, Lf3/b$h;->c:I

    move/from16 v19, v1

    invoke-direct/range {v5 .. v21}, Lf3/t;-><init>(IIJJJJLandroidx/media3/common/r;I[Lf3/u;I[J[J)V

    return-object v0

    :cond_7
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v0, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static G(Landroidx/media3/container/d$b;Ll2/e0;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;
    .locals 11

    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/d$b;

    iget v4, v3, Landroidx/media3/container/d;->a:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_0

    move-object v6, p1

    move-object/from16 v5, p7

    goto :goto_1

    :cond_0
    const v4, 0x6d766864

    invoke-virtual {p0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/media3/container/d$c;

    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lf3/b;->F(Landroidx/media3/container/d$b;Landroidx/media3/container/d$c;JLandroidx/media3/common/DrmInitData;ZZ)Lf3/t;

    move-result-object v4

    move-object/from16 v5, p7

    invoke-interface {v5, v4}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/t;

    if-nez v4, :cond_1

    move-object v6, p1

    goto :goto_1

    :cond_1
    const v6, 0x6d646961

    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/d$b;

    const v6, 0x6d696e66

    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/d$b;

    const v6, 0x7374626c

    invoke-virtual {v3, v6}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/d$b;

    move-object v6, p1

    invoke-static {v4, v3, p1}, Lf3/b;->A(Lf3/t;Landroidx/media3/container/d$b;Ll2/e0;)Lf3/w;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static H(Landroidx/media3/container/d$c;)Landroidx/media3/common/x;
    .locals 6

    iget-object p0, p0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    new-instance v1, Landroidx/media3/common/x;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/x$a;

    invoke-direct {v1, v2}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    move-result v2

    if-lt v2, v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    const v5, 0x6d657461

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    add-int v4, v2, v3

    invoke-static {p0, v4}, Lf3/b;->I(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object v1

    goto :goto_1

    :cond_0
    const v5, 0x736d7461

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    add-int v4, v2, v3

    invoke-static {p0, v4}, Lf3/r;->b(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v5, -0x56878686

    if-ne v4, v5, :cond_2

    invoke-static {p0}, Lf3/b;->L(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object v1

    :cond_2
    :goto_1
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static I(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-static {p0}, Lf3/b;->f(Landroidx/media3/common/util/j0;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lf3/b;->r(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static J(Landroidx/media3/common/util/j0;II)Lf3/b$l;
    .locals 6

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    const v5, 0x65796573

    if-ne v4, v5, :cond_1

    invoke-static {p0, v0, v3}, Lf3/b;->B(Landroidx/media3/common/util/j0;II)Lf3/b$d;

    move-result-object v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lf3/b$l;

    invoke-direct {v1, v2}, Lf3/b$l;-><init>(Lf3/b$d;)V

    :goto_2
    return-object v1
.end method

.method private static K(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Lf3/b$h;I)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v6

    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    invoke-static {v0, v1, v2}, Lf3/b;->y(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lf3/u;

    iget-object v11, v11, Lf3/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    :goto_0
    iget-object v11, v4, Lf3/b$h;->a:[Lf3/u;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lf3/u;

    aput-object v8, v11, p9

    :cond_1
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->W(I)V

    :cond_2
    const v8, 0x6d317620

    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x8

    move v13, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_5

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v30

    move-object/from16 p9, v11

    sub-int v11, v30, v1

    if-ne v11, v2, :cond_7

    :cond_5
    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v35, v14

    move-object/from16 v32, v16

    move/from16 v28, v19

    move/from16 v11, v22

    move/from16 v33, v23

    move/from16 v12, v24

    const/4 v2, 0x0

    move/from16 v23, v13

    move/from16 v24, v15

    goto/16 :goto_27

    :cond_6
    move-object/from16 p9, v11

    :cond_7
    if-lez v9, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v11, v1}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v11, 0x61766343

    if-ne v1, v11, :cond_b

    if-nez v8, :cond_9

    const/4 v1, 0x1

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    invoke-static {v1, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static/range {p0 .. p0}, Ll2/d;->b(Landroidx/media3/common/util/j0;)Ll2/d;

    move-result-object v1

    iget-object v8, v1, Ll2/d;->a:Ljava/util/List;

    iget v11, v1, Ll2/d;->b:I

    iput v11, v4, Lf3/b$h;->c:I

    if-nez v29, :cond_a

    iget v14, v1, Ll2/d;->k:F

    :cond_a
    iget-object v11, v1, Ll2/d;->l:Ljava/lang/String;

    iget v12, v1, Ll2/d;->j:I

    iget v13, v1, Ll2/d;->g:I

    iget v15, v1, Ll2/d;->h:I

    iget v2, v1, Ll2/d;->i:I

    move/from16 v16, v2

    iget v2, v1, Ll2/d;->e:I

    iget v1, v1, Ll2/d;->f:I

    const-string v17, "video/avc"

    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v20, v12

    move/from16 v23, v15

    move/from16 v24, v16

    const/4 v6, 0x0

    move v15, v2

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    const/4 v2, 0x0

    move-object/from16 v17, v11

    move v11, v13

    move v13, v1

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_26

    :cond_b
    const v2, 0x68766343

    const-string v11, "video/hevc"

    if-ne v1, v2, :cond_f

    if-nez v8, :cond_c

    const/4 v1, 0x1

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    invoke-static {v1, v2}, Ll2/u;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static/range {p0 .. p0}, Ll2/f0;->a(Landroidx/media3/common/util/j0;)Ll2/f0;

    move-result-object v1

    iget-object v2, v1, Ll2/f0;->a:Ljava/util/List;

    iget v8, v1, Ll2/f0;->b:I

    iput v8, v4, Lf3/b$h;->c:I

    if-nez v29, :cond_d

    iget v14, v1, Ll2/f0;->l:F

    :cond_d
    iget v8, v1, Ll2/f0;->m:I

    iget v12, v1, Ll2/f0;->c:I

    iget-object v13, v1, Ll2/f0;->n:Ljava/lang/String;

    iget v15, v1, Ll2/f0;->k:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_e

    move/from16 v19, v15

    :cond_e
    iget v2, v1, Ll2/f0;->h:I

    iget v15, v1, Ll2/f0;->i:I

    move/from16 v17, v2

    iget v2, v1, Ll2/f0;->j:I

    move/from16 v20, v2

    iget v2, v1, Ll2/f0;->f:I

    move/from16 v21, v2

    iget v2, v1, Ll2/f0;->g:I

    iget-object v1, v1, Ll2/f0;->o:Landroidx/media3/container/g$k;

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v20

    move/from16 v15, v21

    const/4 v1, -0x1

    const/4 v6, 0x0

    move/from16 v20, v8

    move-object v8, v11

    move/from16 v21, v12

    move/from16 v11, v17

    move-object/from16 v17, v13

    move v13, v2

    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_f
    const v2, 0x6c687643

    move-object/from16 v31, v3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1b

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    invoke-static {v1, v2}, Ll2/u;->a(ZLjava/lang/String;)V

    move-object/from16 v2, v28

    if-eqz v2, :cond_10

    iget-object v1, v2, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    const-string v3, "must have at least two layers"

    invoke-static {v1, v3}, Ll2/u;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/g$k;

    invoke-static {v0, v1}, Ll2/f0;->c(Landroidx/media3/common/util/j0;Landroidx/media3/container/g$k;)Ll2/f0;

    move-result-object v1

    iget v3, v4, Lf3/b$h;->c:I

    iget v8, v1, Ll2/f0;->b:I

    if-ne v3, v8, :cond_11

    const/4 v3, 0x1

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v3, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    iget v3, v1, Ll2/f0;->h:I

    const/4 v8, -0x1

    move/from16 v11, v22

    if-eq v3, v8, :cond_13

    if-ne v11, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    :goto_b
    const-string v12, "colorSpace must be the same for both views"

    invoke-static {v3, v12}, Ll2/u;->a(ZLjava/lang/String;)V

    :cond_13
    iget v3, v1, Ll2/f0;->i:I

    move/from16 v12, v23

    if-eq v3, v8, :cond_15

    if-ne v12, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    :goto_c
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v3, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    :cond_15
    iget v3, v1, Ll2/f0;->j:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_17

    move/from16 v8, v24

    move/from16 v17, v8

    if-ne v8, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v3, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    goto :goto_e

    :cond_17
    move/from16 v17, v24

    :goto_e
    iget v3, v1, Ll2/f0;->f:I

    if-ne v15, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v3, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    iget v3, v1, Ll2/f0;->g:I

    if-ne v13, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v3, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    move-object/from16 v3, v16

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v3

    iget-object v8, v1, Ll2/f0;->a:Ljava/util/List;

    invoke-virtual {v3, v8}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_11

    :cond_1a
    const-string v8, "initializationData must be already set from hvcC atom"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v3, v8}, Ll2/u;->a(ZLjava/lang/String;)V

    :goto_11
    iget-object v1, v1, Ll2/f0;->n:Ljava/lang/String;

    const-string v3, "video/mv-hevc"

    move-object/from16 v28, v2

    move-object v8, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v24, v17

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v17, v1

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v32, v16

    move/from16 v11, v22

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v2, v28

    const v3, 0x76657875

    if-ne v1, v3, :cond_20

    invoke-static {v0, v12, v9}, Lf3/b;->J(Landroidx/media3/common/util/j0;II)Lf3/b$l;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {v1}, Lf3/b$l;->a(Lf3/b$l;)Lf3/b$d;

    move-result-object v3

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1d

    iget-object v3, v2, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v12, 0x2

    if-lt v3, v12, :cond_1d

    invoke-virtual {v1}, Lf3/b$l;->b()Z

    move-result v3

    const-string v12, "both eye views must be marked as available"

    invoke-static {v3, v12}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-static {v1}, Lf3/b$l;->a(Lf3/b$l;)Lf3/b$d;

    move-result-object v1

    invoke-static {v1}, Lf3/b$d;->a(Lf3/b$d;)Lf3/b$g;

    move-result-object v1

    invoke-static {v1}, Lf3/b$g;->c(Lf3/b$g;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v1, v3}, Ll2/u;->a(ZLjava/lang/String;)V

    :cond_1c
    move/from16 v3, v19

    goto :goto_13

    :cond_1d
    move/from16 v3, v19

    const/4 v12, -0x1

    if-ne v3, v12, :cond_1f

    invoke-static {v1}, Lf3/b$l;->a(Lf3/b$l;)Lf3/b$d;

    move-result-object v1

    invoke-static {v1}, Lf3/b$d;->a(Lf3/b$d;)Lf3/b$g;

    move-result-object v1

    invoke-static {v1}, Lf3/b$g;->c(Lf3/b$g;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x5

    :goto_12
    move/from16 v19, v1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x4

    goto :goto_12

    :cond_1f
    :goto_13
    move/from16 v19, v3

    :goto_14
    move-object/from16 v28, v2

    move/from16 v40, v6

    move/from16 v22, v10

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_26

    :cond_20
    move/from16 v3, v19

    move-object/from16 v19, v2

    const v2, 0x64766343

    if-eq v1, v2, :cond_21

    const v2, 0x64767643

    if-ne v1, v2, :cond_22

    :cond_21
    move/from16 v28, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v35, v14

    move/from16 v24, v15

    move/from16 v12, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_25

    :cond_22
    const v2, 0x76706343

    if-ne v1, v2, :cond_28

    if-nez v8, :cond_23

    const/4 v1, 0x1

    :goto_15
    const/4 v2, 0x0

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    goto :goto_15

    :goto_16
    invoke-static {v1, v2}, Ll2/u;->a(ZLjava/lang/String;)V

    const v1, 0x76703038

    const-string v2, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_24

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_17

    :cond_24
    move-object v1, v2

    :goto_17
    add-int/lit8 v12, v12, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v11

    int-to-byte v11, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v12

    shr-int/lit8 v13, v12, 0x4

    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x7

    int-to-byte v15, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    int-to-byte v2, v13

    invoke-static {v8, v11, v2, v15}, Landroidx/media3/common/util/j;->h(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v32, v2

    :cond_25
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v11

    invoke-static {v8}, Landroidx/media3/common/i;->j(I)I

    move-result v22

    if-eqz v2, :cond_27

    const/16 v23, 0x1

    goto :goto_19

    :cond_27
    const/16 v23, 0x2

    :goto_19
    invoke-static {v11}, Landroidx/media3/common/i;->k(I)I

    move-result v24

    move-object v8, v1

    move/from16 v40, v6

    move v15, v13

    move-object/from16 v28, v19

    move/from16 v11, v22

    move-object/from16 v16, v32

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move/from16 v22, v10

    goto/16 :goto_26

    :cond_28
    const v2, 0x61763143

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, v9, -0x8

    new-array v2, v1, [B

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static/range {p0 .. p0}, Lf3/b;->i(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;

    move-result-object v1

    iget v2, v1, Landroidx/media3/common/i;->e:I

    iget v8, v1, Landroidx/media3/common/i;->f:I

    iget v11, v1, Landroidx/media3/common/i;->a:I

    iget v12, v1, Landroidx/media3/common/i;->b:I

    iget v1, v1, Landroidx/media3/common/i;->c:I

    const-string v13, "video/av01"

    move/from16 v24, v1

    move v15, v2

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move-object/from16 v28, v19

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move-object/from16 v41, v13

    move v13, v8

    move-object/from16 v8, v41

    goto/16 :goto_26

    :cond_29
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_2b

    if-nez v25, :cond_2a

    invoke-static {}, Lf3/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2a
    move-object/from16 v1, v25

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v40, v6

    move/from16 v22, v10

    move-object/from16 v28, v19

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    goto/16 :goto_26

    :cond_2b
    const v2, 0x6d646376

    if-ne v1, v2, :cond_2d

    if-nez v25, :cond_2c

    invoke-static {}, Lf3/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2c
    move-object/from16 v1, v25

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v12

    move/from16 v22, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v4

    move/from16 v23, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v13

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v15

    move/from16 v28, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v3

    move/from16 v35, v14

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v36

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v38

    move/from16 v40, v6

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v12, v36, v2

    long-to-int v4, v12

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v2, v38, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v14, v35

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1a
    const/4 v6, 0x0

    :goto_1b
    move/from16 v41, v28

    move-object/from16 v28, v19

    move/from16 v19, v41

    goto/16 :goto_26

    :cond_2d
    move/from16 v28, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v35, v14

    move/from16 v24, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_30

    if-nez v8, :cond_2e

    const/4 v1, 0x1

    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_2e
    const/4 v1, 0x0

    goto :goto_1c

    :goto_1d
    invoke-static {v1, v2}, Ll2/u;->a(ZLjava/lang/String;)V

    move-object/from16 v8, p9

    :cond_2f
    :goto_1e
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    :goto_1f
    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v14, v35

    const/4 v1, -0x1

    goto :goto_1a

    :cond_30
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_33

    if-nez v8, :cond_31

    const/4 v1, 0x1

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    :goto_20
    invoke-static {v1, v2}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-static {v0, v12}, Lf3/b;->m(Landroidx/media3/common/util/j0;I)Lf3/b$c;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lf3/b$c;->a(Lf3/b$c;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Lf3/b$c;->b(Lf3/b$c;)[B

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_21

    :cond_32
    move-object/from16 v16, v32

    :goto_21
    move-object v8, v1

    move/from16 v13, v23

    move/from16 v15, v24

    goto :goto_1f

    :cond_33
    const v3, 0x62747274

    if-ne v1, v3, :cond_34

    invoke-static {v0, v12}, Lf3/b;->j(Landroidx/media3/common/util/j0;I)Lf3/b$a;

    move-result-object v26

    goto :goto_1e

    :cond_34
    const v3, 0x70617370

    if-ne v1, v3, :cond_35

    invoke-static {v0, v12}, Lf3/b;->w(Landroidx/media3/common/util/j0;I)F

    move-result v1

    move v14, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/16 v29, 0x1

    goto :goto_1b

    :cond_35
    const v3, 0x73763364

    if-ne v1, v3, :cond_36

    invoke-static {v0, v12, v9}, Lf3/b;->x(Landroidx/media3/common/util/j0;II)[B

    move-result-object v18

    goto :goto_1e

    :cond_36
    const v3, 0x73743364

    if-ne v1, v3, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->X(I)V

    if-nez v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v4, 0x1

    if-eq v1, v4, :cond_39

    const/4 v6, 0x2

    if-eq v1, v6, :cond_38

    if-eq v1, v3, :cond_37

    goto/16 :goto_1e

    :cond_37
    move/from16 v28, v3

    goto/16 :goto_1e

    :cond_38
    const/16 v28, 0x2

    goto/16 :goto_1e

    :cond_39
    move/from16 v28, v4

    goto/16 :goto_1e

    :cond_3a
    const/16 v28, 0x0

    goto/16 :goto_1e

    :cond_3b
    const/4 v4, 0x1

    const v3, 0x61707643

    if-ne v1, v3, :cond_3c

    add-int/lit8 v1, v9, -0xc

    new-array v3, v1, [B

    add-int/lit8 v12, v12, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    new-instance v1, Landroidx/media3/common/util/j0;

    invoke-direct {v1, v3}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-static {v1}, Lf3/b;->g(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;

    move-result-object v1

    iget v3, v1, Landroidx/media3/common/i;->e:I

    iget v4, v1, Landroidx/media3/common/i;->f:I

    iget v8, v1, Landroidx/media3/common/i;->a:I

    iget v10, v1, Landroidx/media3/common/i;->b:I

    iget v1, v1, Landroidx/media3/common/i;->c:I

    const-string v11, "video/apv"

    move/from16 v24, v1

    move v15, v3

    move v13, v4

    move/from16 v23, v10

    move/from16 v14, v35

    const/4 v1, -0x1

    move-object/from16 v41, v11

    move v11, v8

    move-object/from16 v8, v41

    move/from16 v42, v28

    move-object/from16 v28, v19

    move/from16 v19, v42

    goto/16 :goto_26

    :cond_3c
    const/4 v6, 0x0

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_41

    const/4 v1, -0x1

    move/from16 v12, v34

    if-ne v11, v1, :cond_42

    if-ne v12, v1, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    const v10, 0x6e636c78

    if-eq v3, v10, :cond_3e

    const v10, 0x6e636c63

    if-ne v3, v10, :cond_3d

    goto :goto_22

    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported color type: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxParsers"

    invoke-static {v4, v3}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_3e
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->X(I)V

    const/16 v12, 0x13

    if-ne v9, v12, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3f

    move v12, v4

    goto :goto_23

    :cond_3f
    move v12, v6

    :goto_23
    invoke-static {v3}, Landroidx/media3/common/i;->j(I)I

    move-result v3

    if-eqz v12, :cond_40

    move v11, v4

    :cond_40
    invoke-static {v10}, Landroidx/media3/common/i;->k(I)I

    move-result v4

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v14, v35

    move/from16 v24, v4

    move/from16 v23, v11

    move v11, v3

    goto/16 :goto_1b

    :cond_41
    move/from16 v12, v34

    const/4 v1, -0x1

    :cond_42
    :goto_24
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v14, v35

    move/from16 v24, v12

    goto/16 :goto_1b

    :goto_25
    invoke-static/range {p0 .. p0}, Ll2/o;->a(Landroidx/media3/common/util/j0;)Ll2/o;

    move-result-object v3

    if-eqz v3, :cond_42

    iget-object v3, v3, Ll2/o;->c:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    move-object/from16 v17, v3

    goto :goto_24

    :goto_26
    add-int/2addr v7, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p8

    move/from16 v10, v22

    move-object/from16 v3, v31

    move/from16 v6, v40

    move/from16 v22, v11

    move-object/from16 v11, p9

    goto/16 :goto_2

    :goto_27
    if-nez v8, :cond_43

    return-void

    :cond_43
    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v9, v17

    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v14, v35

    invoke-virtual {v0, v14}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->t0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v9, v18

    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->r0([B)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->x0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v9, v32

    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->l0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->m0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v3, v31

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/i$b;

    invoke-direct {v1}, Landroidx/media3/common/i$b;-><init>()V

    invoke-virtual {v1, v11}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    move-result-object v1

    move/from16 v3, v33

    invoke-virtual {v1, v3}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    move-result-object v1

    if-eqz v25, :cond_44

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_28

    :cond_44
    move-object v9, v2

    :goto_28
    invoke-virtual {v1, v9}, Landroidx/media3/common/i$b;->f([B)Landroidx/media3/common/i$b;

    move-result-object v1

    move/from16 v15, v24

    invoke-virtual {v1, v15}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    move-result-object v1

    move/from16 v13, v23

    invoke-virtual {v1, v13}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    move-result-object v0

    if-eqz v26, :cond_45

    invoke-static/range {v26 .. v26}, Lf3/b$a;->b(Lf3/b$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-static/range {v26 .. v26}, Lf3/b$a;->a(Lf3/b$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    goto :goto_29

    :cond_45
    if-eqz v27, :cond_46

    invoke-static/range {v27 .. v27}, Lf3/b$c;->d(Lf3/b$c;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Lf3/b$c;->c(Lf3/b$c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    :cond_46
    :goto_29
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    move-object/from16 v1, p8

    iput-object v0, v1, Lf3/b$h;->b:Landroidx/media3/common/r;

    return-void
.end method

.method private static L(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v2, Landroidx/media3/common/x;

    new-instance v4, Landroidx/media3/container/e;

    invoke-direct {v4, v3, p0}, Landroidx/media3/container/e;-><init>(FF)V

    new-array p0, v0, [Landroidx/media3/common/x$a;

    aput-object v4, p0, v1

    invoke-direct {v2, p0}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/a1;->p(III)I

    move-result v4

    array-length v5, p0

    sub-int/2addr v5, v2

    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/a1;->p(III)I

    move-result v0

    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private static c(Landroidx/media3/common/util/j0;III)I
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ll2/u;->a(ZLjava/lang/String;)V

    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    if-lez v3, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    if-ne v4, p1, :cond_2

    return v0

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 5

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    const/4 v2, 0x3

    new-array v3, v2, [C

    const/4 v4, 0x0

    aput-char v0, v3, v4

    const/4 v0, 0x1

    aput-char v1, v3, v0

    const/4 v1, 0x2

    aput-char p0, v3, v1

    :goto_0
    if-ge v4, v2, :cond_2

    aget-char p0, v3, v4

    const/16 v1, 0x61

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static e(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static f(Landroidx/media3/common/util/j0;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-void
.end method

.method private static g(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;
    .locals 11

    new-instance v0, Landroidx/media3/common/i$b;

    invoke-direct {v0}, Landroidx/media3/common/i$b;-><init>()V

    new-instance v1, Landroidx/media3/common/util/i0;

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->p(I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v8

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->s(I)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    invoke-virtual {v0, v9}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    if-eqz v8, :cond_1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v9

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v10

    invoke-static {v8}, Landroidx/media3/common/i;->j(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    move-result-object v8

    if-eqz v10, :cond_0

    move v10, p0

    goto :goto_2

    :cond_0
    const/4 v10, 0x2

    :goto_2
    invoke-virtual {v8, v10}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    move-result-object v8

    invoke-static {v9}, Landroidx/media3/common/i;->k(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroidx/media3/common/util/j0;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Lf3/b$h;I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const/4 v8, 0x1

    const/16 v9, 0x10

    add-int/lit8 v10, v2, 0x10

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v10, 0x6

    const/16 v11, 0x8

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v13

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->X(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->X(I)V

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    const/4 v12, 0x2

    if-eqz v13, :cond_d

    if-ne v13, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v13, v12, :cond_c

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->o()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->L()I

    move-result v10

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->L()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->L()I

    move-result v19

    and-int/lit8 v20, v19, 0x1

    if-eqz v20, :cond_2

    move/from16 v20, v8

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_3

    move/from16 v19, v8

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    :goto_2
    const/16 v12, 0x20

    if-nez v20, :cond_a

    if-ne v13, v11, :cond_4

    const/4 v12, 0x3

    goto :goto_3

    :cond_4
    const/16 v15, 0x10

    if-ne v13, v15, :cond_6

    if-eqz v19, :cond_5

    const/high16 v12, 0x10000000

    goto :goto_3

    :cond_5
    const/4 v12, 0x2

    goto :goto_3

    :cond_6
    const/16 v15, 0x18

    if-ne v13, v15, :cond_8

    if-eqz v19, :cond_7

    const/high16 v12, 0x50000000

    goto :goto_3

    :cond_7
    const/16 v12, 0x15

    goto :goto_3

    :cond_8
    if-ne v13, v12, :cond_b

    if-eqz v19, :cond_9

    const/high16 v12, 0x60000000

    goto :goto_3

    :cond_9
    const/16 v12, 0x16

    goto :goto_3

    :cond_a
    if-ne v13, v12, :cond_b

    move v12, v14

    goto :goto_3

    :cond_b
    const/4 v12, -0x1

    :goto_3
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->X(I)V

    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    return-void

    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v9

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->I()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v12

    sub-int/2addr v12, v14

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v12

    if-ne v13, v8, :cond_e

    const/16 v13, 0x10

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_e
    move v13, v12

    const/4 v12, -0x1

    move/from16 v26, v10

    move v10, v9

    move/from16 v9, v26

    :goto_5
    const v15, 0x73617762

    const v14, 0x73616d72

    const v8, 0x69616d66

    if-ne v1, v8, :cond_f

    const/4 v9, -0x1

    const/4 v10, -0x1

    goto :goto_7

    :cond_f
    if-ne v1, v14, :cond_10

    const/16 v9, 0x1f40

    :goto_6
    const/4 v10, 0x1

    goto :goto_7

    :cond_10
    if-ne v1, v15, :cond_11

    const/16 v9, 0x3e80

    goto :goto_6

    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v11

    const v8, 0x656e6361

    if-ne v1, v8, :cond_14

    invoke-static {v0, v2, v3}, Lf3/b;->y(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v6, :cond_12

    const/4 v6, 0x0

    goto :goto_8

    :cond_12
    iget-object v15, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lf3/u;

    iget-object v15, v15, Lf3/u;->b:Ljava/lang/String;

    invoke-virtual {v6, v15}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v6

    :goto_8
    iget-object v15, v7, Lf3/b$h;->a:[Lf3/u;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lf3/u;

    aput-object v8, v15, p9

    :cond_13
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->W(I)V

    :cond_14
    const v8, 0x61632d33

    const-string v15, "audio/mhm1"

    if-ne v1, v8, :cond_15

    const-string v1, "audio/ac3"

    :goto_9
    move v14, v12

    goto/16 :goto_d

    :cond_15
    const v8, 0x65632d33

    if-ne v1, v8, :cond_16

    const-string v1, "audio/eac3"

    goto :goto_9

    :cond_16
    const v8, 0x61632d34

    if-ne v1, v8, :cond_17

    const-string v1, "audio/ac4"

    goto :goto_9

    :cond_17
    const v8, 0x64747363

    if-ne v1, v8, :cond_18

    const-string v1, "audio/vnd.dts"

    goto :goto_9

    :cond_18
    const v8, 0x64747368

    if-eq v1, v8, :cond_2d

    const v8, 0x6474736c

    if-ne v1, v8, :cond_19

    goto/16 :goto_c

    :cond_19
    const v8, 0x64747365

    if-ne v1, v8, :cond_1a

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_9

    :cond_1a
    const v8, 0x64747378

    if-ne v1, v8, :cond_1b

    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_9

    :cond_1b
    if-ne v1, v14, :cond_1c

    const-string v1, "audio/3gpp"

    goto :goto_9

    :cond_1c
    const v8, 0x73617762

    if-ne v1, v8, :cond_1d

    const-string v1, "audio/amr-wb"

    goto :goto_9

    :cond_1d
    const v8, 0x736f7774

    const-string v14, "audio/raw"

    if-ne v1, v8, :cond_1e

    :goto_a
    move-object v1, v14

    const/4 v14, 0x2

    goto/16 :goto_d

    :cond_1e
    const v8, 0x74776f73

    if-ne v1, v8, :cond_1f

    move-object v1, v14

    const/high16 v14, 0x10000000

    goto/16 :goto_d

    :cond_1f
    const v8, 0x6c70636d

    if-ne v1, v8, :cond_21

    const/4 v8, -0x1

    if-ne v12, v8, :cond_20

    goto :goto_a

    :cond_20
    move-object v1, v14

    goto :goto_9

    :cond_21
    const v8, 0x2e6d7032

    if-eq v1, v8, :cond_2c

    const v8, 0x2e6d7033

    if-ne v1, v8, :cond_22

    goto :goto_b

    :cond_22
    const v8, 0x6d686131

    if-ne v1, v8, :cond_23

    const-string v1, "audio/mha1"

    goto :goto_9

    :cond_23
    const v8, 0x6d686d31

    if-ne v1, v8, :cond_24

    move v14, v12

    move-object v1, v15

    goto :goto_d

    :cond_24
    const v8, 0x616c6163

    if-ne v1, v8, :cond_25

    const-string v1, "audio/alac"

    goto/16 :goto_9

    :cond_25
    const v8, 0x616c6177

    if-ne v1, v8, :cond_26

    const-string v1, "audio/g711-alaw"

    goto/16 :goto_9

    :cond_26
    const v8, 0x756c6177

    if-ne v1, v8, :cond_27

    const-string v1, "audio/g711-mlaw"

    goto/16 :goto_9

    :cond_27
    const v8, 0x4f707573

    if-ne v1, v8, :cond_28

    const-string v1, "audio/opus"

    goto/16 :goto_9

    :cond_28
    const v8, 0x664c6143

    if-ne v1, v8, :cond_29

    const-string v1, "audio/flac"

    goto/16 :goto_9

    :cond_29
    const v8, 0x6d6c7061

    if-ne v1, v8, :cond_2a

    const-string v1, "audio/true-hd"

    goto/16 :goto_9

    :cond_2a
    const v8, 0x69616d66

    if-ne v1, v8, :cond_2b

    const-string v1, "audio/iamf"

    goto/16 :goto_9

    :cond_2b
    move v14, v12

    const/4 v1, 0x0

    goto :goto_d

    :cond_2c
    :goto_b
    const-string v1, "audio/mpeg"

    goto/16 :goto_9

    :cond_2d
    :goto_c
    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_9

    :goto_d
    move/from16 v25, v14

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v24, 0x0

    :goto_e
    sub-int v14, v11, v2

    if-ge v14, v3, :cond_47

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v14

    if-lez v14, :cond_2e

    const/4 v2, 0x1

    goto :goto_f

    :cond_2e
    const/4 v2, 0x0

    :goto_f
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    const v3, 0x6d686143

    if-ne v2, v3, :cond_32

    const/16 v3, 0x8

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-static {v1, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v8, v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object/from16 p7, v15

    goto :goto_10

    :cond_2f
    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 p7, v15

    const/4 v8, 0x1

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v3, v15, v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v3

    new-array v15, v3, [B

    invoke-virtual {v0, v15, v2, v3}, Landroidx/media3/common/util/j0;->l([BII)V

    if-nez v12, :cond_30

    invoke-static {v15}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v12, v3

    goto :goto_11

    :cond_30
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v15, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v12, v2

    :cond_31
    :goto_11
    const/4 v3, -0x1

    :goto_12
    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v21, 0x2

    const v22, 0x616c6163

    const/16 v23, 0x8

    goto/16 :goto_1b

    :cond_32
    move-object/from16 p7, v15

    const v3, 0x6d686150

    if-ne v2, v3, :cond_34

    const/16 v3, 0x8

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v2

    if-lez v2, :cond_31

    new-array v3, v2, [B

    const/4 v15, 0x0

    invoke-virtual {v0, v3, v15, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    if-nez v12, :cond_33

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_11

    :cond_33
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_11

    :cond_34
    const v3, 0x65736473

    if-eq v2, v3, :cond_35

    if-eqz p6, :cond_36

    const v15, 0x77617665

    if-ne v2, v15, :cond_36

    :cond_35
    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v21, 0x2

    const v22, 0x616c6163

    const/16 v23, 0x8

    goto/16 :goto_18

    :cond_36
    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    invoke-static {v0, v11}, Lf3/b;->j(Landroidx/media3/common/util/j0;I)Lf3/b$a;

    move-result-object v24

    goto :goto_11

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    const/16 v3, 0x8

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Ll2/b;->d(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    move-result-object v2

    iput-object v2, v7, Lf3/b$h;->b:Landroidx/media3/common/r;

    :goto_13
    move/from16 v23, v3

    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v21, 0x2

    goto/16 :goto_17

    :cond_38
    const/16 v3, 0x8

    const v15, 0x64656333

    if-ne v2, v15, :cond_39

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Ll2/b;->h(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    move-result-object v2

    iput-object v2, v7, Lf3/b$h;->b:Landroidx/media3/common/r;

    goto :goto_13

    :cond_39
    const v15, 0x64616334

    if-ne v2, v15, :cond_3a

    add-int/lit8 v2, v11, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Ll2/c;->d(Landroidx/media3/common/util/j0;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r;

    move-result-object v2

    iput-object v2, v7, Lf3/b$h;->b:Landroidx/media3/common/r;

    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v21, 0x2

    const/16 v23, 0x8

    goto/16 :goto_17

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v13, :cond_3b

    move v9, v13

    const/4 v3, -0x1

    const/4 v10, 0x2

    goto/16 :goto_12

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v0, v15}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v15, 0x0

    const v3, 0x64647473

    if-eq v2, v3, :cond_3d

    const v3, 0x75647473

    if-ne v2, v3, :cond_3e

    :cond_3d
    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v21, 0x2

    const/16 v23, 0x8

    goto/16 :goto_16

    :cond_3e
    const v3, 0x644f7073

    if-ne v2, v3, :cond_3f

    const/16 v23, 0x8

    add-int/lit8 v2, v14, -0x8

    sget-object v3, Lf3/b;->a:[B

    array-length v12, v3

    add-int/2addr v12, v2

    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    add-int/lit8 v15, v11, 0x8

    invoke-virtual {v0, v15}, Landroidx/media3/common/util/j0;->W(I)V

    array-length v3, v3

    invoke-virtual {v0, v12, v3, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {v12}, Ll2/k0;->a([B)Ljava/util/List;

    move-result-object v12

    const/4 v3, -0x1

    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v21, 0x2

    :goto_14
    const v22, 0x616c6163

    goto/16 :goto_1b

    :cond_3f
    const/16 v23, 0x8

    const v3, 0x64664c61

    if-ne v2, v3, :cond_40

    add-int/lit8 v2, v14, -0xc

    add-int/lit8 v3, v14, -0x8

    new-array v3, v3, [B

    const/16 v12, 0x66

    const/4 v15, 0x0

    aput-byte v12, v3, v15

    const/16 v12, 0x4c

    const/4 v15, 0x1

    aput-byte v12, v3, v15

    const/16 v12, 0x61

    const/16 v21, 0x2

    aput-byte v12, v3, v21

    const/16 v12, 0x43

    const/16 v17, 0x3

    aput-byte v12, v3, v17

    add-int/lit8 v12, v11, 0xc

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v12, 0x4

    invoke-virtual {v0, v3, v12, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move/from16 v19, v12

    const/4 v3, -0x1

    const/16 v18, 0x0

    :goto_15
    const v22, 0x616c6163

    move-object v12, v2

    goto/16 :goto_1b

    :cond_40
    const v3, 0x616c6163

    const/4 v15, 0x1

    const/16 v17, 0x3

    const/16 v19, 0x4

    const/16 v21, 0x2

    if-ne v2, v3, :cond_41

    add-int/lit8 v2, v14, -0xc

    new-array v9, v2, [B

    add-int/lit8 v10, v11, 0xc

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {v9}, Landroidx/media3/common/util/j;->u([B)Landroid/util/Pair;

    move-result-object v2

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    move/from16 v22, v3

    move v9, v10

    const/4 v3, -0x1

    const/16 v18, 0x0

    move v10, v2

    goto/16 :goto_1b

    :cond_41
    const v3, 0x69616362

    if-ne v2, v3, :cond_42

    add-int/lit8 v2, v11, 0x9

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->M()I

    move-result v2

    new-array v3, v2, [B

    const/4 v12, 0x0

    invoke-virtual {v0, v3, v12, v2}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move/from16 v18, v12

    const/4 v3, -0x1

    goto :goto_15

    :cond_42
    const/16 v18, 0x0

    goto :goto_17

    :goto_16
    new-instance v2, Landroidx/media3/common/r$b;

    invoke-direct {v2}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v2, v4}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v2

    iput-object v2, v7, Lf3/b$h;->b:Landroidx/media3/common/r;

    :goto_17
    const/4 v3, -0x1

    goto/16 :goto_14

    :goto_18
    if-ne v2, v3, :cond_43

    move v2, v11

    :goto_19
    const/4 v3, -0x1

    goto :goto_1a

    :cond_43
    invoke-static {v0, v3, v11, v14}, Lf3/b;->c(Landroidx/media3/common/util/j0;III)I

    move-result v2

    goto :goto_19

    :goto_1a
    if-eq v2, v3, :cond_46

    invoke-static {v0, v2}, Lf3/b;->m(Landroidx/media3/common/util/j0;I)Lf3/b$c;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lf3/b$c;->a(Lf3/b$c;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lf3/b$c;->b(Lf3/b$c;)[B

    move-result-object v2

    if-eqz v2, :cond_46

    const-string v12, "audio/vorbis"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_44

    invoke-static {v2}, Ll2/v0;->e([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_1b

    :cond_44
    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    invoke-static {v2}, Ll2/a;->e([B)Ll2/a$b;

    move-result-object v8

    iget v9, v8, Ll2/a$b;->a:I

    iget v10, v8, Ll2/a$b;->b:I

    iget-object v8, v8, Ll2/a$b;->c:Ljava/lang/String;

    :cond_45
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    :cond_46
    :goto_1b
    add-int/2addr v11, v14

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v15, p7

    goto/16 :goto_e

    :cond_47
    iget-object v0, v7, Lf3/b$h;->b:Landroidx/media3/common/r;

    if-nez v0, :cond_4a

    if-eqz v1, :cond_4a

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v0, v4}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    if-eqz v16, :cond_48

    invoke-static/range {v16 .. v16}, Lf3/b$c;->d(Lf3/b$c;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lf3/b$c;->c(Lf3/b$c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    goto :goto_1c

    :cond_48
    if-eqz v24, :cond_49

    invoke-static/range {v24 .. v24}, Lf3/b$a;->b(Lf3/b$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-static/range {v24 .. v24}, Lf3/b$a;->a(Lf3/b$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    :cond_49
    :goto_1c
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    iput-object v0, v7, Lf3/b$h;->b:Landroidx/media3/common/r;

    :cond_4a
    return-void
.end method

.method private static i(Landroidx/media3/common/util/j0;)Landroidx/media3/common/i;
    .locals 15

    new-instance v0, Landroidx/media3/common/i$b;

    invoke-direct {v0}, Landroidx/media3/common/i$b;-><init>()V

    new-instance v1, Landroidx/media3/common/util/i0;

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/i0;-><init>([B)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->p(I)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->s(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-ne v4, v9, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    invoke-virtual {v0, v4}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {v0, v8}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    goto :goto_3

    :cond_2
    if-gt v4, v9, :cond_5

    if-eqz v5, :cond_3

    move v4, v8

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v8, v2

    :goto_2
    invoke-virtual {v0, v8}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    :cond_5
    :goto_3
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported obu_type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string p0, "Unsupported obu_extension_flag"

    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v6

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    if-eqz v6, :cond_8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    const/16 v10, 0x7f

    if-le v6, v10, :cond_8

    const-string p0, "Excessive obu_size"

    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v6

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string p0, "Unsupported reduced_still_picture_header"

    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v10

    if-eqz v10, :cond_a

    const-string p0, "Unsupported timing_info_present_flag"

    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v10

    if-eqz v10, :cond_b

    const-string p0, "Unsupported initial_display_delay_present_flag"

    invoke-static {v8, p0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_4
    const/4 v13, 0x7

    if-gt v12, v10, :cond_d

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v14

    if-le v14, v13, :cond_c

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    add-int/2addr v7, p0

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/i0;->r(I)V

    add-int/2addr v5, p0

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_e
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_f
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v7

    if-eqz v7, :cond_10

    move v7, v9

    goto :goto_5

    :cond_10
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v7

    :goto_5
    if-lez v7, :cond_11

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_12
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    if-ne v6, v9, :cond_13

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->q()V

    :cond_13
    if-eq v6, p0, :cond_14

    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    if-eqz v3, :cond_14

    move v11, p0

    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/util/i0;->g()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v5

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v2

    if-nez v11, :cond_15

    if-ne v3, p0, :cond_15

    if-ne v5, v4, :cond_15

    if-nez v2, :cond_15

    move v1, p0

    goto :goto_6

    :cond_15
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    :goto_6
    invoke-static {v3}, Landroidx/media3/common/i;->j(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    move-result-object v2

    if-ne v1, p0, :cond_16

    goto :goto_7

    :cond_16
    move p0, v9

    :goto_7
    invoke-virtual {v2, p0}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    move-result-object p0

    invoke-static {v5}, Landroidx/media3/common/i;->k(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    :cond_17
    invoke-virtual {v0}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroidx/media3/common/util/j0;I)Lf3/b$a;
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide p0

    new-instance v2, Lf3/b$a;

    invoke-direct {v2, p0, p1, v0, v1}, Lf3/b$a;-><init>(JJ)V

    return-object v2
.end method

.method static k(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move v7, v2

    move-object v4, v3

    move-object v6, v4

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v8

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    move p2, p1

    goto :goto_3

    :cond_6
    move p2, v2

    :goto_3
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Ll2/u;->a(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_7

    move p2, p1

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-static {p0, v5, v7, v4}, Lf3/b;->z(Landroidx/media3/common/util/j0;IILjava/lang/String;)Lf3/u;

    move-result-object p0

    if-eqz p0, :cond_8

    move v2, p1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    invoke-static {v2, p1}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf3/u;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroidx/media3/container/d$b;)Landroid/util/Pair;
    .locals 8

    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-static {v0}, Lf3/b;->p(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->D()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroidx/media3/common/util/j0;I)Lf3/b$c;
    .locals 12

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-static {p0}, Lf3/b;->n(Landroidx/media3/common/util/j0;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-static {p0}, Lf3/b;->n(Landroidx/media3/common/util/j0;)I

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/y;->h(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-static {p0}, Lf3/b;->n(Landroidx/media3/common/util/j0;)I

    move-result p1

    new-array v5, p1, [B

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    new-instance p0, Lf3/b$c;

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    const-wide/16 v8, -0x1

    if-lez p1, :cond_4

    move-wide v10, v3

    goto :goto_0

    :cond_4
    move-wide v10, v8

    :goto_0
    cmp-long p1, v0, v6

    if-lez p1, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    move-object v1, p0

    move-object v3, v5

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lf3/b$c;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Lf3/b$c;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lf3/b$c;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static n(Landroidx/media3/common/util/j0;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static o(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static p(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static q(Landroidx/media3/common/util/j0;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p0

    return p0
.end method

.method private static r(Landroidx/media3/common/util/j0;I)Landroidx/media3/common/x;
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-static {p0}, Lf3/j;->d(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/media3/common/x;

    invoke-direct {p0, v0}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static s(Landroidx/media3/common/util/j0;)Lf3/b$e;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->p(I)I

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v9

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v3, v0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v6

    add-int v7, v2, v3

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    :goto_3
    move-wide v6, v4

    goto :goto_4

    :cond_3
    const-wide/32 v5, 0xf4240

    move-wide v3, v0

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    move-result p0

    invoke-static {p0}, Lf3/b;->d(I)Ljava/lang/String;

    move-result-object v8

    new-instance p0, Lf3/b$e;

    move-object v3, p0

    move-wide v4, v9

    invoke-direct/range {v3 .. v8}, Lf3/b$e;-><init>(JJLjava/lang/String;)V

    return-object p0
.end method

.method public static t(Landroidx/media3/container/d$b;)Landroidx/media3/common/x;
    .locals 10

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v0}, Lf3/b;->q(Landroidx/media3/common/util/j0;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/j0;->X(I)V

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/j0;->E(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/j0;->W(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    move-result v4

    if-le v4, v5, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v6

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    aget-object v7, v3, v7

    add-int v8, v4, v6

    invoke-static {p0, v8, v7}, Lf3/j;->i(Landroidx/media3/common/util/j0;ILjava/lang/String;)Landroidx/media3/container/b;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->W(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Landroidx/media3/common/x;

    invoke-direct {v2, v0}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static u(Landroidx/media3/common/util/j0;IIILf3/b$h;)V
    .locals 0

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->W(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/media3/common/r$b;

    invoke-direct {p1}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p1, p3}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    iput-object p0, p4, Lf3/b$h;->b:Landroidx/media3/common/r;

    :cond_0
    return-void
.end method

.method public static v(Landroidx/media3/common/util/j0;)Landroidx/media3/container/f;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-static {v0}, Lf3/b;->p(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v9

    new-instance p0, Landroidx/media3/container/f;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/f;-><init>(JJJ)V

    return-object p0
.end method

.method private static w(Landroidx/media3/common/util/j0;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static x(Landroidx/media3/common/util/j0;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static y(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Ll2/u;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    invoke-static {p0, v0, v1}, Lf3/b;->k(Landroidx/media3/common/util/j0;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static z(Landroidx/media3/common/util/j0;IILjava/lang/String;)Lf3/u;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    invoke-static {p1}, Lf3/b;->p(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->X(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/j0;->X(I)V

    move v8, v0

    move v9, v8

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result p1

    if-ne p1, p2, :cond_1

    move v4, p2

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    invoke-virtual {p0, v7, v0, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result p1

    new-array v2, p1, [B

    invoke-virtual {p0, v2, v0, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    :cond_2
    move-object v10, v2

    new-instance p0, Lf3/u;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lf3/u;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method
