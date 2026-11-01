.class Lcom/bytedance/adsdk/sP/vS$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/vS$4;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS$4;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--==--- timer end, play anim, endframe: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4$1;->Sj:Lcom/bytedance/adsdk/sP/vS$4;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    :cond_0
    return-void
.end method
