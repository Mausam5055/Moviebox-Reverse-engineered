.class public final Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tJ\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "tmcFragment",
        "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
        "(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V",
        "lastKeyboardHeight",
        "",
        "onKeyboardListeners",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;",
        "Lkotlin/collections/ArrayList;",
        "view",
        "Landroid/view/View;",
        "addOnKeyboardListener",
        "",
        "listener",
        "onGlobalLayout",
        "release",
        "removeOnKeyboardListener",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;

.field private static final TAG:Ljava/lang/String; = "RootViewGlobalLayoutLis"


# instance fields
.field private lastKeyboardHeight:I

.field private final onKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->Companion:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 1

    const-string v0, "tmcFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->lastKeyboardHeight:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->lastKeyboardHeight:I

    iget-object v2, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

    invoke-interface {v3, v1, v0}, Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;->onKeyBoardChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RootViewGlobalLayoutLis"

    const-string v2, "Failed to adjust TabBarView"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->view:Landroid/view/View;

    return-void
.end method

.method public final removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->onKeyboardListeners:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
