.class Lcom/bytedance/adsdk/sP/vS$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--- timer callback, timer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->uvD(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->dNu(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->uvD(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->dNu(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->TzV(Lcom/bytedance/adsdk/sP/vS;)I

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->RiZ(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v2}, Lcom/bytedance/adsdk/sP/vS;->uvD(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/TKC;->Sj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->invalidate()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->Zq(Lcom/bytedance/adsdk/sP/vS;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--- timer end, play anim, startframe: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/vS;->setFrame(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    new-instance v1, Lcom/bytedance/adsdk/sP/vS$4$1;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/sP/vS$4$1;-><init>(Lcom/bytedance/adsdk/sP/vS$4;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/vS;->Sj(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==--- timer end, frame invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->sU(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v1}, Lcom/bytedance/adsdk/sP/vS;->dx(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->zR(Lcom/bytedance/adsdk/sP/vS;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->zR(Lcom/bytedance/adsdk/sP/vS;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$4;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->ib(Lcom/bytedance/adsdk/sP/vS;)Lorg/json/JSONArray;

    :cond_3
    return-void
.end method
