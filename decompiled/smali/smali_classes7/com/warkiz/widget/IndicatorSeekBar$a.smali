.class Lcom/warkiz/widget/IndicatorSeekBar$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warkiz/widget/IndicatorSeekBar;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:I

.field final synthetic c:Lcom/warkiz/widget/IndicatorSeekBar;


# direct methods
.method constructor <init>(Lcom/warkiz/widget/IndicatorSeekBar;FI)V
    .locals 0

    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->a:F

    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->b(Lcom/warkiz/widget/IndicatorSeekBar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->a(Lcom/warkiz/widget/IndicatorSeekBar;F)F

    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->a:F

    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {v1}, Lcom/warkiz/widget/IndicatorSeekBar;->d(Lcom/warkiz/widget/IndicatorSeekBar;)[F

    move-result-object v1

    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->b:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->a:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->c(Lcom/warkiz/widget/IndicatorSeekBar;F)F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->a:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->c(Lcom/warkiz/widget/IndicatorSeekBar;F)F

    :goto_0
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->b(Lcom/warkiz/widget/IndicatorSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->e(Lcom/warkiz/widget/IndicatorSeekBar;F)V

    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->f(Lcom/warkiz/widget/IndicatorSeekBar;Z)V

    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->g(Lcom/warkiz/widget/IndicatorSeekBar;)Lcom/warkiz/widget/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Lcom/warkiz/widget/IndicatorSeekBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->g(Lcom/warkiz/widget/IndicatorSeekBar;)Lcom/warkiz/widget/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warkiz/widget/d;->j()V

    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-static {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->i(Lcom/warkiz/widget/IndicatorSeekBar;)V

    :cond_1
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar$a;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
