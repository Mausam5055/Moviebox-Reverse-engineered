.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnPageReadyEventSubscriber"
.end annotation


# instance fields
.field private final context:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->context:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getContext()Lcom/cloud/tmc/miniapp/ui/MiniFragment;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->context:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    return-object v0
.end method

.method public final getContextWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->injectScreenFullJS(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getNavigationBarCustomIconStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$setNavigationBarDefaultStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Z)V

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$updateTitleBarStyle(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "MiniFragment"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    const/4 p1, 0x1

    return p1
.end method
