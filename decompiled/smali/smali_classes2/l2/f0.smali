.class public final Ll2/f0;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:Landroidx/media3/container/g$k;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/g$k;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ll2/f0;->a:Ljava/util/List;

    move v1, p2

    iput v1, v0, Ll2/f0;->b:I

    move v1, p3

    iput v1, v0, Ll2/f0;->c:I

    move v1, p4

    iput v1, v0, Ll2/f0;->d:I

    move v1, p5

    iput v1, v0, Ll2/f0;->e:I

    move v1, p6

    iput v1, v0, Ll2/f0;->f:I

    move v1, p7

    iput v1, v0, Ll2/f0;->g:I

    move v1, p8

    iput v1, v0, Ll2/f0;->h:I

    move v1, p9

    iput v1, v0, Ll2/f0;->i:I

    move v1, p10

    iput v1, v0, Ll2/f0;->j:I

    move v1, p11

    iput v1, v0, Ll2/f0;->k:I

    move v1, p12

    iput v1, v0, Ll2/f0;->l:F

    move v1, p13

    iput v1, v0, Ll2/f0;->m:I

    move-object/from16 v1, p14

    iput-object v1, v0, Ll2/f0;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Ll2/f0;->o:Landroidx/media3/container/g$k;

    return-void
.end method

.method public static a(Landroidx/media3/common/util/j0;)Ll2/f0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ll2/f0;->b(Landroidx/media3/common/util/j0;ZLandroidx/media3/container/g$k;)Ll2/f0;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/media3/common/util/j0;ZLandroidx/media3/container/g$k;)Ll2/f0;
    .locals 36

    move-object/from16 v0, p0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v6, v3, :cond_2

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v8

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v10

    add-int/lit8 v11, v10, 0x4

    add-int/2addr v7, v11

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/j0;->W(I)V

    new-array v4, v7, [B

    const/4 v6, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v26, p2

    move v14, v6

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v22

    move/from16 v23, v9

    move-object/from16 v25, v10

    move v6, v5

    move v9, v6

    :goto_3
    if-ge v6, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v10

    and-int/lit8 v10, v10, 0x3f

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v11

    move v13, v5

    move-object/from16 v12, v26

    :goto_4
    if-ge v13, v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v1

    sget-object v8, Landroidx/media3/container/g;->a:[B

    move/from16 v27, v3

    array-length v3, v8

    invoke-static {v8, v5, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v8

    add-int/2addr v9, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v8

    invoke-static {v3, v8, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x20

    if-ne v10, v3, :cond_3

    if-nez v13, :cond_3

    add-int v3, v9, v1

    invoke-static {v4, v9, v3}, Landroidx/media3/container/g;->y([BII)Landroidx/media3/container/g$k;

    move-result-object v12

    move v8, v5

    move/from16 v34, v11

    goto/16 :goto_6

    :cond_3
    const/16 v3, 0x21

    if-ne v10, v3, :cond_5

    if-nez v13, :cond_5

    add-int v3, v9, v1

    invoke-static {v4, v9, v3, v12}, Landroidx/media3/container/g;->u([BIILandroidx/media3/container/g$k;)Landroidx/media3/container/g$h;

    move-result-object v3

    iget v8, v3, Landroidx/media3/container/g$h;->b:I

    const/4 v14, 0x1

    add-int/2addr v8, v14

    iget v15, v3, Landroidx/media3/container/g$h;->h:I

    iget v14, v3, Landroidx/media3/container/g$h;->i:I

    iget v5, v3, Landroidx/media3/container/g$h;->e:I

    add-int/lit8 v17, v5, 0x8

    iget v5, v3, Landroidx/media3/container/g$h;->f:I

    add-int/lit8 v18, v5, 0x8

    iget v5, v3, Landroidx/media3/container/g$h;->l:I

    move/from16 v16, v5

    iget v5, v3, Landroidx/media3/container/g$h;->m:I

    move/from16 v19, v5

    iget v5, v3, Landroidx/media3/container/g$h;->n:I

    move/from16 v20, v5

    iget v5, v3, Landroidx/media3/container/g$h;->j:F

    move/from16 v21, v5

    iget v5, v3, Landroidx/media3/container/g$h;->k:I

    iget-object v3, v3, Landroidx/media3/container/g$h;->c:Landroidx/media3/container/g$c;

    if-eqz v3, :cond_4

    move/from16 v23, v5

    iget v5, v3, Landroidx/media3/container/g$c;->a:I

    move/from16 p2, v8

    iget-boolean v8, v3, Landroidx/media3/container/g$c;->b:Z

    move/from16 v34, v11

    iget v11, v3, Landroidx/media3/container/g$c;->c:I

    move/from16 v24, v14

    iget v14, v3, Landroidx/media3/container/g$c;->d:I

    move/from16 v26, v15

    iget-object v15, v3, Landroidx/media3/container/g$c;->e:[I

    iget v3, v3, Landroidx/media3/container/g$c;->f:I

    move/from16 v28, v5

    move/from16 v29, v8

    move/from16 v30, v11

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v33, v3

    invoke-static/range {v28 .. v33}, Landroidx/media3/common/util/j;->f(IZII[II)Ljava/lang/String;

    move-result-object v25

    goto :goto_5

    :cond_4
    move/from16 v23, v5

    move/from16 p2, v8

    move/from16 v34, v11

    move/from16 v24, v14

    move/from16 v26, v15

    :goto_5
    move/from16 v14, p2

    move/from16 v15, v26

    const/4 v8, 0x0

    move/from16 v35, v19

    move/from16 v19, v16

    move/from16 v16, v24

    move/from16 v24, v23

    move/from16 v23, v21

    move/from16 v21, v20

    move/from16 v20, v35

    goto :goto_6

    :cond_5
    move/from16 v34, v11

    const/16 v3, 0x27

    if-ne v10, v3, :cond_7

    if-nez v13, :cond_7

    add-int v3, v9, v1

    invoke-static {v4, v9, v3}, Landroidx/media3/container/g;->t([BII)Landroidx/media3/container/g$g;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v12, :cond_7

    iget v3, v3, Landroidx/media3/container/g$g;->d:I

    iget-object v5, v12, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/g$a;

    iget v5, v5, Landroidx/media3/container/g$a;->b:I

    if-ne v3, v5, :cond_6

    const/16 v22, 0x4

    goto :goto_6

    :cond_6
    const/4 v3, 0x5

    move/from16 v22, v3

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    :goto_6
    add-int/2addr v9, v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v13, v13, 0x1

    move v5, v8

    move/from16 v3, v27

    move/from16 v11, v34

    const/4 v1, 0x4

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_8
    move/from16 v27, v3

    move v8, v5

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v12

    const/4 v1, 0x4

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_9
    if-nez v7, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_7
    move-object v12, v0

    goto :goto_8

    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :goto_8
    new-instance v0, Ll2/f0;

    const/4 v1, 0x1

    add-int/lit8 v13, v2, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v26}, Ll2/f0;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/g$k;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    const-string v2, "L-HEVC config"

    goto :goto_a

    :cond_b
    const-string v2, "HEVC config"

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static c(Landroidx/media3/common/util/j0;Landroidx/media3/container/g$k;)Ll2/f0;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ll2/f0;->b(Landroidx/media3/common/util/j0;ZLandroidx/media3/container/g$k;)Ll2/f0;

    move-result-object p0

    return-object p0
.end method
