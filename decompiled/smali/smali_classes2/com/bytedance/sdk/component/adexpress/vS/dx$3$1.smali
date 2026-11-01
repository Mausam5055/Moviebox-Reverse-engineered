.class Lcom/bytedance/sdk/component/adexpress/vS/dx$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/dx$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/dx$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$3$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/dx$3$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx$3;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/vS/dx$3;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/dx;->HiB(Lcom/bytedance/sdk/component/adexpress/vS/dx;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
