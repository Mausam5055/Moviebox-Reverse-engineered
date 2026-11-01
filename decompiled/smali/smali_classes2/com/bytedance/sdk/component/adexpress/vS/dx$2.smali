.class Lcom/bytedance/sdk/component/adexpress/vS/dx$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/dx;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/dx;->EjP(Lcom/bytedance/sdk/component/adexpress/vS/dx;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/dx;->EjP(Lcom/bytedance/sdk/component/adexpress/vS/dx;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
