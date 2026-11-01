.class public final Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/rewardscenter/task/ad/BaseStageTaskAdHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lwp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwp/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->C(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    invoke-static {p1}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lwp/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lwp/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->V0()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lwp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwp/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->V0()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView$a;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->access$getCtxConfig$p(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)Lwp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwp/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->showLoading()V

    :cond_0
    return-void
.end method
