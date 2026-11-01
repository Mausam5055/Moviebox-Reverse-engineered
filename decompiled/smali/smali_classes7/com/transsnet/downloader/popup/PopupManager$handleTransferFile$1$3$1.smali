.class final Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.popup.PopupManager$handleTransferFile$1$3$1"
    f = "PopupManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $checkTransferFailed:Z

.field final synthetic $info:Lmy/b;

.field final synthetic $loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/popup/PopupManager;",
            "Lmy/b;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lmy/b;

    iput-object p3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iput-boolean p5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$checkTransferFailed:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v2, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lmy/b;

    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    iget-boolean v5, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$checkTransferFailed:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;-><init>(Lcom/transsnet/downloader/popup/PopupManager;Lmy/b;Lkotlin/jvm/functions/Function2;Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {p1}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lmy/b;

    invoke-virtual {v0}, Lmy/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    invoke-static {p1}, Lcom/transsnet/downloader/popup/PopupManager;->l(Lcom/transsnet/downloader/popup/PopupManager;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lmy/b;

    invoke-virtual {v0}, Lmy/b;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$resultCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$info:Lmy/b;

    invoke-virtual {v1}, Lmy/b;->e()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$loadingDialog:Lcom/transsnet/downloader/dialog/DownloadReDetectorSaveDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    sget-object p1, Luh/b;->a:Luh/b$a;

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->this$0:Lcom/transsnet/downloader/popup/PopupManager;

    iget-boolean v1, p0, Lcom/transsnet/downloader/popup/PopupManager$handleTransferFile$1$3$1;->$checkTransferFailed:Z

    invoke-static {v0, v1}, Lcom/transsnet/downloader/popup/PopupManager;->m(Lcom/transsnet/downloader/popup/PopupManager;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
