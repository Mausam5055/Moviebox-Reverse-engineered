.class public final Lli/m;
.super Ljava/lang/Object;

# interfaces
.implements Lli/b;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Lli/a;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lli/a;

    invoke-direct {v0}, Lli/a;-><init>()V

    iput-object v0, p0, Lli/m;->c:Lli/a;

    iput-object p1, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lli/m$a;

    invoke-direct {p1, p0}, Lli/m$a;-><init>(Lli/m;)V

    iput-object p1, p0, Lli/m;->b:Landroidx/room/g;

    new-instance p1, Lli/m$b;

    invoke-direct {p1, p0}, Lli/m$b;-><init>(Lli/m;)V

    iput-object p1, p0, Lli/m;->d:Landroidx/room/e;

    return-void
.end method

.method private synthetic A(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 86

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "\n        SELECT * FROM mb_ad_db_plans\n        WHERE isValid = 1\n          AND (\n              scenes IS NULL\n              OR TRIM(scenes) = \'\'\n              OR TRIM(scenes) = \'[]\'\n              OR instr(LOWER(scenes), ?) > 0\n          )\n        ORDER BY sort\n        "

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2d

    :cond_0
    invoke-interface {v2, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v4, "version"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "startTime"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "endTime"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "extraConfig"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "displayTimes"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showedTimes"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "showDate"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "advertiserName"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "advertiserAvatar"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "advertiserAvatarPath"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "brand"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v3, "denyBrand"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "model"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "denyModel"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "country"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "scenes"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "adSource"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "extAdSlot"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "adMaterialList"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "adPlanUpdateTime"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "sort"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "adShowLevel"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "filterClientVersion"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "adPlanCreateTime"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "appStarDesc"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "appSizeDesc"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "ctxEnableExpr"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "ctxDisableExpr"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "ctxAttributeConfig"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "dispatchTimeStart"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "dispatchTimeEnd"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "extImage"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v35, v3

    const-string v3, "bidEcpmCent"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v36, v3

    const-string v3, "ecpmCent"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v37, v3

    const-string v3, "isValid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v38, v3

    const-string v3, "h5LinkPreload"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v39, v3

    const-string v3, "h5LinkOpenByCct"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v40, v3

    const-string v3, "countryCode"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v41, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v42

    if-eqz v42, :cond_29

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v42

    const/16 v43, 0x0

    if-eqz v42, :cond_1

    move-object/from16 v45, v43

    goto :goto_2

    :cond_1
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v45, v42

    :goto_2
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_2

    move-object/from16 v46, v43

    goto :goto_3

    :cond_2
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v46, v42

    :goto_3
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_3

    move-object/from16 v47, v43

    goto :goto_4

    :cond_3
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v47, v42

    :goto_4
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_4

    move-object/from16 v48, v43

    goto :goto_5

    :cond_4
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v48, v42

    :goto_5
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_5

    move-object/from16 v49, v43

    goto :goto_6

    :cond_5
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v49, v42

    :goto_6
    invoke-interface {v2, v8}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_6

    move-object/from16 v50, v43

    goto :goto_7

    :cond_6
    invoke-interface {v2, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v50, v42

    :goto_7
    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_7

    move/from16 v42, v4

    move/from16 v85, v5

    move-object/from16 v51, v43

    goto :goto_8

    :cond_7
    move/from16 v42, v4

    move/from16 v85, v5

    invoke-interface {v2, v9}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v51, v4

    :goto_8
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v52, v43

    goto :goto_9

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v52, v4

    :goto_9
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v53, v43

    goto :goto_a

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v53, v4

    :goto_a
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v54, v43

    goto :goto_b

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v54, v4

    :goto_b
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v55, v43

    goto :goto_c

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v55, v4

    :goto_c
    invoke-interface {v2, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v56, v43

    goto :goto_d

    :cond_c
    invoke-interface {v2, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v56, v4

    :goto_d
    invoke-interface {v2, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v4, v43

    goto :goto_e

    :cond_d
    invoke-interface {v2, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    :goto_e
    iget-object v5, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v5, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move/from16 v4, p1

    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_e

    move/from16 p1, v0

    move-object/from16 v5, v43

    goto :goto_f

    :cond_e
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 p1, v0

    :goto_f
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v58

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_f

    move/from16 v16, v0

    move-object/from16 v5, v43

    goto :goto_10

    :cond_f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v16, v0

    :goto_10
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v59

    move/from16 v0, v17

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v17, v0

    move-object/from16 v5, v43

    goto :goto_11

    :cond_10
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v0

    :goto_11
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v60

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v18, v0

    move-object/from16 v5, v43

    goto :goto_12

    :cond_11
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v18, v0

    :goto_12
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v61

    move/from16 v0, v19

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v19, v0

    move-object/from16 v5, v43

    goto :goto_13

    :cond_12
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v0

    :goto_13
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v62

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v5, v21

    move-object/from16 v63, v43

    goto :goto_14

    :cond_13
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v63, v5

    move/from16 v5, v21

    :goto_14
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_14

    move/from16 v20, v0

    move/from16 v0, v22

    move-object/from16 v64, v43

    goto :goto_15

    :cond_14
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v64, v20

    move/from16 v20, v0

    move/from16 v0, v22

    :goto_15
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v65, v43

    goto :goto_16

    :cond_15
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v0

    move-object/from16 v65, v21

    move/from16 v0, v23

    :goto_16
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_16

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v66, v43

    goto :goto_17

    :cond_16
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v23, v0

    move-object/from16 v66, v21

    move/from16 v0, v24

    :goto_17
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_17

    move/from16 v21, v4

    move/from16 v24, v5

    move/from16 v4, v25

    move-object/from16 v67, v43

    goto :goto_18

    :cond_17
    move/from16 v21, v4

    move/from16 v24, v5

    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v67, v4

    move/from16 v4, v25

    :goto_18
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_18

    move/from16 v5, v26

    move-object/from16 v68, v43

    goto :goto_19

    :cond_18
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v68, v5

    move/from16 v5, v26

    :goto_19
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_19

    move/from16 v25, v0

    move/from16 v0, v27

    move-object/from16 v69, v43

    goto :goto_1a

    :cond_19
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v69, v25

    move/from16 v25, v0

    move/from16 v0, v27

    :goto_1a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1a

    move/from16 v27, v0

    move/from16 v0, v28

    move-object/from16 v70, v43

    goto :goto_1b

    :cond_1a
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v27, v0

    move-object/from16 v70, v26

    move/from16 v0, v28

    :goto_1b
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v71, v43

    goto :goto_1c

    :cond_1b
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v28, v0

    move-object/from16 v71, v26

    move/from16 v0, v29

    :goto_1c
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v72, v43

    goto :goto_1d

    :cond_1c
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v29, v0

    move-object/from16 v72, v26

    move/from16 v0, v30

    :goto_1d
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v73, v43

    goto :goto_1e

    :cond_1d
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v30, v0

    move-object/from16 v73, v26

    move/from16 v0, v31

    :goto_1e
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v74, v43

    goto :goto_1f

    :cond_1e
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v31, v0

    move-object/from16 v74, v26

    move/from16 v0, v32

    :goto_1f
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1f

    move/from16 v32, v0

    move/from16 v0, v33

    move-object/from16 v75, v43

    goto :goto_20

    :cond_1f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v32, v0

    move-object/from16 v75, v26

    move/from16 v0, v33

    :goto_20
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_20

    move/from16 v33, v0

    move/from16 v0, v34

    move-object/from16 v76, v43

    goto :goto_21

    :cond_20
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v33, v0

    move-object/from16 v76, v26

    move/from16 v0, v34

    :goto_21
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_21

    move/from16 v34, v0

    move/from16 v0, v35

    move-object/from16 v77, v43

    goto :goto_22

    :cond_21
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v34, v0

    move-object/from16 v77, v26

    move/from16 v0, v35

    :goto_22
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_22

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v78, v43

    goto :goto_23

    :cond_22
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v35, v0

    move-object/from16 v78, v26

    move/from16 v0, v36

    :goto_23
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_23

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v79, v43

    goto :goto_24

    :cond_23
    invoke-interface {v2, v0}, Lz3/e;->getDouble(I)D

    move-result-wide v79

    invoke-static/range {v79 .. v80}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move/from16 v36, v0

    move-object/from16 v79, v26

    move/from16 v0, v37

    :goto_24
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_24

    move/from16 v37, v0

    move/from16 v26, v4

    move/from16 v0, v38

    move-object/from16 v80, v43

    :goto_25
    move/from16 v38, v5

    goto :goto_26

    :cond_24
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v80

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move/from16 v37, v0

    move-object/from16 v80, v26

    move/from16 v0, v38

    move/from16 v26, v4

    goto :goto_25

    :goto_26
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_25

    move/from16 v4, v39

    const/16 v81, 0x1

    :goto_27
    move/from16 v39, v6

    goto :goto_28

    :cond_25
    move/from16 v4, v39

    const/16 v81, 0x0

    goto :goto_27

    :goto_28
    invoke-interface {v2, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v0

    if-eqz v5, :cond_26

    move/from16 v5, v40

    const/16 v82, 0x1

    goto :goto_29

    :cond_26
    move/from16 v5, v40

    const/16 v82, 0x0

    :goto_29
    invoke-interface {v2, v5}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_27

    move/from16 v0, v41

    const/16 v83, 0x1

    goto :goto_2a

    :cond_27
    move/from16 v0, v41

    const/16 v83, 0x0

    :goto_2a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_2b
    move-object/from16 v84, v43

    goto :goto_2c

    :cond_28
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    goto :goto_2b

    :goto_2c
    new-instance v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v84}, Lcom/transsion/ad/db/plan/MbAdDbPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move/from16 v41, v0

    move/from16 v40, v5

    move/from16 v5, v85

    move/from16 v0, p1

    move/from16 p1, v21

    move/from16 v21, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v38

    move/from16 v38, v6

    move/from16 v6, v39

    move/from16 v39, v4

    move/from16 v4, v42

    goto/16 :goto_1

    :cond_29
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v3

    :goto_2d
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic B(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 86

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM mb_ad_db_plans where adSource=?"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2d

    :cond_0
    invoke-interface {v2, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v4, "version"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "startTime"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "endTime"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "extraConfig"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "displayTimes"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showedTimes"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "showDate"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "advertiserName"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "advertiserAvatar"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "advertiserAvatarPath"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "brand"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v3, "denyBrand"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "model"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "denyModel"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "country"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "scenes"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "adSource"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "extAdSlot"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "adMaterialList"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "adPlanUpdateTime"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "sort"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "adShowLevel"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "filterClientVersion"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "adPlanCreateTime"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "appStarDesc"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "appSizeDesc"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "ctxEnableExpr"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "ctxDisableExpr"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "ctxAttributeConfig"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "dispatchTimeStart"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "dispatchTimeEnd"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "extImage"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v35, v3

    const-string v3, "bidEcpmCent"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v36, v3

    const-string v3, "ecpmCent"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v37, v3

    const-string v3, "isValid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v38, v3

    const-string v3, "h5LinkPreload"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v39, v3

    const-string v3, "h5LinkOpenByCct"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v40, v3

    const-string v3, "countryCode"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v41, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v42

    if-eqz v42, :cond_29

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v42

    const/16 v43, 0x0

    if-eqz v42, :cond_1

    move-object/from16 v45, v43

    goto :goto_2

    :cond_1
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v45, v42

    :goto_2
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_2

    move-object/from16 v46, v43

    goto :goto_3

    :cond_2
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v46, v42

    :goto_3
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_3

    move-object/from16 v47, v43

    goto :goto_4

    :cond_3
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v47, v42

    :goto_4
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_4

    move-object/from16 v48, v43

    goto :goto_5

    :cond_4
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v48, v42

    :goto_5
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_5

    move-object/from16 v49, v43

    goto :goto_6

    :cond_5
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v49, v42

    :goto_6
    invoke-interface {v2, v8}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_6

    move-object/from16 v50, v43

    goto :goto_7

    :cond_6
    invoke-interface {v2, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v50, v42

    :goto_7
    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_7

    move/from16 v42, v4

    move/from16 v85, v5

    move-object/from16 v51, v43

    goto :goto_8

    :cond_7
    move/from16 v42, v4

    move/from16 v85, v5

    invoke-interface {v2, v9}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v51, v4

    :goto_8
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v52, v43

    goto :goto_9

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v52, v4

    :goto_9
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v53, v43

    goto :goto_a

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v53, v4

    :goto_a
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v54, v43

    goto :goto_b

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v54, v4

    :goto_b
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v55, v43

    goto :goto_c

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v55, v4

    :goto_c
    invoke-interface {v2, v14}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v56, v43

    goto :goto_d

    :cond_c
    invoke-interface {v2, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v56, v4

    :goto_d
    invoke-interface {v2, v15}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v4, v43

    goto :goto_e

    :cond_d
    invoke-interface {v2, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    :goto_e
    iget-object v5, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v5, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move/from16 v4, p1

    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_e

    move/from16 p1, v0

    move-object/from16 v5, v43

    goto :goto_f

    :cond_e
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 p1, v0

    :goto_f
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v58

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_f

    move/from16 v16, v0

    move-object/from16 v5, v43

    goto :goto_10

    :cond_f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v16, v0

    :goto_10
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v59

    move/from16 v0, v17

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v17, v0

    move-object/from16 v5, v43

    goto :goto_11

    :cond_10
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v0

    :goto_11
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v60

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v18, v0

    move-object/from16 v5, v43

    goto :goto_12

    :cond_11
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v18, v0

    :goto_12
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v61

    move/from16 v0, v19

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v19, v0

    move-object/from16 v5, v43

    goto :goto_13

    :cond_12
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v0

    :goto_13
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v5}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v62

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v5, v21

    move-object/from16 v63, v43

    goto :goto_14

    :cond_13
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v63, v5

    move/from16 v5, v21

    :goto_14
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_14

    move/from16 v20, v0

    move/from16 v0, v22

    move-object/from16 v64, v43

    goto :goto_15

    :cond_14
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v64, v20

    move/from16 v20, v0

    move/from16 v0, v22

    :goto_15
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v65, v43

    goto :goto_16

    :cond_15
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v0

    move-object/from16 v65, v21

    move/from16 v0, v23

    :goto_16
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_16

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v66, v43

    goto :goto_17

    :cond_16
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v23, v0

    move-object/from16 v66, v21

    move/from16 v0, v24

    :goto_17
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_17

    move/from16 v21, v4

    move/from16 v24, v5

    move/from16 v4, v25

    move-object/from16 v67, v43

    goto :goto_18

    :cond_17
    move/from16 v21, v4

    move/from16 v24, v5

    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v67, v4

    move/from16 v4, v25

    :goto_18
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_18

    move/from16 v5, v26

    move-object/from16 v68, v43

    goto :goto_19

    :cond_18
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v68, v5

    move/from16 v5, v26

    :goto_19
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_19

    move/from16 v25, v0

    move/from16 v0, v27

    move-object/from16 v69, v43

    goto :goto_1a

    :cond_19
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v69, v25

    move/from16 v25, v0

    move/from16 v0, v27

    :goto_1a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1a

    move/from16 v27, v0

    move/from16 v0, v28

    move-object/from16 v70, v43

    goto :goto_1b

    :cond_1a
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v27, v0

    move-object/from16 v70, v26

    move/from16 v0, v28

    :goto_1b
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1b

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v71, v43

    goto :goto_1c

    :cond_1b
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v28, v0

    move-object/from16 v71, v26

    move/from16 v0, v29

    :goto_1c
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1c

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v72, v43

    goto :goto_1d

    :cond_1c
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v29, v0

    move-object/from16 v72, v26

    move/from16 v0, v30

    :goto_1d
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v73, v43

    goto :goto_1e

    :cond_1d
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v30, v0

    move-object/from16 v73, v26

    move/from16 v0, v31

    :goto_1e
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1e

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v74, v43

    goto :goto_1f

    :cond_1e
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v31, v0

    move-object/from16 v74, v26

    move/from16 v0, v32

    :goto_1f
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1f

    move/from16 v32, v0

    move/from16 v0, v33

    move-object/from16 v75, v43

    goto :goto_20

    :cond_1f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v32, v0

    move-object/from16 v75, v26

    move/from16 v0, v33

    :goto_20
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_20

    move/from16 v33, v0

    move/from16 v0, v34

    move-object/from16 v76, v43

    goto :goto_21

    :cond_20
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v33, v0

    move-object/from16 v76, v26

    move/from16 v0, v34

    :goto_21
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_21

    move/from16 v34, v0

    move/from16 v0, v35

    move-object/from16 v77, v43

    goto :goto_22

    :cond_21
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v34, v0

    move-object/from16 v77, v26

    move/from16 v0, v35

    :goto_22
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_22

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v78, v43

    goto :goto_23

    :cond_22
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v35, v0

    move-object/from16 v78, v26

    move/from16 v0, v36

    :goto_23
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_23

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v79, v43

    goto :goto_24

    :cond_23
    invoke-interface {v2, v0}, Lz3/e;->getDouble(I)D

    move-result-wide v79

    invoke-static/range {v79 .. v80}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move/from16 v36, v0

    move-object/from16 v79, v26

    move/from16 v0, v37

    :goto_24
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_24

    move/from16 v37, v0

    move/from16 v26, v4

    move/from16 v0, v38

    move-object/from16 v80, v43

    :goto_25
    move/from16 v38, v5

    goto :goto_26

    :cond_24
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v80

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move/from16 v37, v0

    move-object/from16 v80, v26

    move/from16 v0, v38

    move/from16 v26, v4

    goto :goto_25

    :goto_26
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_25

    move/from16 v4, v39

    const/16 v81, 0x1

    :goto_27
    move/from16 v39, v6

    goto :goto_28

    :cond_25
    move/from16 v4, v39

    const/16 v81, 0x0

    goto :goto_27

    :goto_28
    invoke-interface {v2, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v0

    if-eqz v5, :cond_26

    move/from16 v5, v40

    const/16 v82, 0x1

    goto :goto_29

    :cond_26
    move/from16 v5, v40

    const/16 v82, 0x0

    :goto_29
    invoke-interface {v2, v5}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_27

    move/from16 v0, v41

    const/16 v83, 0x1

    goto :goto_2a

    :cond_27
    move/from16 v0, v41

    const/16 v83, 0x0

    :goto_2a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_2b
    move-object/from16 v84, v43

    goto :goto_2c

    :cond_28
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    goto :goto_2b

    :goto_2c
    new-instance v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-object/from16 v44, v1

    invoke-direct/range {v44 .. v84}, Lcom/transsion/ad/db/plan/MbAdDbPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move/from16 v41, v0

    move/from16 v40, v5

    move/from16 v5, v85

    move/from16 v0, p1

    move/from16 p1, v21

    move/from16 v21, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v38

    move/from16 v38, v6

    move/from16 v6, v39

    move/from16 v39, v4

    move/from16 v4, v42

    goto/16 :goto_1

    :cond_29
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v3

    :goto_2d
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic C(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lli/m;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic D(Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lli/m;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Lz3/b;Ljava/lang/Iterable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic E(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lli/m;->d:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic F(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 3

    const-string v0, "UPDATE mb_ad_db_plans SET isValid = ? WHERE version !=?"

    invoke-interface {p2, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p2

    const/4 v0, 0x1

    int-to-long v1, p0

    :try_start_0
    invoke-interface {p2, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p2}, Lz3/e;->close()V

    throw p0
.end method

.method public static synthetic k(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lli/m;->F(ZLjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lli/m;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lli/m;->B(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lz3/b;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lli/m;->x(Lz3/b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lli/m;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lli/m;->D(Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lli/m;->w(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lli/m;Lcom/transsion/ad/db/plan/MbAdDbPlans;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lli/m;->E(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lli/m;Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/plan/MbAdDbPlans;
    .locals 0

    invoke-direct {p0, p1, p2}, Lli/m;->z(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lli/m;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lli/m;->A(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lli/m;Lcom/transsion/ad/db/plan/MbAdDbPlans;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lli/m;->C(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lli/m;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lli/m;->y(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic u(Lli/m;)Lli/a;
    .locals 0

    iget-object p0, p0, Lli/m;->c:Lli/a;

    return-object p0
.end method

.method public static v()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic w(Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM mb_ad_db_plans WHERE version !=?"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p1}, Lz3/e;->close()V

    throw p0
.end method

.method private static synthetic x(Lz3/b;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "SELECT COUNT(*) FROM mb_ad_db_plans"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lz3/e;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v1

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic y(Lz3/b;)Ljava/util/List;
    .locals 86

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM mb_ad_db_plans WHERE isValid = 1 ORDER BY sort"

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "version"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "name"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "startTime"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "endTime"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "extraConfig"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "displayTimes"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "showedTimes"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showDate"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "advertiserName"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "advertiserAvatar"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "advertiserAvatarPath"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "brand"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "denyBrand"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "model"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "denyModel"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "country"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "scenes"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "adSource"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "extAdSlot"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "adMaterialList"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "adPlanUpdateTime"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "sort"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "adShowLevel"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "filterClientVersion"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "adPlanCreateTime"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "appStarDesc"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "appSizeDesc"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "ctxEnableExpr"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "ctxDisableExpr"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "ctxAttributeConfig"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "dispatchTimeStart"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "dispatchTimeEnd"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "extImage"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "bidEcpmCent"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "ecpmCent"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "isValid"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "h5LinkPreload"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "h5LinkOpenByCct"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "countryCode"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v42

    if-eqz v42, :cond_28

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v42

    const/16 v43, 0x0

    if-eqz v42, :cond_0

    move-object/from16 v45, v43

    goto :goto_1

    :cond_0
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v45, v42

    :goto_1
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_1

    move-object/from16 v46, v43

    goto :goto_2

    :cond_1
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v46, v42

    :goto_2
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_2

    move-object/from16 v47, v43

    goto :goto_3

    :cond_2
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v47, v42

    :goto_3
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_3

    move-object/from16 v48, v43

    goto :goto_4

    :cond_3
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v48, v42

    :goto_4
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_4

    move-object/from16 v49, v43

    goto :goto_5

    :cond_4
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v49, v42

    :goto_5
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_5

    move-object/from16 v50, v43

    goto :goto_6

    :cond_5
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v50, v42

    :goto_6
    invoke-interface {v2, v8}, Lz3/e;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_6

    move/from16 v42, v3

    move/from16 v85, v4

    move-object/from16 v51, v43

    goto :goto_7

    :cond_6
    move/from16 v42, v3

    move/from16 v85, v4

    invoke-interface {v2, v8}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v51, v3

    :goto_7
    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v52, v43

    goto :goto_8

    :cond_7
    invoke-interface {v2, v9}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v52, v3

    :goto_8
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v53, v43

    goto :goto_9

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v53, v3

    :goto_9
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v54, v43

    goto :goto_a

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v54, v3

    :goto_a
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v55, v43

    goto :goto_b

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v55, v3

    :goto_b
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v56, v43

    goto :goto_c

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v56, v3

    :goto_c
    invoke-interface {v2, v14}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v3, v43

    goto :goto_d

    :cond_c
    invoke-interface {v2, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    :goto_d
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v3}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move/from16 v3, p1

    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 p1, v0

    move-object/from16 v4, v43

    goto :goto_e

    :cond_d
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move/from16 p1, v0

    :goto_e
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v58

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v16, v0

    move-object/from16 v4, v43

    goto :goto_f

    :cond_e
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v0

    :goto_f
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v59

    move/from16 v0, v17

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v17, v0

    move-object/from16 v4, v43

    goto :goto_10

    :cond_f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v0

    :goto_10
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v60

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v18, v0

    move-object/from16 v4, v43

    goto :goto_11

    :cond_10
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v18, v0

    :goto_11
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v61

    move/from16 v0, v19

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move/from16 v19, v0

    move-object/from16 v4, v43

    goto :goto_12

    :cond_11
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v0

    :goto_12
    iget-object v0, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v0, v4}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v62

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    move/from16 v4, v21

    move-object/from16 v63, v43

    goto :goto_13

    :cond_12
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v63, v4

    move/from16 v4, v21

    :goto_13
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v20, v0

    move/from16 v0, v22

    move-object/from16 v64, v43

    goto :goto_14

    :cond_13
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v64, v20

    move/from16 v20, v0

    move/from16 v0, v22

    :goto_14
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v65, v43

    goto :goto_15

    :cond_14
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v0

    move-object/from16 v65, v21

    move/from16 v0, v23

    :goto_15
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_15

    move/from16 v23, v0

    move/from16 v0, v24

    move-object/from16 v66, v43

    goto :goto_16

    :cond_15
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v23, v0

    move-object/from16 v66, v21

    move/from16 v0, v24

    :goto_16
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_16

    move/from16 v21, v3

    move/from16 v24, v4

    move/from16 v3, v25

    move-object/from16 v67, v43

    goto :goto_17

    :cond_16
    move/from16 v21, v3

    move/from16 v24, v4

    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v67, v3

    move/from16 v3, v25

    :goto_17
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move/from16 v4, v26

    move-object/from16 v68, v43

    goto :goto_18

    :cond_17
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v68, v4

    move/from16 v4, v26

    :goto_18
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_18

    move/from16 v25, v0

    move/from16 v0, v27

    move-object/from16 v69, v43

    goto :goto_19

    :cond_18
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v69, v25

    move/from16 v25, v0

    move/from16 v0, v27

    :goto_19
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_19

    move/from16 v27, v0

    move/from16 v0, v28

    move-object/from16 v70, v43

    goto :goto_1a

    :cond_19
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v27, v0

    move-object/from16 v70, v26

    move/from16 v0, v28

    :goto_1a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1a

    move/from16 v28, v0

    move/from16 v0, v29

    move-object/from16 v71, v43

    goto :goto_1b

    :cond_1a
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v28, v0

    move-object/from16 v71, v26

    move/from16 v0, v29

    :goto_1b
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1b

    move/from16 v29, v0

    move/from16 v0, v30

    move-object/from16 v72, v43

    goto :goto_1c

    :cond_1b
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v29, v0

    move-object/from16 v72, v26

    move/from16 v0, v30

    :goto_1c
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1c

    move/from16 v30, v0

    move/from16 v0, v31

    move-object/from16 v73, v43

    goto :goto_1d

    :cond_1c
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v30, v0

    move-object/from16 v73, v26

    move/from16 v0, v31

    :goto_1d
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1d

    move/from16 v31, v0

    move/from16 v0, v32

    move-object/from16 v74, v43

    goto :goto_1e

    :cond_1d
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v31, v0

    move-object/from16 v74, v26

    move/from16 v0, v32

    :goto_1e
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1e

    move/from16 v32, v0

    move/from16 v0, v33

    move-object/from16 v75, v43

    goto :goto_1f

    :cond_1e
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v32, v0

    move-object/from16 v75, v26

    move/from16 v0, v33

    :goto_1f
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1f

    move/from16 v33, v0

    move/from16 v0, v34

    move-object/from16 v76, v43

    goto :goto_20

    :cond_1f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v33, v0

    move-object/from16 v76, v26

    move/from16 v0, v34

    :goto_20
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_20

    move/from16 v34, v0

    move/from16 v0, v35

    move-object/from16 v77, v43

    goto :goto_21

    :cond_20
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v34, v0

    move-object/from16 v77, v26

    move/from16 v0, v35

    :goto_21
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_21

    move/from16 v35, v0

    move/from16 v0, v36

    move-object/from16 v78, v43

    goto :goto_22

    :cond_21
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v35, v0

    move-object/from16 v78, v26

    move/from16 v0, v36

    :goto_22
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_22

    move/from16 v36, v0

    move/from16 v0, v37

    move-object/from16 v79, v43

    goto :goto_23

    :cond_22
    invoke-interface {v2, v0}, Lz3/e;->getDouble(I)D

    move-result-wide v79

    invoke-static/range {v79 .. v80}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move/from16 v36, v0

    move-object/from16 v79, v26

    move/from16 v0, v37

    :goto_23
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_23

    move/from16 v37, v0

    move/from16 v26, v3

    move/from16 v0, v38

    move-object/from16 v80, v43

    :goto_24
    move/from16 v38, v4

    goto :goto_25

    :cond_23
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v80

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move/from16 v37, v0

    move-object/from16 v80, v26

    move/from16 v0, v38

    move/from16 v26, v3

    goto :goto_24

    :goto_25
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v44, 0x1

    if-eqz v3, :cond_24

    move/from16 v3, v39

    move/from16 v81, v44

    :goto_26
    move/from16 v39, v5

    goto :goto_27

    :cond_24
    move/from16 v3, v39

    const/16 v81, 0x0

    goto :goto_26

    :goto_27
    invoke-interface {v2, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v40

    if-eqz v4, :cond_25

    move/from16 v4, v44

    :goto_28
    move/from16 v40, v0

    goto :goto_29

    :cond_25
    const/4 v4, 0x0

    goto :goto_28

    :goto_29
    invoke-interface {v2, v5}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_26

    move/from16 v0, v41

    move/from16 v83, v44

    goto :goto_2a

    :cond_26
    move/from16 v0, v41

    const/16 v83, 0x0

    :goto_2a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_2b
    move-object/from16 v84, v43

    goto :goto_2c

    :cond_27
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v43

    goto :goto_2b

    :goto_2c
    new-instance v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-object/from16 v44, v1

    move/from16 v82, v4

    invoke-direct/range {v44 .. v84}, Lcom/transsion/ad/db/plan/MbAdDbPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move/from16 v41, v0

    move/from16 v4, v85

    move/from16 v0, p1

    move/from16 p1, v21

    move/from16 v21, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v38

    move/from16 v38, v40

    move/from16 v40, v5

    move/from16 v5, v39

    move/from16 v39, v3

    move/from16 v3, v42

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2d

    :cond_28
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v15

    :goto_2d
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic z(Ljava/lang/String;Lz3/b;)Lcom/transsion/ad/db/plan/MbAdDbPlans;
    .locals 84

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM mb_ad_db_plans where id=?"

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v2, v3}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2a

    :cond_0
    invoke-interface {v2, v3, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v4, "version"

    invoke-static {v2, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "startTime"

    invoke-static {v2, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "endTime"

    invoke-static {v2, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "extraConfig"

    invoke-static {v2, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "displayTimes"

    invoke-static {v2, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "showedTimes"

    invoke-static {v2, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "showDate"

    invoke-static {v2, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "advertiserName"

    invoke-static {v2, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "advertiserAvatar"

    invoke-static {v2, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "advertiserAvatarPath"

    invoke-static {v2, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "brand"

    invoke-static {v2, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v3, "denyBrand"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string v3, "model"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "denyModel"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "country"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "scenes"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "adSource"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "extAdSlot"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "adMaterialList"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "adPlanUpdateTime"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "sort"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "adShowLevel"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "filterClientVersion"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "adPlanCreateTime"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "appStarDesc"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "appSizeDesc"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "ctxEnableExpr"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "ctxDisableExpr"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "ctxAttributeConfig"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "dispatchTimeStart"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "dispatchTimeEnd"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "extImage"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v35, v3

    const-string v3, "bidEcpmCent"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v36, v3

    const-string v3, "ecpmCent"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v37, v3

    const-string v3, "isValid"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v38, v3

    const-string v3, "h5LinkPreload"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v39, v3

    const-string v3, "h5LinkOpenByCct"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    move/from16 v40, v3

    const-string v3, "countryCode"

    invoke-static {v2, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Lz3/e;->A0()Z

    move-result v41

    const/16 v42, 0x0

    if-eqz v41, :cond_29

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_1

    move-object/from16 v44, v42

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v44, v0

    :goto_1
    invoke-interface {v2, v4}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v45, v42

    goto :goto_2

    :cond_2
    invoke-interface {v2, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    :goto_2
    invoke-interface {v2, v5}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v46, v42

    goto :goto_3

    :cond_3
    invoke-interface {v2, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    :goto_3
    invoke-interface {v2, v6}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v47, v42

    goto :goto_4

    :cond_4
    invoke-interface {v2, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v47, v0

    :goto_4
    invoke-interface {v2, v7}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v48, v42

    goto :goto_5

    :cond_5
    invoke-interface {v2, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v48, v0

    :goto_5
    invoke-interface {v2, v8}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v49, v42

    goto :goto_6

    :cond_6
    invoke-interface {v2, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v49, v0

    :goto_6
    invoke-interface {v2, v9}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v50, v42

    goto :goto_7

    :cond_7
    invoke-interface {v2, v9}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v50, v0

    :goto_7
    invoke-interface {v2, v10}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v51, v42

    goto :goto_8

    :cond_8
    invoke-interface {v2, v10}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v51, v0

    :goto_8
    invoke-interface {v2, v11}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v52, v42

    goto :goto_9

    :cond_9
    invoke-interface {v2, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v52, v0

    :goto_9
    invoke-interface {v2, v12}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v53, v42

    goto :goto_a

    :cond_a
    invoke-interface {v2, v12}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v53, v0

    :goto_a
    invoke-interface {v2, v13}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v54, v42

    goto :goto_b

    :cond_b
    invoke-interface {v2, v13}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v54, v0

    :goto_b
    invoke-interface {v2, v14}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v55, v42

    goto :goto_c

    :cond_c
    invoke-interface {v2, v14}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v55, v0

    :goto_c
    invoke-interface {v2, v15}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, v42

    goto :goto_d

    :cond_d
    invoke-interface {v2, v15}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v0}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v56

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v42

    goto :goto_e

    :cond_e
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v0}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    move/from16 v0, v16

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v42

    goto :goto_f

    :cond_f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v0}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v58

    move/from16 v0, v17

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v42

    goto :goto_10

    :cond_10
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v0}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v59

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v42

    goto :goto_11

    :cond_11
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v0}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v60

    move/from16 v0, v19

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v42

    goto :goto_12

    :cond_12
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    iget-object v4, v1, Lli/m;->c:Lli/a;

    invoke-virtual {v4, v0}, Lli/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v61

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v0, v21

    move-object/from16 v62, v42

    goto :goto_13

    :cond_13
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v62, v0

    move/from16 v0, v21

    :goto_13
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move/from16 v0, v22

    move-object/from16 v63, v42

    goto :goto_14

    :cond_14
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v63, v0

    move/from16 v0, v22

    :goto_14
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v0, v23

    move-object/from16 v64, v42

    goto :goto_15

    :cond_15
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v64, v0

    move/from16 v0, v23

    :goto_15
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move/from16 v0, v24

    move-object/from16 v65, v42

    goto :goto_16

    :cond_16
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v65, v0

    move/from16 v0, v24

    :goto_16
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move/from16 v0, v25

    move-object/from16 v66, v42

    goto :goto_17

    :cond_17
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v66, v0

    move/from16 v0, v25

    :goto_17
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v0, v26

    move-object/from16 v67, v42

    goto :goto_18

    :cond_18
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v67, v0

    move/from16 v0, v26

    :goto_18
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v0, v27

    move-object/from16 v68, v42

    goto :goto_19

    :cond_19
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v68, v0

    move/from16 v0, v27

    :goto_19
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    move/from16 v0, v28

    move-object/from16 v69, v42

    goto :goto_1a

    :cond_1a
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v69, v0

    move/from16 v0, v28

    :goto_1a
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v0, v29

    move-object/from16 v70, v42

    goto :goto_1b

    :cond_1b
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v70, v0

    move/from16 v0, v29

    :goto_1b
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v0, v30

    move-object/from16 v71, v42

    goto :goto_1c

    :cond_1c
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v71, v0

    move/from16 v0, v30

    :goto_1c
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v0, v31

    move-object/from16 v72, v42

    goto :goto_1d

    :cond_1d
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v72, v0

    move/from16 v0, v31

    :goto_1d
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v0, v32

    move-object/from16 v73, v42

    goto :goto_1e

    :cond_1e
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v73, v0

    move/from16 v0, v32

    :goto_1e
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    move/from16 v0, v33

    move-object/from16 v74, v42

    goto :goto_1f

    :cond_1f
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v74, v0

    move/from16 v0, v33

    :goto_1f
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move/from16 v0, v34

    move-object/from16 v75, v42

    goto :goto_20

    :cond_20
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v75, v0

    move/from16 v0, v34

    :goto_20
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_21

    move/from16 v0, v35

    move-object/from16 v76, v42

    goto :goto_21

    :cond_21
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v76, v0

    move/from16 v0, v35

    :goto_21
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_22

    move/from16 v0, v36

    move-object/from16 v77, v42

    goto :goto_22

    :cond_22
    invoke-interface {v2, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v77, v0

    move/from16 v0, v36

    :goto_22
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_23

    move/from16 v0, v37

    move-object/from16 v78, v42

    goto :goto_23

    :cond_23
    invoke-interface {v2, v0}, Lz3/e;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v78, v0

    move/from16 v0, v37

    :goto_23
    invoke-interface {v2, v0}, Lz3/e;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_24

    move/from16 v0, v38

    move-object/from16 v79, v42

    goto :goto_24

    :cond_24
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v79, v0

    move/from16 v0, v38

    :goto_24
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    const/4 v4, 0x0

    if-eqz v0, :cond_25

    move/from16 v0, v39

    const/16 v80, 0x1

    goto :goto_25

    :cond_25
    move/from16 v80, v4

    move/from16 v0, v39

    :goto_25
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    if-eqz v0, :cond_26

    move/from16 v0, v40

    const/16 v81, 0x1

    goto :goto_26

    :cond_26
    move/from16 v81, v4

    move/from16 v0, v40

    :goto_26
    invoke-interface {v2, v0}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    if-eqz v0, :cond_27

    const/16 v82, 0x1

    goto :goto_27

    :cond_27
    move/from16 v82, v4

    :goto_27
    invoke-interface {v2, v3}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_28

    :goto_28
    move-object/from16 v83, v42

    goto :goto_29

    :cond_28
    invoke-interface {v2, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v42

    goto :goto_28

    :goto_29
    new-instance v42, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-object/from16 v43, v42

    invoke-direct/range {v43 .. v83}, Lcom/transsion/ad/db/plan/MbAdDbPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_29
    invoke-interface {v2}, Lz3/e;->close()V

    return-object v42

    :goto_2a
    invoke-interface {v2}, Lz3/e;->close()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/e;

    invoke-direct {v1, p0, p1}, Lli/e;-><init>(Lli/m;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/h;

    invoke-direct {v1, p0}, Lli/h;-><init>(Lli/m;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/g;

    invoke-direct {v1, p0, p1}, Lli/g;-><init>(Lli/m;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/f;

    invoke-direct {v1}, Lli/f;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/k;

    invoke-direct {v1, p0, p1}, Lli/k;-><init>(Lli/m;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/l;

    invoke-direct {v1, p1}, Lli/l;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/i;

    invoke-direct {v1, p1, p2}, Lli/i;-><init>(ZLjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/d;

    invoke-direct {v1, p0, p1}, Lli/d;-><init>(Lli/m;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/c;

    invoke-direct {v1, p0, p1}, Lli/c;-><init>(Lli/m;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lli/m;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lli/j;

    invoke-direct {v1, p0, p1}, Lli/j;-><init>(Lli/m;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
