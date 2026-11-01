.class Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:J

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->Sj:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ev_wait_time_server"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ewp()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ev_wait_time_client"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->Sj:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "EvTracker"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Os()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
