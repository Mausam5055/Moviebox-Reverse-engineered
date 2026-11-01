.class Lcom/bytedance/adsdk/sP/HiB/dNu;
.super Ljava/lang/Object;


# direct methods
.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/sP/vS;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "o"

    const-string v2, "g"

    const-string v3, "d"

    const/4 v5, 0x1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move/from16 v17, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :goto_1
    const/4 v4, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "nm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "ml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "lj"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "lc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    :sswitch_4
    const-string v6, "hd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_5
    const-string v6, "w"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_6
    const-string v6, "t"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_7
    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_8
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_9
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_a
    const-string v6, "e"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    move v4, v5

    goto :goto_2

    :sswitch_b
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v8, p0

    move v4, v5

    move-object/from16 v23, v9

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v23, v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v6, v8

    move/from16 v17, v6

    :goto_3
    move-object/from16 v9, v23

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v23, v9

    invoke-static {}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;->values()[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    sub-int/2addr v8, v5

    aget-object v16, v6, v8

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v23, v9

    invoke-static {}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->values()[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    sub-int/2addr v8, v5

    aget-object v14, v6, v8

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v23, v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v19

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v23, v9

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v13

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v5, :cond_d

    sget-object v6, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    :goto_4
    move-object v9, v6

    goto/16 :goto_0

    :cond_d
    sget-object v6, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    goto :goto_4

    :pswitch_7
    move-object/from16 v23, v9

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->TKC(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v23, v9

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v20

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v23, v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v6, -0x1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const-string v9, "k"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "p"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_5

    :cond_f
    move-object/from16 v8, p0

    invoke-static {v8, v0, v6}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;I)Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;

    move-result-object v10

    goto :goto_5

    :cond_10
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v8, p0

    move-object/from16 v23, v9

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->TKC(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v8, p0

    move-object/from16 v23, v9

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_8
    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v6

    goto :goto_8

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v18, v6

    const/4 v5, 0x1

    goto :goto_6

    :cond_14
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    const/4 v4, 0x1

    goto :goto_9

    :cond_16
    const/4 v4, 0x1

    goto :goto_a

    :goto_9
    invoke-virtual {v0, v4}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(Z)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    move v5, v4

    goto :goto_6

    :cond_17
    move v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_c

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    move v5, v4

    goto/16 :goto_3

    :cond_18
    move-object/from16 v23, v9

    if-nez v20, :cond_19

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    new-instance v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;-><init>(Ljava/util/List;)V

    goto :goto_c

    :cond_19
    move-object/from16 v0, v20

    :goto_c
    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/vS;

    move-object v6, v1

    move-object/from16 v8, v23

    move-object v9, v10

    move-object v10, v0

    move-object v0, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v0

    invoke-direct/range {v6 .. v19}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;-><init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Lcom/bytedance/adsdk/sP/TKC/Sj/vS;Lcom/bytedance/adsdk/sP/TKC/Sj/vS;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;FLjava/util/List;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Z)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x67 -> :sswitch_9
        0x6f -> :sswitch_8
        0x73 -> :sswitch_7
        0x74 -> :sswitch_6
        0x77 -> :sswitch_5
        0xcfc -> :sswitch_4
        0xd77 -> :sswitch_3
        0xd7e -> :sswitch_2
        0xd9f -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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
    .end packed-switch
.end method
