.class public Lcom/cloud/hisavana/sdk/common/util/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 37

    move/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v12, v13

    new-array v15, v14, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v15

    move v7, v12

    move v10, v12

    move v11, v13

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v5, v13, -0x1

    add-int v6, v0, v0

    add-int/lit8 v7, v6, 0x1

    new-array v8, v14, [I

    new-array v9, v14, [I

    new-array v10, v14, [I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [I

    const/4 v14, 0x2

    add-int/2addr v6, v14

    shr-int/2addr v6, v2

    mul-int/2addr v6, v6

    mul-int/lit16 v1, v6, 0x100

    new-array v2, v1, [I

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v1, :cond_2

    div-int v17, v14, v6

    aput v17, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_2
    const/4 v1, 0x2

    new-array v6, v1, [I

    const/4 v1, 0x3

    const/4 v14, 0x1

    aput v1, v6, v14

    const/4 v1, 0x0

    aput v7, v6, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v6, v0, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v14, v13, :cond_7

    move-object/from16 v19, v3

    neg-int v3, v0

    move/from16 v28, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v13, v3

    const/4 v3, 0x0

    :goto_3
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v13, v0, :cond_4

    move/from16 v31, v5

    move-object/from16 v32, v11

    const/4 v5, 0x0

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v17, v5

    aget v5, v15, v5

    add-int v11, v13, v0

    aget-object v11, v1, v11

    and-int v30, v5, v30

    shr-int/lit8 v30, v30, 0x10

    const/16 v33, 0x0

    aput v30, v11, v33

    and-int v29, v5, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v16, 0x1

    aput v29, v11, v16

    and-int/lit16 v5, v5, 0xff

    const/16 v29, 0x2

    aput v5, v11, v29

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v6, v5

    const/16 v29, 0x0

    aget v30, v11, v29

    mul-int v29, v30, v5

    add-int v21, v21, v29

    const/16 v16, 0x1

    aget v29, v11, v16

    mul-int v33, v29, v5

    add-int v20, v20, v33

    const/16 v33, 0x2

    aget v11, v11, v33

    mul-int/2addr v5, v11

    add-int/2addr v3, v5

    if-lez v13, :cond_3

    add-int v25, v25, v30

    add-int v27, v27, v29

    add-int v26, v26, v11

    goto :goto_4

    :cond_3
    add-int v24, v24, v30

    add-int v23, v23, v29

    add-int v22, v22, v11

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v31

    move-object/from16 v11, v32

    goto :goto_3

    :cond_4
    move/from16 v31, v5

    move-object/from16 v32, v11

    move v11, v0

    move v5, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v12, :cond_6

    aget v13, v2, v21

    aput v13, v8, v17

    aget v13, v2, v20

    aput v13, v9, v17

    aget v13, v2, v5

    aput v13, v10, v17

    sub-int v21, v21, v24

    sub-int v20, v20, v23

    sub-int v5, v5, v22

    sub-int v13, v11, v0

    add-int/2addr v13, v7

    rem-int/2addr v13, v7

    aget-object v13, v1, v13

    const/16 v33, 0x0

    aget v34, v13, v33

    sub-int v24, v24, v34

    const/16 v16, 0x1

    aget v33, v13, v16

    sub-int v23, v23, v33

    const/16 v33, 0x2

    aget v34, v13, v33

    sub-int v22, v22, v34

    if-nez v14, :cond_5

    add-int v33, v3, v0

    move-object/from16 v34, v2

    add-int/lit8 v2, v33, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v32, v3

    goto :goto_6

    :cond_5
    move-object/from16 v34, v2

    :goto_6
    aget v2, v32, v3

    add-int v2, v18, v2

    aget v2, v15, v2

    and-int v33, v2, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    aput v33, v13, v35

    and-int v35, v2, v29

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    aput v35, v13, v16

    and-int/lit16 v2, v2, 0xff

    const/16 v36, 0x2

    aput v2, v13, v36

    add-int v25, v25, v33

    add-int v27, v27, v35

    add-int v26, v26, v2

    add-int v21, v21, v25

    add-int v20, v20, v27

    add-int v5, v5, v26

    add-int/lit8 v11, v11, 0x1

    rem-int/2addr v11, v7

    rem-int v2, v11, v7

    aget-object v2, v1, v2

    const/4 v13, 0x0

    aget v33, v2, v13

    add-int v24, v24, v33

    const/4 v13, 0x1

    aget v35, v2, v13

    add-int v23, v23, v35

    const/4 v13, 0x2

    aget v2, v2, v13

    add-int v22, v22, v2

    sub-int v25, v25, v33

    sub-int v27, v27, v35

    sub-int v26, v26, v2

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v34

    goto/16 :goto_5

    :cond_6
    move-object/from16 v34, v2

    add-int v18, v18, v12

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v19

    move/from16 v13, v28

    move/from16 v5, v31

    move-object/from16 v11, v32

    goto/16 :goto_2

    :cond_7
    move-object/from16 v34, v2

    move-object/from16 v19, v3

    move/from16 v31, v5

    move-object/from16 v32, v11

    move/from16 v28, v13

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v12, :cond_d

    neg-int v3, v0

    mul-int v4, v3, v12

    move/from16 v21, v7

    move-object/from16 v22, v15

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v7, v3

    move v15, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-gt v7, v0, :cond_a

    move/from16 v23, v12

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v2

    add-int v25, v7, v0

    aget-object v25, v1, v25

    aget v26, v8, v24

    aput v26, v25, v12

    aget v12, v9, v24

    const/16 v16, 0x1

    aput v12, v25, v16

    aget v12, v10, v24

    const/16 v26, 0x2

    aput v12, v25, v26

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v12

    sub-int v12, v6, v12

    aget v26, v8, v24

    mul-int v26, v26, v12

    add-int v5, v5, v26

    aget v26, v9, v24

    mul-int v26, v26, v12

    add-int v4, v4, v26

    aget v24, v10, v24

    mul-int v24, v24, v12

    add-int v3, v3, v24

    if-lez v7, :cond_8

    const/4 v12, 0x0

    aget v24, v25, v12

    add-int v20, v20, v24

    const/4 v12, 0x1

    aget v24, v25, v12

    add-int v18, v18, v24

    const/4 v12, 0x2

    aget v24, v25, v12

    add-int v17, v17, v24

    :goto_9
    move/from16 v12, v31

    goto :goto_a

    :cond_8
    const/4 v12, 0x0

    aget v24, v25, v12

    add-int v14, v14, v24

    const/4 v12, 0x1

    aget v24, v25, v12

    add-int v13, v13, v24

    const/4 v12, 0x2

    aget v24, v25, v12

    add-int v11, v11, v24

    goto :goto_9

    :goto_a
    if-ge v7, v12, :cond_9

    add-int v15, v15, v23

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v31, v12

    move/from16 v12, v23

    goto :goto_8

    :cond_a
    move/from16 v23, v12

    move/from16 v12, v31

    move/from16 v24, v0

    move/from16 v25, v2

    move v7, v5

    move/from16 v15, v28

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v15, :cond_c

    aget v26, v22, v25

    const/high16 v27, -0x1000000

    and-int v26, v26, v27

    aget v27, v34, v7

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v34, v5

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v34, v4

    or-int v26, v26, v27

    aput v26, v22, v25

    sub-int/2addr v7, v14

    sub-int/2addr v5, v13

    sub-int/2addr v4, v11

    sub-int v26, v24, v0

    add-int v26, v26, v21

    rem-int v26, v26, v21

    aget-object v26, v1, v26

    const/16 v27, 0x0

    aget v28, v26, v27

    sub-int v14, v14, v28

    const/16 v16, 0x1

    aget v27, v26, v16

    sub-int v13, v13, v27

    const/16 v27, 0x2

    aget v28, v26, v27

    sub-int v11, v11, v28

    if-nez v2, :cond_b

    add-int v0, v3, v6

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v23

    aput v0, v32, v3

    :cond_b
    aget v0, v32, v3

    add-int/2addr v0, v2

    aget v27, v8, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    aget v28, v9, v0

    const/16 v16, 0x1

    aput v28, v26, v16

    aget v0, v10, v0

    const/16 v29, 0x2

    aput v0, v26, v29

    add-int v20, v20, v27

    add-int v18, v18, v28

    add-int v17, v17, v0

    add-int v7, v7, v20

    add-int v5, v5, v18

    add-int v4, v4, v17

    add-int/lit8 v24, v24, 0x1

    rem-int v24, v24, v21

    aget-object v0, v1, v24

    const/16 v26, 0x0

    aget v27, v0, v26

    add-int v14, v14, v27

    const/16 v16, 0x1

    aget v28, v0, v16

    add-int v13, v13, v28

    const/16 v29, 0x2

    aget v0, v0, v29

    add-int/2addr v11, v0

    sub-int v20, v20, v27

    sub-int v18, v18, v28

    sub-int v17, v17, v0

    add-int v25, v25, v23

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto/16 :goto_b

    :cond_c
    const/16 v16, 0x1

    const/16 v26, 0x0

    const/16 v29, 0x2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    move/from16 v31, v12

    move/from16 v28, v15

    move/from16 v7, v21

    move-object/from16 v15, v22

    move/from16 v12, v23

    goto/16 :goto_7

    :cond_d
    move/from16 v23, v12

    move-object/from16 v22, v15

    move/from16 v15, v28

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, v19

    move-object/from16 v5, v22

    move/from16 v7, v23

    move/from16 v10, v23

    move v11, v15

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v19

    :goto_c
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method
