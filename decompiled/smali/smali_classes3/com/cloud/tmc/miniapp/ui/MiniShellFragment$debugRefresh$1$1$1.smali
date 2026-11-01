.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->debugRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getRenderId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    instance-of v0, p1, Lcom/cloud/tmc/render/system/ShellWebView;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/render/system/ShellWebView;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/ShellWebView;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->registerMessageChannel()V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    const-string v0, "renderOnMessageReady"

    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    const/4 v3, 0x1

    :cond_5
    return v3
.end method
