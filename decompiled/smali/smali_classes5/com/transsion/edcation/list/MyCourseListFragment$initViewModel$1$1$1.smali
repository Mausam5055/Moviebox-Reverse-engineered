.class final Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "Lcom/transsion/edcation/bean/CourseBean;",
        ">;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/transsion/edcation/bean/CourseBean;"
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
    c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1$1"
    f = "MyCourseListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$repeatOnLifecycle:Lkotlinx/coroutines/n0;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/list/MyCourseListFragment;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n0;Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lcom/transsion/edcation/list/MyCourseListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->$$this$repeatOnLifecycle:Lkotlinx/coroutines/n0;

    iput-object p2, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;

    iget-object v1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->$$this$repeatOnLifecycle:Lkotlinx/coroutines/n0;

    iget-object v2, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;-><init>(Lkotlinx/coroutines/n0;Lcom/transsion/edcation/list/MyCourseListFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/edcation/bean/CourseBean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->$$this$repeatOnLifecycle:Lkotlinx/coroutines/n0;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/edcation/list/MyCourseListFragment$initViewModel$1$1$1;->this$0:Lcom/transsion/edcation/list/MyCourseListFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
