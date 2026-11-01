.class public final Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SecondFloorHelper;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/SecondFloorHelper;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->v(Lcom/transsion/subroom/activity/SecondFloorHelper;Landroid/animation/AnimatorSet;)V

    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    invoke-static {p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->p(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1$onAnimationEnd$1;

    iget-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    invoke-direct {v4, v2, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1$onAnimationEnd$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->w(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V

    return-void
.end method
