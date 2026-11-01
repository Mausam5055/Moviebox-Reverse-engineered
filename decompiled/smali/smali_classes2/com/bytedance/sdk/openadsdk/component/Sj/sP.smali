.class public Lcom/bytedance/sdk/openadsdk/component/Sj/sP;
.super Ljava/lang/Object;


# direct methods
.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)Lcom/bytedance/sdk/openadsdk/component/Sj/Sj;
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/Sj/Sj;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "open_ad"

    const/4 v4, 0x4

    move-object v0, v6

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    const p2, 0x1f000011

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V

    invoke-static {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v6
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;Lcom/bytedance/sdk/openadsdk/component/uA/sP;)Lcom/bytedance/sdk/openadsdk/core/Dq/uA;
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/Sj/sP$1;

    const-string v3, "open_ad"

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP$1;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V

    invoke-virtual {v6, p3}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V

    invoke-static {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v6
.end method

.method private static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "open_ad"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    :cond_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dNu()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_area"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video_normal_ad"

    goto :goto_0

    :cond_0
    const-string v1, "image_normal_ad"

    :goto_0
    const-string v2, "openad_creative_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "click_scence"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;Lcom/bytedance/sdk/openadsdk/component/uA/sP;)Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/Sj/sP$2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "open_ad"

    const/4 v4, 0x4

    move-object v0, v6

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP$2;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V

    invoke-virtual {v6, p3}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/sP/sP;)V

    invoke-static {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v6
.end method
