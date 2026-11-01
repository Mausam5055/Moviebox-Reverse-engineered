.class final Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->showResolutionTip(ZLgo/a;Ljava/lang/String;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Ljava/lang/Integer;)V
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
    c = "com.transsion.player.longvideo.member.LongVodResolutionMemberTipView$showResolutionTip$1"
    f = "LongVodResolutionMemberTipView.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $curBean:Lgo/a;

.field final synthetic $hasAtLeast720P:Z

.field final synthetic $target:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;


# direct methods
.method constructor <init>(Lgo/a;Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;ZLjava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgo/a;",
            "Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;",
            "Z",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lgo/a;

    iput-object p2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    iput-boolean p3, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$hasAtLeast720P:Z

    iput-object p4, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$target:Ljava/lang/Integer;

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

    new-instance p1, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lgo/a;

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    iget-boolean v3, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$hasAtLeast720P:Z

    iget-object v4, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$target:Ljava/lang/Integer;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;-><init>(Lgo/a;Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;ZLjava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->label:I

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

    sget-object p1, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lgo/a;

    iput v2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->f(Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lok/c;->a:Lok/c;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> showResolutionTip() --> \u5df2\u51fa\u73b0\u8fc7\uff0c\u4e0d\u663e\u793a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lok/c;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    const-class p1, Lcom/transsion/memberapi/IMemberApi;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/transsion/memberapi/IMemberApi;->c()Z

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    if-nez p1, :cond_5

    iget-boolean v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$hasAtLeast720P:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$curBean:Lgo/a;

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$setCurBean$p(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;Lgo/a;)V

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/strategy/r;->g(Lcom/transsion/ad/strategy/r$a;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$startTimer(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)V

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->this$0:Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberTipView$showResolutionTip$1;->$target:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showResolutionTip() --> isMember = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " --> \u53f3\u4e0b\u89d2\u63d0\u793a --> target = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lok/c;->a(Ljava/lang/String;)V

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
