.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;->Sj()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$1;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$1;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$1;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$Sj;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$1;->Sj:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/Sj/TEQ$Sj;->Sj(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method
