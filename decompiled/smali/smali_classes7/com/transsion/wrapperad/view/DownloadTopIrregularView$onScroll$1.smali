.class final Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->onScroll(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V
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
    c = "com.transsion.wrapperad.view.DownloadTopIrregularView$onScroll$1"
    f = "DownloadTopIrregularView.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic $mCurrentTopMargin:I

.field final synthetic $minTopMargin:I

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;


# direct methods
.method constructor <init>(IILcom/transsion/wrapperad/view/DownloadTopIrregularView;Landroid/view/ViewGroup$MarginLayoutParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/transsion/wrapperad/view/DownloadTopIrregularView;",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$mCurrentTopMargin:I

    iput p2, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$minTopMargin:I

    iput-object p3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    iput-object p4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;

    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$mCurrentTopMargin:I

    iget v2, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$minTopMargin:I

    iget-object v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    iget-object v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;-><init>(IILcom/transsion/wrapperad/view/DownloadTopIrregularView;Landroid/view/ViewGroup$MarginLayoutParams;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->I$2:I

    iget v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->I$1:I

    iget v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->I$0:I

    iget-object v5, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    iget-object v6, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$mCurrentTopMargin:I

    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$minTopMargin:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0xa

    iget-object v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    const/4 v5, 0x0

    move-object v6, v3

    move v3, p1

    move-object v9, v4

    move v4, v1

    move v1, v5

    move-object v5, v9

    :goto_0
    if-ge v1, v4, :cond_4

    mul-int/lit8 p1, v1, 0xa

    sub-int p1, v3, p1

    iput p1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput-object v6, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->I$0:I

    iput v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->I$1:I

    iput v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->I$2:I

    iput v2, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->label:I

    const-wide/16 v7, 0x4

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$getMGeminiViewGroup$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/2addr v1, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$getNativeWrapperAdView$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$1;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    invoke-static {p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$getCloseImg$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
