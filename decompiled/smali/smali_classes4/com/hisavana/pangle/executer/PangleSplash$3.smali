.class Lcom/hisavana/pangle/executer/PangleSplash$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleSplash;->onSplashStartLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/hisavana/pangle/executer/PangleSplash;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleSplash;J)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    iput-wide p2, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleSplash;->g(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init onError code\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0cmessage\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pangle_log"

    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->a:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle_log"

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->h(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->i(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->j(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->k(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;-><init>()V

    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v2}, Lcom/hisavana/pangle/executer/PangleSplash;->j(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$3;->b:Lcom/hisavana/pangle/executer/PangleSplash;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-direct {v1, v3, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleSplash;->e(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
