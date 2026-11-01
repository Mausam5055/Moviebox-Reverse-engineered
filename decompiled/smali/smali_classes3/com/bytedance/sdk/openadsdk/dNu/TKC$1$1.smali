.class Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;->onMonitorUpload(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scene"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "start_count"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "success_count"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fail_count"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rit"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tag"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediation"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_init"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    const-string v2, "bus_monitor"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BusMonitorUtils"

    const-string v2, "onMonitorUpload: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
