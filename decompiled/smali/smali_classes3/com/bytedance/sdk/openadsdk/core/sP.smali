.class public Lcom/bytedance/sdk/openadsdk/core/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/sP$Sj;
    }
.end annotation


# direct methods
.method private static Dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/dNu;
    .locals 8

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x46

    const/16 v4, 0x1e

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-nez p0, :cond_0

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP(I)V

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB(I)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS(I)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg(I)V

    sget p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Sj:I

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq(I)V

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TKC(I)V

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->sP(I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Sj(I)V

    return-object v0

    :cond_0
    const-string v7, "ceiling_time"

    invoke-virtual {p0, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP(I)V

    const-string v5, "ceiling_ratio"

    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB(I)V

    const-string v4, "expand_ratio"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS(I)V

    const-string v3, "back_type"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg(I)V

    const-string v2, "boc_return_type"

    sget v3, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Sj:I

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq(I)V

    const-string v2, "pre_render_status"

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TKC(I)V

    const-string v2, "pre_render_use_gecko"

    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->sP(I)V

    const-string v2, "pre_render_add_type"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Sj(I)V

    return-object v0
.end method

.method private static EjP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/HiB;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "splash_clickarea"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "splash_layout_id"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "load_wait_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v5

    :goto_0
    const-string v2, "skip_time"

    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/HiB;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/HiB;-><init>()V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->sP(I)V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->TKC(I)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj(J)V

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj(I)V

    return-object v2
.end method

.method private static EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static HiB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    const-string v2, "is_selected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    const-string v2, "options"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/sP;->HiB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    return-object v0
.end method

.method private static Jcg(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/RiZ;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;-><init>()V

    const-string v1, ""

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0xa

    if-nez p0, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj(J)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP(J)V

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC(J)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP(J)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v6, "onlylp_loading_maxtime"

    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj(J)V

    const-string v6, "straight_lp_showtime"

    invoke-virtual {p0, v6, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP(J)V

    const-string v6, "onlyagg_loading_maxtime"

    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC(J)V

    const-string v4, "straight_agg_showtime"

    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP(J)V

    const-string v2, "loading_text"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj(Ljava/lang/String;)V

    return-object v0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/EjP;)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x197

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x198

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1a0

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)I
    .locals 3

    const/16 v0, 0xc8

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x193

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x194

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->TKC()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->TKC()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/16 p0, 0x195

    return p0

    :cond_3
    return v0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
    .locals 5

    const/16 v0, 0x191

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, ""

    invoke-static {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "fullscreen_interstitial_ad"

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TX()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "load_html_fail"

    invoke-static {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return v0

    :cond_5
    const-string v0, "load_html_success"

    invoke-static {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/4 v1, 0x2

    const/16 v3, 0xc8

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Ly5/b;Z)I

    move-result v0

    if-eq v0, v3, :cond_9

    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Ljava/util/List;)I

    move-result v0

    if-eq v0, v3, :cond_9

    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return v0

    :cond_9
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->nP()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    move-result p0

    goto :goto_2

    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    move-result p0

    :goto_2
    return p0

    :cond_b
    :goto_3
    const/16 v0, 0x192

    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return v0
.end method

.method private static Sj(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/uvD;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 p0, 0x199

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 p0, 0x19a

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    if-nez v0, :cond_3

    const/16 p0, 0x19b

    return p0

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x19c

    return p0

    :cond_4
    const/16 p0, 0xc8

    return p0
.end method

.method private static Sj(Ly5/b;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x19d

    return p0

    :cond_0
    invoke-virtual {p0}, Ly5/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x19e

    return p0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ly5/b;->r()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x19f

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static Sj(Ljava/lang/String;II)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    move v2, v0

    move v0, p2

    move p2, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move v0, p2

    :cond_2
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;-><init>(Landroid/content/Context;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP;->Sj(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p0

    new-instance p2, Landroid/util/Pair;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)Landroid/util/Pair;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/model/ib;",
            "Lcom/bytedance/sdk/openadsdk/core/model/TKC;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/model/Sj;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "choose_ui_data"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;-><init>()V

    const-string v4, "request_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Ljava/lang/String;)V

    const-string v4, "ret"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(I)V

    const-string v4, "multi_ad_style"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sP(I)V

    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sP(Ljava/lang/String;)V

    const-string v4, "gdid_encrypted"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sP(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    const-string v1, "auction_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->TKC()I

    move-result v6

    if-eqz v6, :cond_2

    return-object v2

    :cond_2
    const-string v6, "creatives"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->aa()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    move-object v9, v2

    :goto_1
    move v10, v5

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_c

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v11

    const/16 v14, 0x27

    if-eqz v11, :cond_6

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->aa()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v15

    const/16 v2, 0x1e

    if-eq v15, v2, :cond_5

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v2

    if-ne v2, v14, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sP(I)V

    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA(Z)V

    :cond_6
    :goto_4
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    move-result v2

    const/16 v15, 0xc8

    if-eq v2, v15, :cond_9

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v15

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    goto :goto_5

    :cond_7
    const-string v15, ""

    const/4 v7, 0x0

    invoke-static {v7, v15, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_8

    if-eqz v11, :cond_8

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/sP$Sj;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ci()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15, v2}, Lcom/bytedance/sdk/openadsdk/core/sP$Sj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v2

    if-ne v2, v14, :cond_b

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->sP(I)V

    goto :goto_6

    :cond_9
    invoke-virtual {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v3, v11}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Ljava/util/ArrayList;)V

    :cond_d
    move-object/from16 v0, p3

    move v5, v8

    goto :goto_7

    :cond_e
    move-object/from16 v0, p3

    :goto_7
    invoke-static {v5, v3, v6, v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/Sj;Ljava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_8
    const-string v1, "TTAD.AdInfoFactory"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p0

    return-object p0
.end method

.method private static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string v4, "multi_ad_scene"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/zR;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/zR;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/zR;)V

    :cond_1
    const-string v4, "proportion_watching"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq(I)V

    const-string v4, "mate_disable_cache"

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ym(Z)V

    const-string v4, "interaction_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib(I)V

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP:Ljava/lang/String;

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->zR(I)V

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC:Ljava/lang/String;

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kF(I)V

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB:Ljava/lang/String;

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uP(I)V

    const-string v4, "target_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk(Ljava/lang/String;)V

    const-string v4, "ad_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TzV(Ljava/lang/String;)V

    const-string v4, "app_log_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RiZ(Ljava/lang/String;)V

    const-string v4, "source"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ym(Ljava/lang/String;)V

    const-string v4, "app_name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa(Ljava/lang/String;)V

    const-string v4, "dislike_control"

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Yf(I)V

    const-string v4, "play_bar_show_time"

    const/16 v6, -0xc8

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dNu(I)V

    const-string v4, "gecko_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx(Ljava/lang/String;)V

    const-string v4, "set_click_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "cta"

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(D)V

    const-string v6, "other"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(D)V

    :cond_2
    const-string v4, "extension"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lorg/json/JSONObject;)V

    if-eqz v4, :cond_3

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/Zq;

    invoke-direct {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Zq;)V

    :cond_3
    const-string v4, "icon"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "screenshot"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP(Z)V

    const-string v6, "play_bar_style"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq(I)V

    const-string v6, "market_url"

    const-string v12, ""

    invoke-virtual {v1, v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->zR(Ljava/lang/String;)V

    const-string v6, "video_adaptation"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk(I)V

    const-string v6, "feed_video_opentype"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ(I)V

    const-string v6, "session_params"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lorg/json/JSONObject;)V

    const-string v6, "auction_price"

    invoke-virtual {v1, v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA(Ljava/lang/String;)V

    const-string v6, "mrc_report"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts(I)V

    const-string v6, "isMrcReportFinish"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ov()V

    :cond_4
    const-string v6, "render"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v13, 0x64

    const/4 v14, 0x1

    if-eqz v6, :cond_5

    const-string v7, "render_sequence"

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ym(I)V

    const-string v7, "backup_render_control"

    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa(I)V

    const-string v7, "reserve_time"

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG(I)V

    const-string v7, "render_thread"

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Wjd(I)V

    :cond_5
    if-eqz v2, :cond_6

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    goto :goto_0

    :cond_6
    move v2, v14

    :goto_0
    const-string v6, "render_control"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg(I)V

    const-string v2, "width"

    const-string v15, "height"

    const-string v6, "url"

    if-eqz v4, :cond_7

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;-><init>()V

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP(I)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(I)V

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V

    :cond_7
    const-string v4, "reward_data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v7, "reward_amount"

    invoke-virtual {v4, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(I)V

    const-string v7, "reward_name"

    invoke-virtual {v4, v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg(Ljava/lang/String;)V

    :cond_8
    const-string v4, "cover_image"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;-><init>()V

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP(I)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(I)V

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V

    :cond_9
    const-string v4, "image"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_a

    move v7, v11

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_a

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;-><init>()V

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP(I)V

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(I)V

    const-string v13, "image_preview"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v8, v13}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(Z)V

    const-string v13, "image_key"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V

    add-int/lit8 v7, v7, 0x1

    const/16 v13, 0x64

    goto :goto_1

    :cond_a
    const-string v4, "show_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_b

    move v7, v11

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cX()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    const-string v4, "click_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_c

    move v7, v11

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kb()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_c
    const-string v4, "play_start"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_d

    move v7, v11

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_d

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Uc()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    const-string v4, "click_area"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_e

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/model/uA;-><init>()V

    const-string v8, "click_upper_content_area"

    invoke-virtual {v4, v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;->Sj:Z

    const-string v8, "click_upper_non_content_area"

    invoke-virtual {v4, v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;->sP:Z

    const-string v8, "click_lower_content_area"

    invoke-virtual {v4, v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;->TKC:Z

    const-string v8, "click_lower_non_content_area"

    invoke-virtual {v4, v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;->EjP:Z

    const-string v8, "click_button_area"

    invoke-virtual {v4, v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;->HiB:Z

    const-string v8, "click_video_area"

    invoke-virtual {v4, v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lcom/bytedance/sdk/openadsdk/core/model/uA;->vS:Z

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uA;)V

    :cond_e
    const-string v4, "adslot"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/sP;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :goto_5
    if-eqz v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRequestExtraMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v4, "admob_watermark"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v0, "identificationOverlayContent"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley(Ljava/lang/String;)V

    :cond_11
    :goto_6
    const-string v0, "intercept_flag"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uvD(I)V

    const-string v0, "phone_num"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq(Ljava/lang/String;)V

    const-string v0, "description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uvD(Ljava/lang/String;)V

    const-string v0, "button_text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dNu(Ljava/lang/String;)V

    const-string v0, "ad_logo"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef(I)V

    const-string v0, "ext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sU(Ljava/lang/String;)V

    const-string v0, "cover_click_area"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sU(I)V

    const-string v4, "image_mode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE(I)V

    const-string v4, "orientation"

    invoke-virtual {v1, v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LqL(I)V

    const-string v4, "aspect_ratio"

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    invoke-virtual {v1, v4, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v4, v7

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(F)V

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sU(I)V

    const-string v0, "app"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "deep_link"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "oem"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "is_web_jump_ip"

    invoke-virtual {v1, v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v10, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(I)V

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/kF;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/kF;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/kF;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->vS(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/EjP;)V

    const-string v0, "interaction_method_params"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "arbitrage_interceptor_params"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/sP;->uA(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/vS;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/vS;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Jcg(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/RiZ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/dNu;)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/sP;->Ym(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/uP;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uP;)V

    const-string v0, "filter_words"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_13

    move v4, v11

    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_13

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/sP;->HiB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v10, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_13
    const-string v0, "count_down"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley(I)V

    const-string v0, "expiration_time"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(J)V

    const-string v0, "video_encode_type"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jb(I)V

    invoke-virtual {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fm(I)V

    const-string v0, "video"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0, v10, v14}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Ly5/b;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Ly5/b;)V

    const-string v7, "multi_played_percent"

    const/16 v8, 0x32

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK(I)V

    goto :goto_8

    :cond_14
    move-object v4, v3

    :goto_8
    const-string v0, "h265_video"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Ly5/b;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Ly5/b;)V

    goto :goto_9

    :cond_15
    move-object v0, v3

    :goto_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_1b

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nou()I

    move-result v7

    if-nez v7, :cond_16

    goto :goto_a

    :cond_16
    if-eqz v0, :cond_19

    if-eqz v4, :cond_19

    invoke-virtual {v0}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v4}, Ly5/b;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ly5/b;->e(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v0}, Ly5/b;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v4}, Ly5/b;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ly5/b;->i(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Ly5/b;->c()I

    move-result v7

    if-ne v7, v5, :cond_19

    invoke-virtual {v4}, Ly5/b;->c()I

    move-result v7

    invoke-virtual {v0, v7}, Ly5/b;->d(I)V

    :cond_19
    if-eqz v0, :cond_1a

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ly5/b;)V

    goto :goto_b

    :cond_1a
    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ly5/b;)V

    goto :goto_b

    :cond_1b
    :goto_a
    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ly5/b;)V

    invoke-virtual {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jb(I)V

    :goto_b
    const-string v0, "download_conf"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->TEQ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/aa;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/aa;)V

    :cond_1c
    const-string v0, "media_ext"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->aa(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/util/Map;)V

    const-string v0, "tpl_info"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "dynamic_creative"

    if-eqz v4, :cond_1e

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;-><init>()V

    const-string v0, "id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->TKC(Ljava/lang/String;)V

    const-string v0, "md5"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->EjP(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->HiB(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->vS(Ljava/lang/String;)V

    const-string v0, "diff_data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Jcg(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Dq(Ljava/lang/String;)V

    const-string v6, "version"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->sP(Ljava/lang/String;)V

    const-string v6, "media_view"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->uA(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "tag_ids"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1d

    move v13, v11

    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v13, v5, :cond_1d

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_d

    :cond_1d
    const-string v0, "music_url"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Sj(Ljava/util/List;)V

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :goto_d
    const-string v5, "TTAD.AdInfoFactory"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    const-string v0, "engine_version"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->TEQ(Ljava/lang/String;)V

    const-string v0, "ugen_url"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Ym(Ljava/lang/String;)V

    const-string v0, "ugen_md5"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->aa(Ljava/lang/String;)V

    const-string v0, "ugen_data"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Fmk(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;)V

    :cond_1e
    const-string v0, "tpl_info_v3"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LqL;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/LqL;)V

    :cond_1f
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lorg/json/JSONObject;)V

    :cond_20
    const-string v0, "creative_extra"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ(Ljava/lang/String;)V

    const-string v0, "if_block_lp"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA(I)V

    const-string v0, "cache_sort"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TzV(I)V

    const-string v0, "if_sp_cache"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RiZ(I)V

    const-string v0, "splash_control"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->EjP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/HiB;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/HiB;)V

    :cond_21
    const-string v0, "is_package_open"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LD(I)V

    const-string v0, "ad_info"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq(Ljava/lang/String;)V

    const-string v0, "ua_policy"

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx(I)V

    const-string v0, "playable_duration_time"

    const/16 v5, 0x14

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF(I)V

    const-string v0, "playable_endcard_close_time"

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->JcM(I)V

    const-string v0, "endcard_close_time"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WMZ(I)V

    const-string v0, "interaction_method"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP(I)V

    const-string v0, "lp_click_type"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs(I)V

    const-string v0, "lp_click_interval"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v10, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP(J)V

    const-string v0, "dsp_html"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib(Ljava/lang/String;)V

    const-string v0, "image_stay"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->qRN(I)V

    const-string v0, "dsp_material_type"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x3

    if-ltz v0, :cond_22

    if-le v0, v5, :cond_23

    :cond_22
    move v0, v11

    :cond_23
    if-nez v0, :cond_25

    const-string v6, "is_vast"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_24

    move v0, v14

    :cond_24
    const-string v6, "is_html"

    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_f

    :cond_25
    move v4, v0

    :goto_f
    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HpB(I)V

    if-eq v4, v14, :cond_26

    if-ne v4, v5, :cond_2e

    :cond_26
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v0

    if-gez v0, :cond_28

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    goto :goto_10

    :cond_27
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v0

    :cond_28
    :goto_10
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v13

    const-string v4, "vast_json"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    goto :goto_12

    :cond_29
    const-string v4, "dsp_vast"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v10, v13}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-object v3

    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Ljava/lang/String;II)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;

    move-object v9, v0

    move-object v0, v4

    goto :goto_11

    :cond_2b
    move-object v0, v3

    move-object v9, v0

    :goto_11
    move-object v4, v10

    move-object v5, v13

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;JLcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;)V

    :goto_12
    if-eqz v0, :cond_2c

    invoke-virtual {v0, v13}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS(Ljava/lang/String;)V

    :cond_2c
    if-nez v0, :cond_2d

    return-object v3

    :cond_2d
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_2e
    const-string v0, "deep_link_appname"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kF(Ljava/lang/String;)V

    const-string v0, "landing_page_download_clicktype"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei(I)V

    const-string v0, "dsp_style"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Fmk;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Fmk;)V

    :cond_2f
    const-string v0, "dsp_adchoices"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v3, "adchoices_icon"

    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Ljava/lang/String;)V

    const-string v3, "adchoices_url"

    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Ljava/lang/String;)V

    :cond_30
    const-string v0, "gdid_encrypted"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->wE(Ljava/lang/String;)V

    :cond_31
    const-string v0, "jump_probability"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_32

    const/16 v3, 0x64

    if-le v0, v3, :cond_33

    :cond_32
    move v0, v11

    :cond_33
    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi(I)V

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jw()V

    const-string v0, "ugen"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v3, "endcard"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;)V

    const-string v3, "overlay"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;)V

    :cond_34
    const-string v0, "preload_h5_type"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->db(I)V

    const-string v0, "hasReportShow"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq(Z)V

    const-string v0, "endcard_creative"

    invoke-virtual {v1, v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LqL(Ljava/lang/String;)V

    const-string v0, "ad_label"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Lorg/json/JSONObject;)V

    const-string v0, "ev"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v3, "enable"

    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj:Z

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa(Z)V

    const-string v3, "wait_time"

    sget v4, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU(I)V

    const-string v3, "label"

    sget-object v4, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Yf(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    :cond_35
    const-string v0, "banner"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    invoke-direct {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;-><init>(II)V

    invoke-virtual {v10, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;)V

    :cond_36
    return-object v10
.end method

.method private static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Ly5/b;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ly5/b;

    invoke-direct {v0}, Ly5/b;-><init>()V

    const-string v1, "cover_height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ly5/b;->D(I)V

    const-string v1, "cover_width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ly5/b;->u(I)V

    const-string v1, "resolution"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly5/b;->q(Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly5/b;->p(J)V

    const-string v1, "video_duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly5/b;->n(D)V

    const-string v3, "replay_time"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Ly5/b;->s(I)V

    const-string p1, "cover_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly5/b;->E(Ljava/lang/String;)V

    const-string p1, "video_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly5/b;->v(Ljava/lang/String;)V

    const-string p1, "endcard"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly5/b;->e(Ljava/lang/String;)V

    const-string p1, "playable_download_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly5/b;->i(Ljava/lang/String;)V

    const-string p1, "file_hash"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly5/b;->M(Ljava/lang/String;)V

    const-string p1, "if_playable_loading_show"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ly5/b;->b(I)V

    const-string p1, "remove_loading_page_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ly5/b;->I(I)V

    const-string p1, "fallback_endcard_judge"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ly5/b;->o(I)V

    const-string p1, "video_preload_size"

    const v2, 0x4b000

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ly5/b;->h(I)V

    const-string p1, "reward_video_cached_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ly5/b;->L(I)V

    const-string p1, "execute_cached_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ly5/b;->k(I)V

    const-string p1, "endcard_render"

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    :goto_1
    invoke-virtual {v0, p0}, Ly5/b;->d(I)V

    return-object v0
.end method

.method private static Sj(ILcom/bytedance/sdk/openadsdk/core/model/Sj;Ljava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/openadsdk/core/model/Sj;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/model/TKC;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-lt p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Dq()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-int v4, p0, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->uA()Lcom/bytedance/sdk/openadsdk/core/model/Sj$Sj;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    move v5, p0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-gtz v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/sP$1;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/Sj;IZLjava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    const-string p1, "choose_ad_parsing_error"

    invoke-static {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Jcg(I)V

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Zq(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uvD(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/EjP;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ly5/b;

    invoke-direct {v1}, Ly5/b;-><init>()V

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly5/b;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ly5/b;->n(D)V

    invoke-virtual {v1, v0}, Ly5/b;->M(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ly5/b;->E(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ly5/b;->e(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ly5/b;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->HiB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->HiB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->TKC()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;-><init>()V

    const-string v0, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/static/images/2023620white.jpeg"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(Ljava/lang/String;)V

    const/16 v0, 0x62

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj(I)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP(I)V

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)V

    :cond_5
    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "load_vast_fail"

    invoke-static {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;JLcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;)V
    .locals 9

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/sP$2;

    const-string v1, "vast_parser"

    move-object v0, v8

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/sP$2;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;JLcom/bytedance/sdk/openadsdk/core/Ym/Sj/sP$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method private static Sj(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/sP$Sj;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/sP$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/sP$3;-><init>(Ljava/util/ArrayList;)V

    const-string p0, "multiple_ads_parsing_error"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method private static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "iv_skip_time"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "rv_skip_time"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(I)V

    :cond_0
    if-eq p0, v1, :cond_1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(I)V

    :cond_1
    return-void
.end method

.method private static Sj(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static TEQ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/aa;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/aa;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/aa;-><init>()V

    const-string v1, "if_send_click"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/aa;->Sj(I)V

    return-object v0
.end method

.method private static TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return v1

    :cond_0
    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v2, 0x8

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/EjP;)I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return v1

    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sP;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x196

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return v1
.end method

.method private static TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    const-string v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    return-object v0
.end method

.method private static Ym(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Ym;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;-><init>()V

    const-string v1, "deeplink_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj(Ljava/lang/String;)V

    const-string v1, "fallback_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP(Ljava/lang/String;)V

    const-string v1, "fallback_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj(I)V

    return-object v0
.end method

.method private static aa(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x196

    const/16 v6, 0x1a1

    const/16 v7, 0x197

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {p0, v0, v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    move v1, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    move v1, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v1, 0x1a0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0x198

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sP;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p0, v0, v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    move v1, v5

    :cond_6
    :goto_1
    if-eq v1, v6, :cond_9

    if-eq v1, v7, :cond_9

    if-ne v1, v5, :cond_7

    goto :goto_2

    :cond_7
    if-eq v1, v2, :cond_8

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    :cond_8
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public static sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "mCodeId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mImgAcceptedWidth"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "mImgAcceptedHeight"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "mExpressViewAcceptedWidth"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    const-string v9, "mExpressViewAcceptedHeight"

    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    const-string v8, "mAdCount"

    const/4 v9, 0x6

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "mSupportDeepLink"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "mRewardName"

    invoke-virtual {v0, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mRewardAmount"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "mMediaExtra"

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mUserID"

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mOrientation"

    const/4 v15, 0x2

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string v14, "mNativeAdType"

    invoke-virtual {v0, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "mIsAutoPlay"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v16, v15

    const-string v15, "mIsExpressAd"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v4, "mBidAdm"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mDurationSlotType"

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setDurationSlotType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method private static uA(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/vS;
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/vS;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/vS;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->TKC(I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->EjP(I)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->sP(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->HiB(I)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->Sj(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->sP(I)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->Sj(I)V

    return-object v0

    :cond_0
    const-string v2, "interceptor_x"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->TKC(I)V

    const-string v2, "interceptor_y"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->EjP(I)V

    const-string v2, "interceptor_page"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    move v4, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->sP(Ljava/util/List;)V

    const-string v2, "interceptor_interval_time"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->HiB(I)V

    const-string v2, "url_regular"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    move v4, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->Sj(Ljava/util/List;)V

    const-string v2, "boc_index"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->sP(I)V

    const-string v2, "is_act"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/vS;->Sj(I)V

    return-object v0
.end method

.method private static vS(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/EjP;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;-><init>()V

    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->TKC(Ljava/lang/String;)V

    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj(Ljava/lang/String;)V

    const-string v1, "score"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj(D)V

    const-string v1, "comment_num"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->Sj(I)V

    const-string v1, "app_size"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP(I)V

    const-string v1, "app_category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->EjP(Ljava/lang/String;)V

    return-object v0
.end method
