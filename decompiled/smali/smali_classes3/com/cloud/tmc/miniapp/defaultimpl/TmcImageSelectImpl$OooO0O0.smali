.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl;->imageSelect(Landroid/content/Context;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:I


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0O0:Landroid/content/Context;

    iput p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0OO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onAuthorized(Z)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0O0:Landroid/content/Context;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-direct {v2, v3}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;-><init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/proxy/DialogProxy;->showStoragePermissionDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onGranted()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onAuthorized(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0O0:Landroid/content/Context;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

    check-cast v0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    iget v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0OO:I

    new-instance v3, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-direct {v3, v4}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;-><init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    :cond_0
    return-void
.end method
