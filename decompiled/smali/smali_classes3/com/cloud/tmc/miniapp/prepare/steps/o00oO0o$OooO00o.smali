.class public Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;
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

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "nevermore"

    const-string v0, "startWarmup \u5e38\u89c4\u5c0f\u7a0b\u5e8f \u9996\u9875\u662fH5 \u9884\u70edwebview \u5f00\u542f\u79bb\u5c4f\u6e32\u67d3"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO0O0:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/kernel/constants/PageType;->H5:Lcom/cloud/tmc/kernel/constants/PageType;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/o00oO0o$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/model/PrepareContext;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->offScreenRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Landroid/app/Activity;Lcom/cloud/tmc/integration/model/PrepareContext;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
