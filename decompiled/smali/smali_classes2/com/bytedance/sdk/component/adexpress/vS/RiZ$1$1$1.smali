.class Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;->sP:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/RiZ;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;

    iget-object v1, v1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ$1$1;->Sj:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
