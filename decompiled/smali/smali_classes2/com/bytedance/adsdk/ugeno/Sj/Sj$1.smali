.class Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/Sj/Sj;->TKC()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/View;

.field final synthetic TKC:Lcom/bytedance/adsdk/ugeno/Sj/Sj;

.field final synthetic sP:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/Sj/Sj;Landroid/view/View;Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->Sj:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->Sj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->Sj:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->Sj:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    iget-object v3, v3, Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;->Sj:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/bytedance/adsdk/ugeno/Sj/TKC;->Sj(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->Sj:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    iget-object v2, v2, Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;->sP:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/bytedance/adsdk/ugeno/Sj/TKC;->Sj(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
