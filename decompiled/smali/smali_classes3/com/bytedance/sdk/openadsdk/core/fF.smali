.class public Lcom/bytedance/sdk/openadsdk/core/fF;
.super Ljava/lang/Object;


# static fields
.field private static Sj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 9
    .param p4    # Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 1
    .param p4    # Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p8, :cond_2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    new-instance p8, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;

    invoke-direct {p8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ad_pending_download"

    invoke-static {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Z

    move-result p7

    invoke-virtual {p8, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->aa(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "?"

    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "&orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "?orientation=portrait"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p8, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result p7

    const/4 p8, 0x3

    if-ne p7, p8, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p7

    const/4 p8, 0x2

    if-eq p7, p8, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p7

    const/4 p8, 0x1

    if-ne p7, p8, :cond_4

    sget-boolean p7, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj:Z

    if-eqz p7, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rN()Z

    move-result p7

    if-nez p7, :cond_4

    new-instance p8, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageLink2Activity;

    invoke-direct {p8, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    new-instance p8, Landroid/content/Intent;

    const-class p7, Lcom/bytedance/sdk/openadsdk/activity/TTLandingPageActivity;

    invoke-direct {p8, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_5
    :goto_0
    const-string p7, "url"

    invoke-virtual {p8, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object p1

    const-string p7, "gecko_id"

    invoke-virtual {p8, p7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "web_title"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sdk_version"

    const/16 p7, 0x1bca

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "adid"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object p1

    const/4 p7, 0x0

    if-nez p1, :cond_6

    move-object p1, p7

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "icon_url"

    invoke-virtual {p8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "event_tag"

    invoke-virtual {p8, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "source"

    invoke-virtual {p8, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_7

    const/high16 p0, 0x10000000

    invoke-virtual {p8, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SP()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "multi_process_materialmeta"

    invoke-virtual {p8, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kF;->vS()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :goto_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_9

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result p0

    const/16 p1, 0xf

    if-eq p0, p1, :cond_9

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result p0

    const/16 p1, 0x32

    if-ne p0, p1, :cond_e

    :cond_9
    const-string p0, "multi_process_data"

    if-eqz p4, :cond_c

    instance-of p1, p4, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj$Sj;

    if-eqz p1, :cond_a

    check-cast p4, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj$Sj;

    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj$Sj;->vS()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    move-result-object p7

    goto :goto_3

    :cond_a
    instance-of p1, p4, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;

    if-eqz p1, :cond_b

    check-cast p4, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/sP;->sP()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    move-result-object p7

    :cond_b
    :goto_3
    if-eqz p7, :cond_c

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    instance-of p1, p5, Lcom/bytedance/sdk/openadsdk/core/TKC/vS;

    if-eqz p1, :cond_d

    check-cast p5, Lcom/bytedance/sdk/openadsdk/core/TKC/vS;

    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/TKC/vS;->TKC()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    move-result-object p7

    if-eqz p7, :cond_d

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p8, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    if-eqz p7, :cond_e

    const-string p0, "video_is_auto_play"

    iget-boolean p1, p7, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->EjP:Z

    invoke-virtual {p8, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;->Sj()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_e
    return-object p8
.end method

.method private static Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(I)V

    return-object v0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static Sj(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj:Z

    return-void
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;ZI)Z
    .locals 13
    .param p3    # Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/sdk/openadsdk/api/PangleAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p5

    move/from16 v0, p8

    const/4 v1, -0x1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    move v10, p2

    if-ne v10, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    move v2, v9

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dpl_probability_jump"

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dsp_click_type"

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;ZLjava/util/Map;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    return v9

    :cond_4
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->TKC()I

    move-result v0

    const-string v2, "open_fallback_url"

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_8

    if-eqz p6, :cond_7

    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->Sj()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_6

    invoke-interface/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->HiB()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v8, v2, v12}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    return v9

    :cond_5
    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    goto :goto_0

    :cond_6
    invoke-static {p1, v8, v2, v12}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    return v9

    :cond_7
    invoke-static {v11, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Ym;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->TKC()I

    move-result v0

    if-ne v0, v9, :cond_9

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->sP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v8, v2, v12}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_a
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "play.google.com/store"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "?id="

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    invoke-static {p0, v9, v0, v8, p1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    return v0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_c
    :goto_3
    invoke-static {v9, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    return v2
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 10

    move-object v8, p0

    move-object v2, p1

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    return v9

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;)Z

    sput-boolean v9, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj:Z

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/sP$Sj;->Sj:Ljava/lang/String;

    move-object/from16 v1, p7

    invoke-static {p0, v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/dx;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;ZLjava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p5, :cond_2

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_2
    move-object v6, p5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/TKC;->Sj()Z

    move-result p5

    if-eqz p5, :cond_3

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/util/Map;Z)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Dq(Landroid/content/Context;)Z

    move-result p5

    const-string v2, "open_url_app"

    const/high16 v4, 0x10000000

    const-string v5, "can_query_install"

    const/4 v7, 0x1

    if-eqz p5, :cond_9

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Landroid/content/Context;Landroid/content/Intent;)Lcom/bytedance/sdk/openadsdk/utils/Mts$sP;

    move-result-object p5

    iget v8, p5, Lcom/bytedance/sdk/openadsdk/utils/Mts$sP;->sP:I

    const-string v9, "intent"

    if-lez v8, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Dq()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_4
    instance-of v8, p0, Landroid/app/Activity;

    if-nez v8, :cond_5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p5, Lcom/bytedance/sdk/openadsdk/utils/Mts$sP;->sP:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "matched_count"

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "url"

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p5, p5, Lcom/bytedance/sdk/openadsdk/utils/Mts$sP;->Sj:Landroid/content/ComponentName;

    if-eqz p5, :cond_6

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    invoke-static {p1, p3, v2, v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p5

    invoke-virtual {p5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p5

    invoke-virtual {p5, p1, p3}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    const-string p5, "dp_start_act_success"

    invoke-static {p5, p1, p3, v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "exception"

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, v9, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p5, -0x4

    invoke-static {p1, p3, p5, v2}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p5

    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Dq()Z

    move-result p5

    if-nez p5, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;Z)Z

    :cond_7
    return v0

    :cond_8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 p2, -0x3

    invoke-static {p1, p3, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_0

    :cond_9
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Dq()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_a
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_b

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v6, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p3, v2, v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/EjP/aa;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/EjP/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v7

    :catchall_0
    :goto_0
    return v0

    :cond_c
    :goto_1
    if-nez v1, :cond_d

    const/4 p0, -0x1

    goto :goto_2

    :cond_d
    const/4 p0, -0x2

    :goto_2
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->EjP()Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_3

    :cond_e
    const/4 p2, 0x0

    :goto_3
    invoke-static {p1, p3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v0
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;Z)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static sP(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;Z)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    :try_start_0
    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p1

    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
