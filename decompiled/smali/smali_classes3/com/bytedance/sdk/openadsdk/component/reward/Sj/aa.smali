.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

.field protected Sj:I

.field private TKC:Z

.field private final sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->TKC:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->TKC()V

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj()F

    move-result v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj:I

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1000080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    if-eq v0, v2, :cond_2

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    const-string v0, "TTAD.RFSM"

    const-string v1, "init: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private EjP()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EZ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Landroid/app/Activity;I)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Landroid/app/Activity;I)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Landroid/app/Activity;I)V

    return-void
.end method

.method private HiB()F
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->aa(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method private static Sj(Landroid/app/Activity;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    const/16 v0, 0x1a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    const/4 v1, 0x2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    return-void
.end method

.method private sP(I)[F
    .locals 7

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->vS()F

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->HiB()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eq v5, v6, :cond_2

    add-float/2addr v0, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    :cond_2
    if-ne v2, v4, :cond_3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    goto :goto_2

    :cond_3
    int-to-float p1, p1

    sub-float/2addr v1, p1

    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v1, p1, v3

    aput v0, p1, v4

    return-object p1
.end method

.method private vS()F
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Ym(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/utils/LqL;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Sj(Z)V
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP()V

    :catchall_0
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->HiB()F

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->vS()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj()F

    move-result v4

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    if-eq v5, v3, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    float-to-int v1, v2

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->IOh:I

    float-to-int v0, v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->pfr:I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/16 v8, 0x14

    const/4 v9, 0x0

    if-eq v4, v3, :cond_6

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    cmpl-float v3, p1, v9

    if-eqz v3, :cond_7

    cmpl-float v3, p1, v6

    if-eqz v3, :cond_7

    sub-float v3, v2, v7

    sub-float/2addr v3, v7

    div-float/2addr v3, p1

    sub-float p1, v0, v3

    div-float/2addr p1, v5

    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v3, p1

    move v4, v3

    move p1, v8

    goto :goto_3

    :cond_6
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    cmpl-float v3, p1, v9

    if-eqz v3, :cond_7

    cmpl-float v3, p1, v6

    if-eqz v3, :cond_7

    sub-float v3, v0, v7

    sub-float/2addr v3, v7

    mul-float/2addr v3, p1

    sub-float p1, v2, v3

    div-float/2addr p1, v5

    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    move v3, v8

    move v4, v3

    move v8, p1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    move p1, v8

    move v3, p1

    move v4, v3

    :goto_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    int-to-float v6, v8

    sub-float/2addr v2, v6

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->IOh:I

    int-to-float v2, v3

    sub-float/2addr v0, v2

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->pfr:I

    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    if-lez v0, :cond_8

    return-void

    :cond_8
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public Sj(I)[F
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v5

    const/high16 v8, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    aput v5, v1, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v5, v3

    int-to-float v3, v5

    aput v3, v1, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    mul-int/2addr v8, v0

    sub-int/2addr v5, v8

    int-to-float v5, v5

    aput v5, v1, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int/2addr v5, v3

    int-to-float v3, v5

    aput v3, v1, v6

    :goto_0
    aget v3, v1, v7

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v7

    aget v3, v1, v6

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v6

    aget v5, v1, v7

    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_1

    cmpg-float v3, v3, v8

    if-gez v3, :cond_2

    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj:I

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP(I)[F

    move-result-object v1

    :cond_2
    const/16 v3, 0x1a

    if-eq v4, v3, :cond_6

    const/16 v3, 0x1b

    if-ne v4, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    if-eq v2, p1, :cond_6

    if-ne p1, v0, :cond_5

    aget p1, v1, v7

    aget v0, v1, v6

    cmpg-float v2, p1, v0

    if-gez v2, :cond_6

    aput p1, v1, v6

    aput v0, v1, v7

    goto :goto_2

    :cond_5
    aget p1, v1, v7

    aget v0, v1, v6

    cmpl-float v2, p1, v0

    if-lez v2, :cond_6

    aput p1, v1, v6

    aput v0, v1, v7

    :cond_6
    :goto_2
    return-object v1
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

    :cond_0
    return-void
.end method

.method public sP(Lcom/bytedance/sdk/component/utils/LqL;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->TKC:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->WMZ()I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->TKC:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

    if-nez v2, :cond_4

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;ZZ)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->TKC:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
