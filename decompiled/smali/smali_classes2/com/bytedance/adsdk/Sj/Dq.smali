.class public Lcom/bytedance/adsdk/Sj/Dq;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/vS;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "isDigit"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "translate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "exist"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "chunk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "find"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v1, Lcom/bytedance/adsdk/Sj/HiB;

    invoke-direct {v1}, Lcom/bytedance/adsdk/Sj/HiB;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/bytedance/adsdk/Sj/Jcg;

    invoke-direct {v1}, Lcom/bytedance/adsdk/Sj/Jcg;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/bytedance/adsdk/Sj/TKC;

    invoke-direct {v1}, Lcom/bytedance/adsdk/Sj/TKC;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/bytedance/adsdk/Sj/Sj;

    invoke-direct {v1}, Lcom/bytedance/adsdk/Sj/Sj;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/bytedance/adsdk/Sj/EjP;

    invoke-direct {v1}, Lcom/bytedance/adsdk/Sj/EjP;-><init>()V

    :goto_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x2ff5b9 -> :sswitch_4
        0x5a4226d -> :sswitch_3
        0x5c76af7 -> :sswitch_2
        0x3ec0f14e -> :sswitch_1
        0x7a9b2623 -> :sswitch_0
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

.method public static Sj(Lcom/bytedance/adsdk/Sj/sP/Sj/Sj;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/Sj/Sj;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/adsdk/Sj/Dq;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/vS;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/Sj/Sj;->sP()[Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/bytedance/adsdk/Sj/vS;->Sj(Lorg/json/JSONObject;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
