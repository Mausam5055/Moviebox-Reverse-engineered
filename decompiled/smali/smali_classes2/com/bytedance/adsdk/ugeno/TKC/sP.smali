.class public Lcom/bytedance/adsdk/ugeno/TKC/sP;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->TKC()Lcom/bytedance/adsdk/ugeno/TKC/Sj;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/adsdk/ugeno/TKC/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/TKC/Sj$Sj;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/TKC/Sj$Sj;->Sj(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_3
    :goto_0
    return-object p0
.end method
