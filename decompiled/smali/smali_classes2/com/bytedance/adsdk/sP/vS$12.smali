.class Lcom/bytedance/adsdk/sP/vS$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->Sj([[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    iput p2, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result p1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result p1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--==--- inel enter, play anim end, endframe: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", realFrame: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    :cond_0
    return-void
.end method
