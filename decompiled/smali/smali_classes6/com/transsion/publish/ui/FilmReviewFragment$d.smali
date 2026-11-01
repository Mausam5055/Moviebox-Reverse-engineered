.class public final Lcom/transsion/publish/ui/FilmReviewFragment$d;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/FilmReviewFragment;->showActivityTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/FilmReviewFragment;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 4

    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$d;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$d;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lhp/h;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
