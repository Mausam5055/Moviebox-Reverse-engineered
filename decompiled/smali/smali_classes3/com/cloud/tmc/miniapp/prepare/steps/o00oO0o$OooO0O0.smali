.class public Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "nevermore"

    const-string v3, "startWarmup \u72ec\u7acb\u7ad9 \u5f00\u542f\u79bb\u5c4f\u6e32\u67d3"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    sget-object v2, Lcom/cloud/tmc/kernel/constants/PageType;->H5_SHELL:Lcom/cloud/tmc/kernel/constants/PageType;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->offScreenRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Landroid/app/Activity;Lcom/cloud/tmc/integration/model/PrepareContext;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
