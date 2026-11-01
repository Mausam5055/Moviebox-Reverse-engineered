.class Lcom/bytedance/adsdk/sP/HiB/kF;
.super Ljava/lang/Object;


# direct methods
.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/sP/Dq;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move v8, v5

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_1
    move v9, v3

    goto :goto_2

    :sswitch_0
    const-string v10, "mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    move v9, v0

    goto :goto_2

    :sswitch_1
    const-string v10, "inv"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v1

    goto :goto_2

    :sswitch_2
    const-string v10, "pt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v2

    goto :goto_2

    :sswitch_3
    const-string v10, "o"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v5

    :goto_2
    packed-switch v9, :pswitch_data_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :goto_3
    move v4, v3

    goto :goto_4

    :sswitch_4
    const-string v9, "s"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v0

    goto :goto_4

    :sswitch_5
    const-string v9, "n"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4

    :sswitch_6
    const-string v9, "i"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v2

    goto :goto_4

    :sswitch_7
    const-string v9, "a"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_4
    packed-switch v4, :pswitch_data_1

    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    goto/16 :goto_0

    :pswitch_1
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    goto/16 :goto_0

    :pswitch_2
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    goto/16 :goto_0

    :pswitch_3
    const-string v4, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {p1, v4}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(Ljava/lang/String;)V

    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    goto/16 :goto_0

    :pswitch_4
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v8

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->HiB(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v7

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;-><init>(Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Z)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_3
        0xe04 -> :sswitch_2
        0x197f1 -> :sswitch_1
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6e -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
