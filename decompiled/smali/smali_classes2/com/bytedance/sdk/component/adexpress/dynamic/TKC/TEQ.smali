.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TEQ;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;
    .locals 11

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Ei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->kF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "29"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v8, "25"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v8, "24"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v8, "23"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string v8, "22"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "20"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v8, "18"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "17"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v8, "16"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "14"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v8, "13"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v8, "12"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "11"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v8, "10"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_e
    const-string v8, "9"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_0

    :cond_f
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_f
    const-string v8, "8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_0

    :cond_10
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_10
    const-string v8, "7"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_0

    :cond_11
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_11
    const-string v8, "6"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_0

    :cond_12
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_12
    const-string v8, "5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_0

    :cond_13
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_13
    const-string v8, "2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_0

    :cond_14
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_14
    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_0

    :cond_15
    move v7, v0

    goto :goto_0

    :sswitch_15
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto :goto_0

    :cond_16
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->Sj()I

    move-result v4

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->sP()I

    move-result v5

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->EjP()I

    move-result v6

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->Jcg()Lorg/json/JSONObject;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;IIILorg/json/JSONObject;)V

    move-object v4, v8

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "static/lotties/gesture-slide.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;

    const-string v5, "25"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v4, v6

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto/16 :goto_2

    :cond_17
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "swiper_up_star.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :cond_18
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;

    const-string v5, "24"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "static/lotties/202327swiper-up-star/click.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;

    const-string v5, "23"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "static/lotties/202327swiper-up-star/index.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;

    const-string v5, "22"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_19
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TzV;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TzV;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "static/lotties/glass-swipe/glass-swipe.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;

    const-string v5, "20"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "brush_mask.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :cond_1b
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;

    const-string v5, "20"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Ym;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/EjP;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto/16 :goto_2

    :pswitch_a
    new-instance v9, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->Sj()I

    move-result v6

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->sP()I

    move-result v7

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->EjP()I

    move-result v8

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->Jcg()Lorg/json/JSONObject;

    move-result-object v10

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;IIILorg/json/JSONObject;)V

    move-object v4, v9

    goto :goto_2

    :pswitch_b
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto :goto_2

    :pswitch_c
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/aa;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/aa;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto :goto_2

    :pswitch_d
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/sef;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/sef;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto :goto_2

    :pswitch_e
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->xhi()I

    move-result v4

    if-ne v4, v0, :cond_1c

    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Chv()I

    move-result v0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;I)V

    goto :goto_2

    :cond_1c
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto :goto_2

    :pswitch_f
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/sP;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto :goto_2

    :pswitch_10
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    goto :goto_2

    :pswitch_11
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/HiB;

    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    :cond_1d
    :goto_2
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_15
        0x31 -> :sswitch_14
        0x32 -> :sswitch_13
        0x35 -> :sswitch_12
        0x36 -> :sswitch_11
        0x37 -> :sswitch_10
        0x38 -> :sswitch_f
        0x39 -> :sswitch_e
        0x61f -> :sswitch_d
        0x620 -> :sswitch_c
        0x621 -> :sswitch_b
        0x622 -> :sswitch_a
        0x623 -> :sswitch_9
        0x625 -> :sswitch_8
        0x626 -> :sswitch_7
        0x627 -> :sswitch_6
        0x63e -> :sswitch_5
        0x640 -> :sswitch_4
        0x641 -> :sswitch_3
        0x642 -> :sswitch_2
        0x643 -> :sswitch_1
        0x647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
