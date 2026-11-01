.class Lcom/bytedance/adsdk/sP/HiB/uvD;
.super Ljava/lang/Object;


# direct methods
.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/sP/HiB;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v8, v2

    move-object v6, v3

    move-object v7, v6

    move-object v9, v7

    move-object v11, v9

    move-object v12, v11

    move v15, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_1
    move v2, v0

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "nm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_1
    const-string v5, "hd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_2
    const-string v5, "t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_3
    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v5, "r"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_5
    const-string v5, "o"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_6
    const-string v5, "g"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :sswitch_7
    const-string v5, "e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v2, v4

    :goto_2
    packed-switch v2, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v15

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-ne v2, v1, :cond_8

    sget-object v2, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    :goto_3
    move-object v7, v2

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    goto :goto_3

    :pswitch_3
    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->TKC(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-ne v2, v1, :cond_9

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_4
    move-object v8, v2

    goto/16 :goto_0

    :cond_9
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_4

    :pswitch_5
    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move v2, v0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v10, "k"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "p"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_5

    :cond_b
    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-static {v5, v10, v2}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;I)Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;

    move-result-object v9

    goto :goto_5

    :cond_c
    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->TKC(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object v12

    goto/16 :goto_0

    :cond_d
    if-nez v3, :cond_e

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    new-instance v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;-><init>(Ljava/util/List;)V

    move-object v10, v0

    goto :goto_6

    :cond_e
    move-object v10, v3

    :goto_6
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP/HiB;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/bytedance/adsdk/sP/TKC/sP/HiB;-><init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;Landroid/graphics/Path$FillType;Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Lcom/bytedance/adsdk/sP/TKC/Sj/vS;Lcom/bytedance/adsdk/sP/TKC/Sj/vS;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Z)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_7
        0x67 -> :sswitch_6
        0x6f -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0xcfc -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
