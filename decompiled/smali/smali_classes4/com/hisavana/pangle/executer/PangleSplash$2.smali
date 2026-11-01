.class Lcom/hisavana/pangle/executer/PangleSplash$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleSplash;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash$2;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdClick"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$2;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$2;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleSplash;->f(Lcom/hisavana/pangle/executer/PangleSplash;)V

    return-void
.end method

.method public onAdShowed()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "Pangle Ads onAdShowed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash$2;->a:Lcom/hisavana/pangle/executer/PangleSplash;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method
