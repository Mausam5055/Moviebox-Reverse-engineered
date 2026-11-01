.class public abstract Landroidx/compose/foundation/layout/y;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/foundation/layout/x;IIIIILandroidx/compose/ui/layout/x;Ljava/util/List;[Landroidx/compose/ui/layout/g0;II[II)Landroidx/compose/ui/layout/v;
    .locals 53

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v14, p10

    int-to-long v7, v12

    sub-int v15, v14, p9

    new-array v6, v15, [I

    const/16 v16, 0x0

    const/4 v5, 0x0

    move/from16 v4, p9

    move v1, v5

    move v2, v1

    move v3, v2

    move/from16 v17, v3

    move-object/from16 v20, v6

    move-wide/from16 v18, v7

    move/from16 v8, v16

    move/from16 v7, v17

    :goto_0
    const v6, 0x7fffffff

    if-ge v4, v14, :cond_7

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v7

    move-object/from16 v7, v21

    check-cast v7, Landroidx/compose/ui/layout/s;

    invoke-static {v7}, Landroidx/compose/foundation/layout/v;->c(Landroidx/compose/ui/layout/i;)Landroidx/compose/foundation/layout/z;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroidx/compose/foundation/layout/v;->e(Landroidx/compose/foundation/layout/z;)F

    move-result v23

    if-nez v17, :cond_1

    invoke-static/range {v21 .. v21}, Landroidx/compose/foundation/layout/v;->f(Landroidx/compose/foundation/layout/z;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v17, v5

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v17, 0x1

    :goto_2
    cmpl-float v24, v23, v16

    if-lez v24, :cond_2

    add-float v8, v8, v23

    add-int/lit8 v3, v3, 0x1

    move/from16 v24, v4

    move-wide/from16 v32, v18

    move-object/from16 v7, v20

    move/from16 v18, v15

    move v15, v8

    move v8, v5

    goto/16 :goto_7

    :cond_2
    if-ne v11, v6, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/layout/z;->c()Landroidx/compose/foundation/layout/p;

    :cond_4
    :goto_3
    sub-int v1, v10, v2

    aget-object v21, p8, v4

    if-nez v21, :cond_6

    if-ne v10, v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v1, v5}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v6

    :goto_4
    const/16 v21, 0x10

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v1

    move-object/from16 v1, p0

    move/from16 v28, v2

    move/from16 v2, v24

    move/from16 v29, v3

    move/from16 v3, v25

    move/from16 v24, v4

    move v4, v6

    move v6, v5

    move/from16 v5, p4

    move-object/from16 v30, v20

    move/from16 v6, v26

    move-object/from16 v34, v7

    move-wide/from16 v32, v18

    move/from16 v31, v22

    move/from16 v7, v21

    move/from16 v18, v15

    move v15, v8

    move-object/from16 v8, v23

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/w;->a(Landroidx/compose/foundation/layout/x;IIIIZILjava/lang/Object;)J

    move-result-wide v1

    move-object/from16 v3, v34

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object v21

    :goto_5
    move-object/from16 v1, v21

    goto :goto_6

    :cond_6
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v24, v4

    move-wide/from16 v32, v18

    move-object/from16 v30, v20

    move/from16 v31, v22

    move/from16 v18, v15

    move v15, v8

    goto :goto_5

    :goto_6
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/x;->e(Landroidx/compose/ui/layout/g0;)I

    move-result v2

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/x;->f(Landroidx/compose/ui/layout/g0;)I

    move-result v3

    sub-int v4, v24, p9

    move-object/from16 v7, v30

    aput v2, v7, v4

    sub-int v4, v27, v2

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    move/from16 v5, v28

    add-int/2addr v2, v5

    move/from16 v5, v31

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput-object v1, p8, v24

    move/from16 v22, v3

    move v1, v4

    move/from16 v3, v29

    :goto_7
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v20, v7

    move v5, v8

    move v8, v15

    move/from16 v15, v18

    move/from16 v7, v22

    move-wide/from16 v18, v32

    goto/16 :goto_0

    :cond_7
    move/from16 v29, v3

    move/from16 v22, v7

    move-wide/from16 v32, v18

    move-object/from16 v7, v20

    move/from16 v18, v15

    move v15, v8

    move v8, v5

    move v5, v2

    move/from16 v4, v29

    if-nez v4, :cond_8

    sub-int v2, v5, v1

    move-object/from16 v30, v7

    move v5, v8

    move v12, v9

    move/from16 v7, v22

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_8
    if-eq v10, v6, :cond_9

    move v3, v10

    goto :goto_8

    :cond_9
    move v3, v9

    :goto_8
    add-int/lit8 v1, v4, -0x1

    int-to-long v1, v1

    move-object/from16 v30, v7

    move-wide/from16 v6, v32

    mul-long/2addr v1, v6

    sub-int v12, v3, v5

    int-to-long v8, v12

    sub-long/2addr v8, v1

    const-wide/16 v11, 0x0

    invoke-static {v8, v9, v11, v12}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v8

    long-to-float v11, v8

    div-float/2addr v11, v15

    move/from16 v12, p9

    move-wide/from16 v20, v8

    move/from16 v23, v15

    :goto_9
    const-string v15, "weightedSize "

    move-object/from16 v24, v15

    const-string v15, "weightUnitSpace "

    move-object/from16 v25, v15

    const-string v15, "totalWeight "

    move-object/from16 v26, v15

    const-string v15, "remainingToTarget "

    move-wide/from16 v27, v8

    const-string v8, "arrangementSpacingTotal "

    const-string v9, "fixedSpace "

    move-object/from16 v29, v15

    const-string v15, "weightChildrenCount "

    move-wide/from16 v31, v1

    const-string v1, "arrangementSpacingPx "

    const-string v2, "targetSpace "

    move-object/from16 v33, v8

    const-string v8, "mainAxisMin "

    if-ge v12, v14, :cond_a

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroidx/compose/ui/layout/s;

    invoke-static/range {v34 .. v34}, Landroidx/compose/foundation/layout/v;->c(Landroidx/compose/ui/layout/i;)Landroidx/compose/foundation/layout/z;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroidx/compose/foundation/layout/v;->e(Landroidx/compose/foundation/layout/z;)F

    move-result v13

    mul-float v14, v11, v13

    :try_start_0
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    sub-long v20, v20, v1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, p7

    move/from16 v14, p10

    move-wide/from16 v8, v27

    move-wide/from16 v1, v31

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v0

    const-string v0, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v31

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v27

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "itemWeight "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v13, v24

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_a
    move/from16 v12, p1

    move/from16 v14, v23

    move-object/from16 v13, v24

    move-object/from16 v37, v25

    move-object/from16 v38, v26

    move-wide/from16 v35, v27

    move-object/from16 v39, v29

    move-wide/from16 v23, v31

    move-object/from16 v40, v33

    move-wide/from16 v32, v6

    move/from16 v42, v22

    const/16 v41, 0x0

    move/from16 v7, p9

    move/from16 v6, p10

    :goto_a
    if-ge v7, v6, :cond_11

    aget-object v22, p8, v7

    if-nez v22, :cond_10

    move-object/from16 v6, p7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v6, v22

    check-cast v6, Landroidx/compose/ui/layout/s;

    invoke-static {v6}, Landroidx/compose/foundation/layout/v;->c(Landroidx/compose/ui/layout/i;)Landroidx/compose/foundation/layout/z;

    move-result-object v22

    move-object/from16 v25, v6

    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/v;->e(Landroidx/compose/foundation/layout/z;)F

    move-result v6

    move-object/from16 v27, v1

    move/from16 v26, v3

    const v1, 0x7fffffff

    move/from16 v3, p4

    if-ne v3, v1, :cond_b

    goto :goto_b

    :cond_b
    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/layout/z;->c()Landroidx/compose/foundation/layout/p;

    :cond_c
    :goto_b
    cmpl-float v1, v6, v16

    if-lez v1, :cond_f

    invoke-static/range {v20 .. v21}, Lkotlin/math/MathKt;->b(J)I

    move-result v1

    move-object/from16 v28, v2

    int-to-long v2, v1

    sub-long v20, v20, v2

    mul-float v3, v11, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v29, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :try_start_1
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/v;->b(Landroidx/compose/foundation/layout/z;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_d

    const v1, 0x7fffffff

    if-eq v2, v1, :cond_e

    move/from16 v19, v2

    goto :goto_c

    :cond_d
    const v1, 0x7fffffff

    :cond_e
    const/16 v19, 0x0

    :goto_c
    const/16 v22, 0x1

    const/16 v31, 0x0

    move-wide/from16 v43, v23

    move-object/from16 v45, v27

    move/from16 v46, v29

    move/from16 v23, v1

    move-object/from16 v1, p0

    move/from16 v24, v2

    move-object/from16 v47, v28

    move/from16 v2, v19

    move/from16 v49, v3

    move/from16 v48, v26

    move/from16 v3, v31

    move/from16 v50, v4

    move/from16 v4, v24

    move/from16 v51, v5

    move/from16 v5, p4

    move/from16 v52, v6

    move/from16 v26, v11

    move-object/from16 v19, v13

    move-object/from16 v11, v25

    move/from16 v25, v23

    move/from16 v23, v14

    move-wide/from16 v13, v32

    move/from16 v6, v22

    :try_start_2
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/x;->a(IIIIZ)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/x;->e(Landroidx/compose/ui/layout/g0;)I

    move-result v2

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/x;->f(Landroidx/compose/ui/layout/g0;)I

    move-result v3

    sub-int v4, v7, p9

    aput v2, v30, v4

    move/from16 v4, v41

    add-int v41, v4, v2

    move/from16 v2, v42

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput-object v1, p8, v7

    move/from16 v42, v2

    move-object/from16 v29, v19

    move/from16 v22, v23

    move/from16 v28, v26

    move-wide/from16 v26, v35

    move-object/from16 v31, v37

    move-object/from16 v32, v38

    move-object/from16 v33, v39

    move-object/from16 v34, v40

    move-wide/from16 v23, v43

    move-object/from16 v6, v45

    move-object/from16 v3, v47

    move/from16 v5, v48

    move/from16 v11, v50

    move/from16 v19, v51

    const/4 v1, 0x0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    move/from16 v49, v3

    move/from16 v50, v4

    move/from16 v51, v5

    move/from16 v52, v6

    move-object/from16 v19, v13

    move-wide/from16 v43, v23

    move/from16 v48, v26

    move-object/from16 v45, v27

    move-object/from16 v47, v28

    move/from16 v46, v29

    move/from16 v24, v2

    move/from16 v26, v11

    move/from16 v23, v14

    move-wide/from16 v13, v32

    :goto_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v48

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v45

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v50

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v51

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v43

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v35

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v38

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, v37

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "weight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v52

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v49

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "crossAxisDesiredSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "remainderUnit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v46

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "childMainAxisSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All weights <= 0 should have placeables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v6, v1

    move/from16 v19, v5

    move/from16 v28, v11

    move-object/from16 v29, v13

    move/from16 v22, v14

    move-wide/from16 v13, v32

    move-wide/from16 v26, v35

    move-object/from16 v31, v37

    move-object/from16 v32, v38

    move-object/from16 v33, v39

    move-object/from16 v34, v40

    const/4 v1, 0x0

    const v25, 0x7fffffff

    move v5, v3

    move v11, v4

    move/from16 v4, v41

    move-object v3, v2

    move/from16 v2, v42

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object v2, v3

    move v3, v5

    move-object v1, v6

    move v4, v11

    move/from16 v5, v19

    move-wide/from16 v35, v26

    move/from16 v11, v28

    move-object/from16 v37, v31

    move-object/from16 v38, v32

    move-object/from16 v39, v33

    move-object/from16 v40, v34

    move/from16 v6, p10

    move-wide/from16 v32, v13

    move/from16 v14, v22

    move-object/from16 v13, v29

    goto/16 :goto_a

    :cond_11
    move/from16 v19, v5

    move/from16 v4, v41

    move/from16 v2, v42

    const/4 v1, 0x0

    int-to-long v3, v4

    add-long v3, v3, v23

    long-to-int v3, v3

    sub-int v4, v10, v19

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v3

    move v7, v2

    move v5, v3

    move/from16 v2, v19

    :goto_f
    if-eqz v17, :cond_17

    move/from16 v6, p9

    move/from16 v11, p10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v6, v11, :cond_16

    aget-object v8, p8, v6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Landroidx/compose/foundation/layout/v;->d(Landroidx/compose/ui/layout/g0;)Landroidx/compose/foundation/layout/z;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/foundation/layout/v;->a(Landroidx/compose/foundation/layout/z;)Landroidx/compose/foundation/layout/m;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {v9, v8}, Landroidx/compose/foundation/layout/m;->b(Landroidx/compose/ui/layout/g0;)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_11

    :cond_12
    move-object v9, v1

    :goto_11
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v0, v8}, Landroidx/compose/foundation/layout/x;->f(Landroidx/compose/ui/layout/g0;)I

    move-result v8

    const/high16 v13, -0x80000000

    if-eq v10, v13, :cond_13

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_12

    :cond_13
    const/4 v9, 0x0

    :goto_12
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v10, v13, :cond_14

    goto :goto_13

    :cond_14
    move v10, v8

    :goto_13
    sub-int/2addr v8, v10

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_16
    move v1, v4

    move v4, v3

    goto :goto_14

    :cond_17
    move/from16 v11, p10

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_14
    add-int/2addr v2, v5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v1, v4

    move/from16 v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v1, v18

    new-array v5, v1, [I

    move v2, v3

    :goto_15
    if-ge v2, v1, :cond_18

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_18
    move-object/from16 v8, p6

    move-object/from16 v2, v30

    invoke-interface {v0, v6, v2, v5, v8}, Landroidx/compose/foundation/layout/x;->b(I[I[ILandroidx/compose/ui/layout/x;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p6

    move-object/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Landroidx/compose/foundation/layout/x;->d([Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/x;I[III[IIII)Landroidx/compose/ui/layout/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Landroidx/compose/foundation/layout/x;IIIIILandroidx/compose/ui/layout/x;Ljava/util/List;[Landroidx/compose/ui/layout/g0;II[IIILjava/lang/Object;)Landroidx/compose/ui/layout/v;
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p11

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v14, v0

    goto :goto_1

    :cond_1
    move/from16 v14, p12

    :goto_1
    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v2 .. v14}, Landroidx/compose/foundation/layout/y;->a(Landroidx/compose/foundation/layout/x;IIIIILandroidx/compose/ui/layout/x;Ljava/util/List;[Landroidx/compose/ui/layout/g0;II[II)Landroidx/compose/ui/layout/v;

    move-result-object v0

    return-object v0
.end method
