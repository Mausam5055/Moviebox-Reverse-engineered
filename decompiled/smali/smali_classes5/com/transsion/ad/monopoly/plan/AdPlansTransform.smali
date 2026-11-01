.class public final Lcom/transsion/ad/monopoly/plan/AdPlansTransform;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    invoke-direct {v0}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;-><init>()V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/db/plan/MbAdDbPlans;
    .locals 42

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getVersion()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_3

    :cond_2
    move-object v3, v0

    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_4

    :cond_3
    move-object v4, v0

    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getStartTime()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_5

    :cond_4
    move-object v5, v0

    :goto_5
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEndTime()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_6

    :cond_5
    move-object v6, v0

    :goto_6
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtraConfig()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_7

    :cond_6
    move-object v7, v0

    :goto_7
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDisplayTimes()Ljava/lang/Integer;

    move-result-object v1

    move-object v8, v1

    goto :goto_8

    :cond_7
    move-object v8, v0

    :goto_8
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v1

    move-object v9, v1

    goto :goto_9

    :cond_8
    move-object v9, v0

    :goto_9
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getShowDate()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_a

    :cond_9
    move-object v10, v0

    :goto_a
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserName()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_b

    :cond_a
    move-object v11, v0

    :goto_b
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_c

    :cond_b
    move-object v12, v0

    :goto_c
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_d

    :cond_c
    move-object v13, v0

    :goto_d
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBrand()Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    goto :goto_e

    :cond_d
    move-object v14, v0

    :goto_e
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDenyBrand()Ljava/util/List;

    move-result-object v1

    move-object v15, v1

    goto :goto_f

    :cond_e
    move-object v15, v0

    :goto_f
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getModel()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_10

    :cond_f
    move-object/from16 v16, v0

    :goto_10
    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDenyModel()Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_11

    :cond_10
    move-object/from16 v17, v0

    :goto_11
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCountry()Ljava/util/List;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_12

    :cond_11
    move-object/from16 v18, v0

    :goto_12
    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getScenes()Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_13

    :cond_12
    move-object/from16 v19, v0

    :goto_13
    if-eqz p1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_14

    :cond_13
    move-object/from16 v23, v0

    :goto_14
    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_15

    :cond_14
    move-object/from16 v20, v0

    :goto_15
    if-eqz p1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_16

    :cond_15
    move-object/from16 v21, v0

    :goto_16
    if-eqz p1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getSort()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_17

    :cond_16
    move-object/from16 v24, v0

    :goto_17
    if-eqz p1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v0

    :goto_18
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    if-eqz p1, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdShowLevel()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_19

    :cond_18
    move-object/from16 v25, v0

    :goto_19
    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getFilterClientVersion()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_1a

    :cond_19
    move-object/from16 v26, v0

    :goto_1a
    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdPlanCreateTime()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_1b

    :cond_1a
    move-object/from16 v27, v0

    :goto_1b
    if-eqz p1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAppStarDesc()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_1c

    :cond_1b
    move-object/from16 v28, v0

    :goto_1c
    if-eqz p1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAppSizeDesc()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    goto :goto_1d

    :cond_1c
    move-object/from16 v29, v0

    :goto_1d
    if-eqz p1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDispatchTimeStart()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_1e

    :cond_1d
    move-object/from16 v33, v0

    :goto_1e
    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDispatchTimeEnd()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_1f

    :cond_1e
    move-object/from16 v34, v0

    :goto_1f
    if-eqz p1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxEnableExpr()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_20

    :cond_1f
    move-object/from16 v30, v0

    :goto_20
    if-eqz p1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxDisableExpr()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_21

    :cond_20
    move-object/from16 v31, v0

    :goto_21
    if-eqz p1, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxAttributeConfig()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v1

    goto :goto_23

    :cond_22
    move-object v1, v0

    :goto_23
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    if-eqz p1, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v36, v1

    goto :goto_24

    :cond_23
    move-object/from16 v36, v0

    :goto_24
    if-eqz p1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEcpmCent()Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v37, v1

    goto :goto_25

    :cond_24
    move-object/from16 v37, v0

    :goto_25
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid()Z

    move-result v38

    goto :goto_26

    :cond_25
    move/from16 v38, v1

    :goto_26
    if-eqz p1, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkPreload()Z

    move-result v39

    goto :goto_27

    :cond_26
    move/from16 v39, v1

    :goto_27
    if-eqz p1, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkOpenByCct()Z

    move-result v1

    :cond_27
    move/from16 v40, v1

    if-eqz p1, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    :cond_28
    move-object/from16 v41, v0

    new-instance v0, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    move-object v1, v0

    invoke-direct/range {v1 .. v41}, Lcom/transsion/ad/db/plan/MbAdDbPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method public final b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 43

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getVersion()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBrand()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getModel()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyModel()Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getStartTime()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEndTime()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getSort()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdShowLevel()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getFilterClientVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanCreateTime()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppStarDesc()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppSizeDesc()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxAttributeConfig()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdMaterialList()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/ad/monopoly/plan/AdPlansTransform$transformPlanDb2Bean$1$adPlans$1;

    invoke-direct {v2}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform$transformPlanDb2Bean$1$adPlans$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtImage()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/transsion/ad/monopoly/model/MbAdImage;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Lcom/transsion/ad/monopoly/model/MbAdImage;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEcpmCent()Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->isValid()Z

    move-result v39

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkPreload()Z

    move-result v40

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkOpenByCct()Z

    move-result v41

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    move-result-object v42

    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    move-object v2, v0

    invoke-direct/range {v2 .. v42}, Lcom/transsion/ad/monopoly/model/AdPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    return-object v1
.end method
