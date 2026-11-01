.class public final synthetic Lcom/cloud/tmc/miniapp/widget/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/widget/TabBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/widget/TabBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/r;->a:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/r;->a:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/TabBarView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
