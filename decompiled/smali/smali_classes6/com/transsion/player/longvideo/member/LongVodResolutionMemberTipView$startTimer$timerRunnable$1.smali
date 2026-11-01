.class public final Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "LongVideo_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$isShowing$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getCurrentTimestep$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)J

    move-result-wide v1

    const/16 v3, 0x64

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$setCurrentTimestep$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;J)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getCurrentTimestep$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->destroy()V

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v6, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1$run$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-direct {v6, v0, v2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1$run$1;-><init>(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$startTimer$timerRunnable$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getHandler$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method
