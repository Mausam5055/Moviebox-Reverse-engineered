.class final Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lorg/json/JSONObject;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->sP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->EjP:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->EjP()Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->EjP()Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;->Sj(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "feed_play"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->sP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feed_over"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->sP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feed_break"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->sP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->EjP:Lorg/json/JSONObject;

    const-string v2, "ad_extra_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;->EjP:Lorg/json/JSONObject;

    return-object v0
.end method
