.class final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.cloud.tmc.miniapp.ui.MiniH5Fragment$onResume$1$1"
    f = "MiniH5Fragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

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

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-direct {p1, v0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getContextView$p(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Landroid/view/View;

    move-result-object p1

    const-string v0, "contextView"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getContextView$p(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$onResume$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getMScrollY$p(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->scrollTo(II)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
