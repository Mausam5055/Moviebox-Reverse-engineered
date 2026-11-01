.class Lcom/bytedance/sdk/component/adexpress/vS/zR$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/zR;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/zR;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP(Lcom/bytedance/sdk/component/adexpress/vS/zR;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP(Lcom/bytedance/sdk/component/adexpress/vS/zR;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/zR$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP(Lcom/bytedance/sdk/component/adexpress/vS/zR;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
