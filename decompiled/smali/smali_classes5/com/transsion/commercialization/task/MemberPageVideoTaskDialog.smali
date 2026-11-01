.class public final Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;
.super Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0001\"\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J4\u0010\u0016\u001a\u00020\u00002%\u0008\u0002\u0010\u0015\u001a\u001f\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;",
        "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "onDestroy",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isOnRewarded",
        "callback",
        "t0",
        "(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "d",
        "Z",
        "mIsOnRewarded",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "e",
        "Lcom/transsion/ad/bidding/video/BiddingVideoManager;",
        "videoManager",
        "com/transsion/commercialization/task/MemberPageVideoTaskDialog$a",
        "f",
        "Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;",
        "videoListener",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Z

.field private e:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private final f:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    new-instance v0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;

    invoke-direct {v0, p0}, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;-><init>(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;)V

    iput-object v0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->f:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;

    return-void
.end method

.method public static final synthetic p0(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;)Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->f:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;

    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->e:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->d:Z

    return-void
.end method

.method public static final synthetic s0(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->e:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->e:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$onViewCreated$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$onViewCreated$1;-><init>(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
