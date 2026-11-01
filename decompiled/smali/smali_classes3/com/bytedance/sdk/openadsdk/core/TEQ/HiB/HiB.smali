.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;
.super Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;


# instance fields
.field private ley:Z

.field private uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->ley:Z

    return-void
.end method

.method private Sj(Ljava/lang/CharSequence;ZIZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v2, :cond_0

    return-void

    :cond_0
    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "parse duration exception"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const-string v3, "UGenRender"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-nez p4, :cond_5

    if-lez v2, :cond_5

    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->ley:Z

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p4, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/vS;->sP(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;->Jcg(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_4

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->ley:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;->Jcg(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void
.end method

.method private TEQ()V
    .locals 4

    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/Dq;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/Dq;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Ym()Ljava/util/Map;

    move-result-object v2

    const-string v3, "image_info"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->sef()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cache_dir"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->sP(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    const-string v2, "ad"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/core/Dq;)V

    return-void
.end method

.method private sP(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p3, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/vS;

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void
.end method

.method private uA()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected Dq()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected EjP()I
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->TEQ()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LqL;->HiB()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->zR:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v1, "RVCountdown"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v1, "RVSkipView"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v1, "FVCountdown"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v1, "FVSkipView"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    :goto_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uA()V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->TKC()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    return v0

    :catchall_0
    const/16 v0, 0x8d

    return v0

    :catch_0
    const/16 v0, 0x8c

    return v0

    :catch_1
    const/16 v0, 0x8b

    return v0
.end method

.method protected Jcg()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "VideoV3"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    return-object v0
.end method

.method protected Sj()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "xTemplate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    if-nez v7, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "dislike"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_0

    :sswitch_1
    const-string v8, "muteVideo"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_0

    :sswitch_2
    const-string v8, "convert"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_0

    :sswitch_3
    const-string v8, "videoControl"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move v7, v3

    goto :goto_0

    :sswitch_4
    const-string v8, "skip"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    goto :goto_0

    :sswitch_5
    const-string v8, "pauseVideo"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    move v7, v4

    goto :goto_0

    :sswitch_6
    const-string v8, "openPrivacy"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_0

    :cond_8
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    move v0, v5

    goto :goto_1

    :pswitch_0
    move v0, v3

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v6

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x7

    :goto_1
    :pswitch_5
    new-array p3, v6, [I

    new-array v1, v6, [I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v2, :cond_9

    move-object p3, v2

    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v1, v2

    :cond_a
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;-><init>()V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dNu:J

    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TzV:J

    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget v3, p3, v5

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget p3, p3, v4

    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget v2, v1, v5

    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget v1, v1, v4

    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    const-string v1, "tap"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    move v4, v5

    :cond_c
    :goto_2
    invoke-virtual {p3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    invoke-interface {p3, p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Dq;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1e7a3222 -> :sswitch_6
        -0x353b7db -> :sswitch_5
        0x35e57f -> :sswitch_4
        0x2ff1f862 -> :sswitch_3
        0x38b81db3 -> :sswitch_2
        0x44a639e2 -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected sP()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setSoundMute(Z)V
    .locals 0

    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->Sj(Ljava/lang/CharSequence;ZIZ)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->sP(Ljava/lang/CharSequence;ZIZ)V

    return-void
.end method
