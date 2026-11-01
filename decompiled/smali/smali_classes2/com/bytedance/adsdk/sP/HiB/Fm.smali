.class Lcom/bytedance/adsdk/sP/HiB/Fm;
.super Ljava/lang/Object;


# direct methods
.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/sP/TzV;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "o"

    const-string v2, "d"

    const/4 v4, 0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v14, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_1
    const/4 v0, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "nm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    goto :goto_2

    :sswitch_1
    const-string v3, "ml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    goto :goto_2

    :sswitch_2
    const-string v3, "lj"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    goto :goto_2

    :sswitch_3
    const-string v3, "lc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_4
    const-string v3, "hd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string v3, "w"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v4

    goto :goto_2

    :sswitch_8
    const-string v3, "c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    move-object/from16 v0, p1

    move-object v3, v6

    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_1
    move-object v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v14, v5

    :goto_3
    move-object v6, v3

    goto/16 :goto_0

    :pswitch_2
    move-object v3, v6

    invoke-static {}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;->values()[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    sub-int/2addr v6, v4

    aget-object v13, v5, v6

    goto :goto_3

    :pswitch_3
    move-object v3, v6

    invoke-static {}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->values()[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    sub-int/2addr v6, v4

    aget-object v12, v5, v6

    goto :goto_3

    :pswitch_4
    move-object v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v15

    goto/16 :goto_0

    :pswitch_5
    move-object v3, v6

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_6
    move-object v3, v6

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v16

    goto/16 :goto_0

    :pswitch_7
    move-object v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v7, "n"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "v"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    :cond_a
    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v5

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_6
    const/4 v0, -0x1

    goto :goto_7

    :sswitch_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x2

    goto :goto_7

    :sswitch_a
    const-string v0, "g"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    move v0, v4

    goto :goto_7

    :sswitch_b
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_7
    packed-switch v0, :pswitch_data_1

    move-object/from16 v0, p1

    goto :goto_4

    :pswitch_8
    move-object v9, v5

    goto :goto_4

    :pswitch_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(Z)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_9

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v0, p1

    move-object v3, v6

    const/4 v5, 0x0

    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Jcg(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    move-result-object v10

    goto/16 :goto_0

    :cond_11
    move-object v3, v6

    if-nez v16, :cond_12

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    new-instance v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/sP/Jcg/Sj;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;-><init>(Ljava/util/List;)V

    goto :goto_8

    :cond_12
    move-object/from16 v0, v16

    :goto_8
    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;

    move-object v5, v1

    move-object v6, v3

    move-object v7, v9

    move-object v9, v10

    move-object v10, v0

    invoke-direct/range {v5 .. v15}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV;-><init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Ljava/util/List;Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;FZ)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_8
        0x64 -> :sswitch_7
        0x6f -> :sswitch_6
        0x77 -> :sswitch_5
        0xcfc -> :sswitch_4
        0xd77 -> :sswitch_3
        0xd7e -> :sswitch_2
        0xd9f -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_b
        0x67 -> :sswitch_a
        0x6f -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
