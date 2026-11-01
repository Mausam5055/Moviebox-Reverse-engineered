.class final Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.edcation.history.EducationHistoryFragment$onResume$1$1"
    f = "EducationHistoryFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/history/EducationHistoryFragment;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    iput-object p2, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;

    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    iget-object v1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->h0(Lcom/transsion/edcation/history/EducationHistoryFragment;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    invoke-static {v0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->e0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    invoke-static {v0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->g0(Lcom/transsion/edcation/history/EducationHistoryFragment;)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
