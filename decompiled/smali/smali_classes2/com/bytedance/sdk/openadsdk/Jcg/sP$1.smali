.class Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/util/Map;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/Jcg/sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Jcg/sP;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;->TKC:Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;->Sj:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "geckosdk_update_stats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "channel"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;->Sj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "download_gecko_end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;->sP:Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/Jcg/sP$Sj;->Sj()V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/sP$1;->Sj:Ljava/util/Map;

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
