.class public Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/Sj;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "HTMLResource"

    const-string v3, "CompanionClickTracking"

    const-string v4, "StaticResource"

    const-string v5, "TrackingEvents"

    const-string v6, "CompanionClickThrough"

    const-string v7, "IFrameResource"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v10

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v12, v11

    float-to-int v12, v12

    int-to-float v13, v13

    div-float/2addr v13, v11

    float-to-int v11, v13

    const/4 v13, 0x1

    move-object/from16 v20, v10

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    if-ne v14, v9, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "CompanionAds"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_1

    :cond_1
    return-object v20

    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    if-ne v14, v8, :cond_1b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Companion"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    sget-object v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    const-string v10, "width"

    invoke-interface {v1, v14, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v10

    const-string v8, "height"

    invoke-interface {v1, v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v8

    const/16 v14, 0x12c

    if-lt v10, v14, :cond_3

    const/16 v14, 0xfa

    if-ge v8, v14, :cond_4

    :cond_3
    move-object/from16 v23, v2

    move/from16 v30, v11

    move/from16 v31, v12

    const/4 v2, 0x2

    move-object v11, v1

    move-object v1, v0

    move v0, v9

    move-object v9, v7

    goto/16 :goto_13

    :cond_4
    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;

    invoke-direct {v14}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;-><init>()V

    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v9, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move/from16 v30, v11

    move/from16 v31, v12

    goto :goto_4

    :cond_6
    iget-object v1, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    cmpl-float v1, v1, v13

    if-ltz v1, :cond_7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    iget-object v13, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    iget-object v15, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    iget-object v9, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj:Ljava/lang/String;

    move/from16 v30, v11

    iget-object v11, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->HiB:Ljava/util/List;

    move/from16 v31, v12

    iget-object v12, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->vS:Ljava/util/List;

    iget-object v0, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->EjP:Ljava/lang/String;

    move-object/from16 v21, v1

    move/from16 v22, v10

    move/from16 v23, v8

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v0

    invoke-direct/range {v21 .. v29}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;-><init>(IILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget v0, v14, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    move v13, v0

    move-object/from16 v20, v1

    goto :goto_3

    :cond_7
    move/from16 v30, v11

    move/from16 v31, v12

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, v30

    move/from16 v12, v31

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    goto/16 :goto_0

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x5

    goto :goto_5

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x4

    goto :goto_5

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v1, 0x3

    goto :goto_6

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x2

    goto :goto_6

    :sswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_5
    move v1, v0

    :goto_6
    packed-switch v1, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v23, v2

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    goto/16 :goto_d

    :pswitch_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    move-object/from16 v1, p0

    invoke-static {v1, v10, v8, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->Sj(Landroid/content/Context;IILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)Landroid/graphics/Point;

    move-result-object v9

    iget v11, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    sget-object v12, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    move-object/from16 v21, v7

    move-object v7, v14

    move/from16 v14, v31

    move-object/from16 v22, v15

    move/from16 v15, v30

    move/from16 v16, v11

    move/from16 v17, v9

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(IIIILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;)F

    move-result v9

    move-object/from16 v11, p1

    invoke-static {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_e

    iget v15, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    cmpg-float v15, v9, v15

    if-lez v15, :cond_e

    cmpg-float v15, v9, v13

    if-gtz v15, :cond_f

    :cond_e
    const/4 v0, 0x3

    goto :goto_8

    :cond_f
    iput v9, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    invoke-virtual {v7, v14, v12, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    move-object v0, v1

    move-object v14, v7

    move-object/from16 v7, v21

    move-object/from16 v15, v22

    :goto_7
    move/from16 v11, v30

    move/from16 v12, v31

    const/4 v9, 0x3

    goto/16 :goto_2

    :goto_8
    invoke-static {v11, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    move v9, v0

    move-object v0, v1

    move-object v14, v7

    move-object/from16 v7, v21

    move-object/from16 v15, v22

    :goto_9
    move/from16 v11, v30

    move/from16 v12, v31

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    invoke-static {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj(Ljava/lang/String;)V

    move-object v0, v1

    move-object/from16 v7, v21

    goto :goto_7

    :pswitch_2
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    const-string v9, "creativeType"

    invoke-interface {v11, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->Sj:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    goto :goto_a

    :cond_10
    sget-object v12, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    :goto_a
    sget-object v15, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    invoke-static {v1, v10, v8, v15}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->Sj(Landroid/content/Context;IILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)Landroid/graphics/Point;

    move-result-object v14

    move-object/from16 v23, v2

    iget v2, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v14

    move/from16 v14, v31

    move-object/from16 v24, v15

    move/from16 v15, v30

    move/from16 v16, v2

    move-object/from16 v18, v24

    move-object/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(IIIILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;)F

    move-result v2

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->sP:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    invoke-static {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    iget v9, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_13

    cmpg-float v9, v2, v13

    if-lez v9, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    const/4 v0, 0x3

    goto :goto_10

    :cond_14
    iput v2, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    move-object/from16 v2, v24

    invoke-virtual {v7, v0, v12, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    :cond_15
    :goto_d
    move-object v0, v1

    move-object v14, v7

    move-object/from16 v7, v21

    :goto_e
    move-object/from16 v15, v22

    :goto_f
    move-object/from16 v2, v23

    goto/16 :goto_7

    :goto_10
    invoke-static {v11, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    move v9, v0

    move-object v0, v1

    move-object v14, v7

    move-object/from16 v7, v21

    move-object/from16 v15, v22

    move-object/from16 v2, v23

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v23, v2

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    :cond_16
    :goto_11
    const/4 v0, 0x3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v0, :cond_17

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_17
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Tracking"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v11, v9}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->sP(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_4
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v23, v2

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    const/4 v2, 0x2

    invoke-static {v11, v6}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->EjP:Ljava/lang/String;

    move-object v0, v1

    move-object/from16 v7, v21

    goto :goto_f

    :pswitch_5
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v23, v2

    move-object/from16 v21, v7

    move-object v7, v14

    move-object/from16 v22, v15

    const/4 v2, 0x2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    invoke-static {v1, v10, v8, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->Sj(Landroid/content/Context;IILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)Landroid/graphics/Point;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v12, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    sget-object v15, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    move/from16 v14, v31

    move-object/from16 v24, v15

    move/from16 v15, v30

    move/from16 v16, v9

    move/from16 v17, v0

    move-object/from16 v18, v12

    move-object/from16 v19, v24

    invoke-static/range {v14 .. v19}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(IIIILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;)F

    move-result v0

    move-object/from16 v9, v21

    invoke-static {v11, v9}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_18

    iget v15, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    cmpg-float v15, v0, v15

    if-lez v15, :cond_18

    cmpg-float v15, v0, v13

    if-gtz v15, :cond_19

    :cond_18
    const/4 v0, 0x3

    goto :goto_12

    :cond_19
    iput v0, v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    move-object/from16 v0, v24

    invoke-virtual {v7, v14, v0, v12}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    move-object v0, v1

    move-object v14, v7

    move-object v7, v9

    goto/16 :goto_e

    :goto_12
    invoke-static {v11, v9, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    move-object v14, v7

    move-object v7, v9

    move-object/from16 v15, v22

    move-object/from16 v2, v23

    move/from16 v11, v30

    move/from16 v12, v31

    move v9, v0

    move-object v0, v1

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v11, p1

    move-object v9, v7

    move-object/from16 v0, p0

    goto/16 :goto_7

    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_14

    :cond_1b
    move-object/from16 v23, v2

    move v2, v8

    move/from16 v30, v11

    move/from16 v31, v12

    move-object v11, v1

    move-object v1, v0

    move v0, v9

    move-object v9, v7

    :goto_14
    move v8, v2

    move-object v7, v9

    move-object/from16 v2, v23

    move/from16 v12, v31

    const/4 v10, 0x0

    move v9, v0

    move-object v0, v1

    move-object v1, v11

    move/from16 v11, v30

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x165f3d2e -> :sswitch_5
        -0x14c116d7 -> :sswitch_4
        0x247392d0 -> :sswitch_3
        0x285474bc -> :sswitch_2
        0x6fec8cd3 -> :sswitch_1
        0x72ef4cd9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
