.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setDelayShowError(Z)V

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_3

    move-object v2, v0

    :cond_3
    const/4 v3, 0x2

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_6

    move-object v2, v0

    :cond_6
    const-string v3, "redirectTo"

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/integration/structure/App;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move-object v0, v2

    :goto_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v1

    :goto_6
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    :cond_b
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/structure/App;->redirectTo(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method
