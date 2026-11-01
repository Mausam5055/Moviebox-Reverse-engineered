.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startMiniApp(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAsyncStatusLoading()V
    .locals 2

    const-string v0, "MiniAppActivity"

    const-string v1, "showAsyncStatusLoading"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->access$showLoadingPage(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method
