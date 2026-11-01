.class final Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;->l1()V
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
    c = "com.transsion.commercialization.task.DownloadInterceptDialog$onAdRewarded$1"
    f = "DownloadInterceptDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/task/DownloadInterceptDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;

    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-direct {v0, v1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->Q0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;Z)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->O0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;I)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->C0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->w0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptDialog$onAdRewarded$1;->this$0:Lcom/transsion/commercialization/task/DownloadInterceptDialog;

    invoke-static {p1}, Lcom/transsion/commercialization/task/DownloadInterceptDialog;->T0(Lcom/transsion/commercialization/task/DownloadInterceptDialog;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
