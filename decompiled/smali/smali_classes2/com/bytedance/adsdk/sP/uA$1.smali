.class Lcom/bytedance/adsdk/sP/uA$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/uA;->Sj(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/uA$1;->Sj:Lcom/bytedance/adsdk/sP/uA;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/uA;->sP(Lcom/bytedance/adsdk/sP/uA;)Lcom/bytedance/adsdk/sP/vS/TKC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->vS()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/sP;->Sj(F)V

    :cond_0
    return-void
.end method
