.class public final synthetic Lcom/transsion/rewardscenter/task/ad/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/f0;->a:Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/f0;->a:Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;->i(Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
