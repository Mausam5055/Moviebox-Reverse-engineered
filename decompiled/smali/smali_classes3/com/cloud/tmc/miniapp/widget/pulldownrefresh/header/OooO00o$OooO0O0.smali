.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:B

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO00o:B

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-byte v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO00o:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oo:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p1, v2

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO0:I

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOo:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOoo:F

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo00:I

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
