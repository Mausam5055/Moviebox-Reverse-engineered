.class public Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Lorg/xmlpull/v1/XmlPullParser;)Lcom/bytedance/sdk/openadsdk/core/Ym/sP;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "HTMLResource"

    const-string v2, "IconClicks"

    const-string v3, "StaticResource"

    const-string v4, "IFrameResource"

    const-string v5, "IconViewTracking"

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const-string v11, "Icons"

    if-ne v10, v7, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    return-object v9

    :cond_1
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-ne v10, v6, :cond_18

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Icon"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    sget-object v10, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    const-string v13, "width"

    invoke-interface {v0, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v15

    const-string v13, "height"

    invoke-interface {v0, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v13

    if-lez v15, :cond_2

    const/16 v14, 0x12c

    if-gt v15, v14, :cond_2

    if-lez v13, :cond_2

    if-le v13, v14, :cond_3

    :cond_2
    move-object/from16 v19, v1

    move-object v7, v4

    move-object v8, v5

    move-object/from16 v16, v9

    move-object v4, v2

    goto/16 :goto_12

    :cond_3
    const-string v14, "offset"

    invoke-interface {v0, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;->Sj(Ljava/lang/String;)I

    move-result v14

    const-string v8, "duration"

    invoke-interface {v0, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;->Sj(Ljava/lang/String;)I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    const/4 v5, 0x0

    const/16 v26, 0x0

    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-ne v4, v7, :cond_4

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-object/from16 v29, v2

    move-object/from16 v30, v3

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->vS()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v29, v2

    move-object/from16 v30, v3

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    int-to-long v2, v14

    int-to-long v8, v8

    iget-object v12, v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    iget-object v14, v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj:Ljava/lang/String;

    move-object/from16 v22, v14

    move-object v14, v4

    move/from16 v16, v13

    move-wide/from16 v17, v2

    move-wide/from16 v19, v8

    move-object/from16 v21, v12

    move-object/from16 v23, v5

    move-object/from16 v24, v10

    move-object/from16 v25, v6

    invoke-direct/range {v14 .. v26}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;-><init>(IIJJLcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0, v11, v7}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    move-object v9, v4

    :goto_4
    move-object/from16 v5, v27

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    const/4 v6, 0x2

    goto/16 :goto_0

    :goto_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_6
    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v4, v29

    :goto_7
    move-object/from16 v3, v30

    :goto_8
    const/16 v16, -0x1

    goto/16 :goto_a

    :sswitch_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x4

    move/from16 v16, v3

    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v4, v29

    goto :goto_9

    :sswitch_1
    move-object/from16 v4, v29

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    goto :goto_7

    :cond_9
    move/from16 v16, v7

    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    :goto_9
    move-object/from16 v3, v30

    goto :goto_a

    :sswitch_2
    move-object/from16 v4, v29

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    const/16 v16, 0x2

    goto :goto_a

    :sswitch_3
    move-object/from16 v7, v28

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move/from16 v18, v8

    move-object/from16 v8, v27

    goto :goto_8

    :cond_b
    const/4 v2, 0x1

    move/from16 v16, v2

    move/from16 v18, v8

    move-object/from16 v8, v27

    goto :goto_a

    :sswitch_4
    move/from16 v18, v8

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_a
    packed-switch v16, :pswitch_data_0

    move-object/from16 v19, v1

    move-object/from16 v16, v9

    goto/16 :goto_11

    :pswitch_0
    if-eqz v5, :cond_e

    iget-object v2, v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    move-object/from16 v16, v9

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    if-ne v2, v9, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v19, v1

    goto/16 :goto_11

    :cond_e
    move-object/from16 v16, v9

    :goto_b
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    move-object/from16 v19, v1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    invoke-direct {v5, v2, v9, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    :cond_f
    :goto_c
    move-object v2, v4

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v9, v16

    move/from16 v8, v18

    move-object/from16 v1, v19

    const/4 v7, 0x3

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v19, v1

    move-object/from16 v16, v9

    :cond_10
    :goto_d
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_11
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v9, 0x2

    if-ne v1, v9, :cond_10

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconClickThrough"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_d

    :cond_12
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconClickTracking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :pswitch_2
    move-object/from16 v19, v1

    move-object/from16 v16, v9

    const/4 v9, 0x2

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    const-string v2, "creativeType"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->Sj:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj;->sP:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    goto :goto_10

    :cond_15
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    :goto_10
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    invoke-direct {v2, v5, v1, v9}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    move-object v5, v2

    goto/16 :goto_c

    :pswitch_3
    move-object/from16 v19, v1

    move-object/from16 v16, v9

    if-nez v5, :cond_16

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;

    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    sget-object v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    invoke-direct {v5, v1, v2, v9}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    goto/16 :goto_c

    :cond_16
    :goto_11
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_c

    :pswitch_4
    move-object/from16 v19, v1

    move-object/from16 v16, v9

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;

    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_17
    move-object/from16 v19, v1

    move/from16 v18, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    goto/16 :goto_c

    :goto_12
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_13

    :cond_18
    move-object/from16 v19, v1

    move-object v7, v4

    move-object v8, v5

    move-object/from16 v16, v9

    move-object v4, v2

    :goto_13
    move-object v2, v4

    move-object v4, v7

    move-object v5, v8

    move-object/from16 v9, v16

    move-object/from16 v1, v19

    const/4 v6, 0x2

    const/4 v7, 0x3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e3dd04b -> :sswitch_4
        -0x165f3d2e -> :sswitch_3
        0x285474bc -> :sswitch_2
        0x3d6ff1e4 -> :sswitch_1
        0x72ef4cd9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Sj(Lorg/xmlpull/v1/XmlPullParser;IDLcom/bytedance/sdk/openadsdk/core/Ym/Sj;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MediaFiles"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj(I)V

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP(I)V

    :cond_2
    return-object v4

    :cond_3
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MediaFile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    const-string v9, "type"

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "width"

    invoke-interface {v0, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v17

    const-string v10, "height"

    invoke-interface {v0, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v18

    const-string v10, "bitrate"

    invoke-interface {v0, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Ljava/lang/String;)I

    move-result v15

    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-lez v17, :cond_0

    if-lez v18, :cond_0

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/EjP;->Sj:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/EjP;->Sj(IDIIILjava/lang/String;)D

    move-result-wide v8

    cmpl-double v10, v8, v2

    if-lez v10, :cond_0

    move-object v4, v7

    move-wide v2, v8

    move/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_0
.end method

.method public static Sj(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrackingEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tracking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    const-string v5, "event"

    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "creativeView"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "firstQuartile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "start"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "pause"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string v6, "close"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v5, 0x7

    goto :goto_2

    :sswitch_5
    const-string v6, "skip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x6

    goto :goto_2

    :sswitch_6
    const-string v6, "mute"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    const/4 v5, 0x5

    goto :goto_2

    :sswitch_7
    const-string v6, "complete"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move v5, v0

    goto :goto_2

    :sswitch_8
    const-string v6, "unmute"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_c
    move v5, v2

    goto :goto_2

    :sswitch_9
    const-string v6, "resume"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    move v5, v1

    goto :goto_2

    :sswitch_a
    const-string v6, "thirdQuartile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_2

    :cond_e
    const/4 v5, 0x1

    goto :goto_2

    :sswitch_b
    const-string v6, "midpoint"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_2

    :cond_f
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Ljava/lang/String;F)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->sP(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->HiB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->vS(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Ym(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->EjP(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->aa(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->TKC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Ljava/lang/String;F)V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Ljava/lang/String;F)V

    goto/16 :goto_0

    :cond_10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto/16 :goto_0

    :cond_11
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_b
        -0x4fbdabf6 -> :sswitch_a
        -0x37b237d3 -> :sswitch_9
        -0x321793ce -> :sswitch_8
        -0x23bacec7 -> :sswitch_7
        0x335219 -> :sswitch_6
        0x35e57f -> :sswitch_5
        0x5a5ddf8 -> :sswitch_4
        0x65825f6 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x21644853 -> :sswitch_1
        0x69fcaef4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
    .end packed-switch
.end method

.method private static Sj(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "ClickTracking"

    const-string v1, "ClickThrough"

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoClicks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Jcg(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Sj(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;ID)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Linear"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v1, :cond_0

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v7, "TrackingEvents"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_1
    const-string v7, "Icons"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_2

    :sswitch_2
    const-string v7, "MediaFiles"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v6, v1

    goto :goto_2

    :sswitch_3
    const-string v7, "Duration"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v6, v0

    goto :goto_2

    :sswitch_4
    const-string v7, "VideoClicks"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    packed-switch v6, :pswitch_data_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->Sj(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->Sj(Lorg/xmlpull/v1/XmlPullParser;)Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/sP;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0, p2, p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->Sj(Lorg/xmlpull/v1/XmlPullParser;IDLcom/bytedance/sdk/openadsdk/core/Ym/Sj;)Ljava/lang/String;

    move v4, v0

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->sP(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj(D)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/TKC;->Sj(Lorg/xmlpull/v1/XmlPullParser;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_4
        -0x72e14e4c -> :sswitch_3
        -0x16f37aed -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static TKC(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "Tracking"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sP(Lorg/xmlpull/v1/XmlPullParser;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "Duration"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v0, p0

    float-to-double v0, v0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
