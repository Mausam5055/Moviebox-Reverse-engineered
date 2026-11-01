.class Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Sj(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/widget/ImageView;

.field final synthetic sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->Sj:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->EjP(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->Sj:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->HiB(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->EjP(F)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->vS(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->vS(F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$2;->sP:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Jcg(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
