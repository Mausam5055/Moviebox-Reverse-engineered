.class Lcom/bytedance/sdk/component/adexpress/vS/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/vS/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/Sj;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/Sj;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
