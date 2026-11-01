.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->sP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "arbi_current_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->TKC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "current_url_index"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->EjP()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "arbi_stay_duration"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->sef()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "browsing_percentage"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Zq()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "out_focus_scene"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$29;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->uvD()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ad_extra_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onWebBehaviorStay"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "TTAD.AdEvent"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
