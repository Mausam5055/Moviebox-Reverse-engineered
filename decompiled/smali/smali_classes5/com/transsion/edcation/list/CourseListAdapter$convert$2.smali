.class final Lcom/transsion/edcation/list/CourseListAdapter$convert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/list/CourseListAdapter;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V
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
    c = "com.transsion.edcation.list.CourseListAdapter$convert$2"
    f = "CourseListAdapter.kt"
    l = {
        0x2d,
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/transsion/edcation/bean/CourseBean;

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/list/CourseListAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/list/CourseListAdapter;",
            "Lcom/transsion/edcation/bean/CourseBean;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/list/CourseListAdapter$convert$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    iput-object p2, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    iput-object p3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;

    iget-object v0, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    iget-object v1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    iget-object v2, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;-><init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->label:I

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    invoke-static {p1}, Lcom/transsion/edcation/list/CourseListAdapter;->D1(Lcom/transsion/edcation/list/CourseListAdapter;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    iput v1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->label:I

    invoke-interface {p1, v3, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_5
    const-wide/16 v5, 0x0

    :goto_1
    iget-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    if-lez p1, :cond_7

    long-to-float v3, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v3, v5

    int-to-float p1, p1

    div-float/2addr v3, p1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {v3, p1}, Lkotlin/ranges/RangesKt;->h(FF)F

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.0f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v1, Lcom/transsion/edcation/list/CourseListAdapter$convert$2$1;

    iget-object v3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v5, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, p1, v6}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2$1;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/list/CourseListAdapter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->label:I

    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    return-object v2

    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
