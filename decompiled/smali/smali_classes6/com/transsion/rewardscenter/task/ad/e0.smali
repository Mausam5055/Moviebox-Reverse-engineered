.class public final synthetic Lcom/transsion/rewardscenter/task/ad/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/e0;->a:Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/e0;->a:Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;

    invoke-static {v0}, Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;->h(Lcom/transsion/rewardscenter/task/ad/StageTaskProgressLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
