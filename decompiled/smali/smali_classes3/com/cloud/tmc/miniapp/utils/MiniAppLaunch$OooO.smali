.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showUpdateFwZipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/dialog/o000oOoO;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO00o:Landroid/content/Context;

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->killActivity()V

    :cond_1
    return-void
.end method

.method public OooO0O0(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO00o:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;

    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$showProgressDialog(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    return-void
.end method
