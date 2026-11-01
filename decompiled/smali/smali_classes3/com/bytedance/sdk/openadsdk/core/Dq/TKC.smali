.class public Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$sP;,
        Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;,
        Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;
    }
.end annotation


# instance fields
.field private Dq:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private EjP:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private Jcg:I

.field Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

.field private final sP:Landroid/content/Context;

.field private uA:I

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Jcg:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->uA:I

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IILjava/lang/String;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Jcg:I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Sj(II)Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;

    move-result-object v0

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;->Sj:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->uA:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Jcg:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    int-to-float p1, p1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;->sP:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Jcg:I

    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->vS:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Jcg:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Jcg:I

    :cond_2
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    return-object p0
.end method

.method private TKC()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Dq:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Dq:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Dq:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;)Lcom/bytedance/sdk/component/adexpress/sP/Zq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$sP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Dq:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    if-eqz v0, :cond_3

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->a_(I)V

    :cond_3
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Zq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/uP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/uP;)V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->EjP()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->TKC()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-void
.end method
