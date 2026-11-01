.class final Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->n(Landroidx/appcompat/app/AppCompatActivity;)V
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
    c = "com.transsion.wrapperad.install.ui.StreamerIconAdView$startCountDownIfNeeded$1"
    f = "StreamerIconAdView.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field label:I

.field final synthetic this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    iput-object p2, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

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

    new-instance p1, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    iget-object v1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;-><init>(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getCountDownSeconds(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput v2, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    invoke-static {p1}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$getClassTag(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> countDown finished --> \u5012\u8ba1\u65f6\u7ed3\u675f\uff0c\u81ea\u52a8\u5173\u95ed\u5e7f\u544a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "StreamerIcon"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->this$0:Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;

    iget-object v0, p0, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView$startCountDownIfNeeded$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1, v0, v2}, Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;->access$closeAd(Lcom/transsion/wrapperad/install/ui/StreamerIconAdView;Landroid/app/Activity;Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
