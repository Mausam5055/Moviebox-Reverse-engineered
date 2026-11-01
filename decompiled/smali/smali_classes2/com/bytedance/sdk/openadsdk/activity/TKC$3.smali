.class Lcom/bytedance/sdk/openadsdk/activity/TKC$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TKC;->fF()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "duration"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->sP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "percent"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/activity/TKC;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "scene_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pag_json_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_extra_data"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$3;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method
