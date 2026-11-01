.class public final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const/4 v3, 0x2

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    move-object v2, v0

    :cond_4
    const-string v3, "redirectTo"

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v1

    :goto_4
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onReceivedError$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getApp$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    :cond_9
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/structure/App;->redirectTo(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_a
    return-void
.end method
