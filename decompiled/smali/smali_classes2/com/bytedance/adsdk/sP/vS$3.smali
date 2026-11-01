.class Lcom/bytedance/adsdk/sP/vS$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->sef()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/adsdk/sP/vS;

.field final synthetic Sj:I

.field final synthetic TKC:I

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;III)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    iput p2, p0, Lcom/bytedance/adsdk/sP/vS$3;->Sj:I

    iput p3, p0, Lcom/bytedance/adsdk/sP/vS$3;->sP:I

    iput p4, p0, Lcom/bytedance/adsdk/sP/vS$3;->TKC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result p1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$3;->Sj:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result p1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$3;->Sj:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--==--- enter timer point, frame: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->sP:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->TKC:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->Zq(Lcom/bytedance/adsdk/sP/vS;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    :cond_1
    return-void
.end method
