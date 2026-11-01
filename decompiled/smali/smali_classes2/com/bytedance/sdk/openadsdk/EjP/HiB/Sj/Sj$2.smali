.class final Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J

    move-result-wide v1

    const-string v3, "service_duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v1

    const-string v3, "player_duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "cache_path_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getCacheType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result v1

    const-string v2, "player_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    const-string v2, "pangle_video_play_state"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    return-object v0
.end method
