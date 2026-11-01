.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl;->imagePreview(Landroid/content/Context;Ljava/util/ArrayList;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0OO:Z

.field public final synthetic OooO0Oo:I

.field public final synthetic OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0O0:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0OO:Z

    iput p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0Oo:I

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "errMsg"

    const-string v3, "Failed preview image, no permission : PI002"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(DialogProxy::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO00o:Landroid/content/Context;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/proxy/DialogProxy$DefaultImpls;->showStoragePermissionDialog$default(Lcom/cloud/tmc/integration/proxy/DialogProxy;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public onGranted()V
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO00o:Landroid/content/Context;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    move-object v3, v0

    check-cast v3, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0O0:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0OO:Z

    iget v7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0Oo:I

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILjava/util/ArrayList;ZI)V

    :cond_0
    return-void
.end method
