.class Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj;->Sj(Lcom/bytedance/sdk/component/Dq/sP/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Dq/sP/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj;Lcom/bytedance/sdk/component/Dq/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Dq/sP/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->qRN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Dq/sP/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/sP/Sj;->Sj()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    const-string v1, "stats_sdk_thread_num"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Dq/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/sP/Sj;->Sj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method
