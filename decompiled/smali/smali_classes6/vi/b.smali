.class public final synthetic Lvi/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/view/ShimmerTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/view/ShimmerTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvi/b;->a:Lcom/transsion/ad/view/ShimmerTextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lvi/b;->a:Lcom/transsion/ad/view/ShimmerTextView;

    invoke-static {v0, p1}, Lcom/transsion/ad/view/ShimmerTextView;->b(Lcom/transsion/ad/view/ShimmerTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
