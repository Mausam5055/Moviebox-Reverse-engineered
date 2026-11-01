.class public final synthetic Lcom/transsion/photoview/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsion/photoview/n;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/photoview/n;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/photoview/l;->a:Lcom/transsion/photoview/n;

    iput-object p2, p0, Lcom/transsion/photoview/l;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/photoview/l;->a:Lcom/transsion/photoview/n;

    iget-object v1, p0, Lcom/transsion/photoview/l;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/transsion/photoview/n;->a(Lcom/transsion/photoview/n;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
