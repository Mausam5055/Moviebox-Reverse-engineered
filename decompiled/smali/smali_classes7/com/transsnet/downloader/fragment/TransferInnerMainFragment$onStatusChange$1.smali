.class final Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->N(II)V
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
    c = "com.transsnet.downloader.fragment.TransferInnerMainFragment$onStatusChange$1"
    f = "TransferInnerMainFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $failCount:I

.field final synthetic $transmittingCount:I

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    iput p2, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->$transmittingCount:I

    iput p3, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->$failCount:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->d(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V

    return-void
.end method

.method private static final d(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/l0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v0, :cond_0

    const-string v1, "status_send"

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->changeStatus(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/l0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz v0, :cond_1

    const-string v1, "icon_status_send"

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->setLeftIconStatus(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->O0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ====== onStatusChange ,\u8fde\u63a5\u6210\u529fonTaskStateChange, transmittingCount\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",failCount:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "Transfer_d"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->U0(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->$transmittingCount:I

    iget v2, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->$failCount:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;-><init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;IILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lpy/l0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lpy/l0;->d:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->this$0:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    iget v1, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->$transmittingCount:I

    iget v2, p0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$onStatusChange$1;->$failCount:I

    new-instance v3, Lcom/transsnet/downloader/fragment/j7;

    invoke-direct {v3, v0, v1, v2}, Lcom/transsnet/downloader/fragment/j7;-><init>(Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
