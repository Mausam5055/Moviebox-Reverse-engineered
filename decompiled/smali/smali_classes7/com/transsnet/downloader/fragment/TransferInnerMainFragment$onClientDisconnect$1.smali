.class final Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onClientDisconnect$1"
    f = "TransferInnerMainFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;-><init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->P0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Lcom/transsion/transfer/impl/e;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/transfer/impl/e;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->N0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-static {v2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->O0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TransferMainFragment \u5ba2\u6237\u7aef ,onSocketLost, \u65ad\u5f00\u8fde\u63a5\uff0c serverInfo:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Transfer_d"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lpy/l0;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v1, :cond_3

    const-string v2, "status_default"

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->changeStatus(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lpy/l0;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v1, :cond_4

    const-string v2, "icon_status_close"

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->setLeftIconStatus(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lpy/l0;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v1, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v1, :cond_5

    const-string v3, "SEND_STATUS_NONE"

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v0}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->setSendIconStatus$default(Lcom/transsnet/downloader/widget/TransferBottomToolsView;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/l0;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->showConnectUI(Z)V

    :cond_6
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onClientDisconnect$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/l0;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2, p1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->showConnectContent(ZLjava/lang/String;)V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
