.class Lcom/bytedance/sdk/component/adexpress/vS/dx$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/dx;->Sj()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$3;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$3;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/dx$3$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/adexpress/vS/dx$3$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/dx$3;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
