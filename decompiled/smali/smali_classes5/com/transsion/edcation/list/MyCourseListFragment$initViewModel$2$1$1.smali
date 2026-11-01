.class final Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/transsion/moviedetailapi/bean/Pager;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1$1"
    f = "MyCourseListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/list/MyCourseListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/list/MyCourseListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

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

    new-instance v0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;

    iget-object v1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-direct {v0, v1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;-><init>(Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/transsion/moviedetailapi/bean/Pager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Pager;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->invoke(Lcom/transsion/moviedetailapi/bean/Pager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Pager;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "1"

    :cond_0
    invoke-static {v1, p1}, Lcom/transsion/edcation/list/MyCourseListFragment;->P0(Lcom/transsion/edcation/list/MyCourseListFragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseListFragment;->B0()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {v1, v0, v3, p1}, Lcom/transsion/baseui/fragment/BaseListFragment;->D0(Lcom/transsion/baseui/fragment/BaseListFragment;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseListFragment;->A0()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$2$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-virtual {p1, v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->I0(Z)V

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
