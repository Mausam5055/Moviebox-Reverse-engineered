.class Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/dNu;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "webview_time_track"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->HiB(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "native_switchBackgroundAndForeground"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intercept_source"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "WebviewTimeTrack"

    const-string v4, "trySendTrackInfo json error"

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->vS(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
