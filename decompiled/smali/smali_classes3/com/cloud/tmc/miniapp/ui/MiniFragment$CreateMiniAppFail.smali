.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateMiniAppFail"
.end annotation


# instance fields
.field private final context:Landroidx/fragment/app/Fragment;

.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final page:Lcom/cloud/tmc/integration/structure/Page;

.field private final pageWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->context:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->page:Lcom/cloud/tmc/integration/structure/Page;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getViewThemeMode(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final getViewThemeMode()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/action/StatusAction;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/action/StatusAction;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final getContext()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->context:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getContextWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-object v0
.end method

.method public final getPageWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->pageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v1

    :goto_5
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/action/StatusAction;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/miniapp/action/StatusAction;

    :cond_7
    move-object v2, v1

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error_normal_mode:I

    :goto_6
    move v3, p1

    goto :goto_8

    :cond_9
    :goto_7
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error:I

    goto :goto_6

    :goto_8
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_went_wrong:I

    sget v5, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_cant_open_now:I

    const/16 v10, 0x70

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    goto :goto_9

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;

    invoke-direct {v5, p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_b
    :goto_9
    const/4 p1, 0x1

    return p1
.end method
