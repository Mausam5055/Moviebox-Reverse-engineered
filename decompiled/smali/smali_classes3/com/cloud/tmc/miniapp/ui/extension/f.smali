.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic d:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->c:Lcom/cloud/tmc/integration/structure/App;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->d:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->c:Lcom/cloud/tmc/integration/structure/App;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/f;->d:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->d(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    move-result p1

    return p1
.end method
