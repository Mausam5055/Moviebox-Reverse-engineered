.class final Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.ui.MiniFragment$CreateMiniAppFail$onEvent$1"
    f = "MiniFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

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

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    invoke-direct {p1, v0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->getContextWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/action/StatusAction;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/action/StatusAction;

    :cond_1
    move-object v1, v0

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->access$getViewThemeMode(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error_normal_mode:I

    :goto_1
    move v2, p1

    goto :goto_3

    :cond_3
    :goto_2
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error:I

    goto :goto_1

    :goto_3
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_went_wrong:I

    sget v4, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_cant_open_now:I

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
