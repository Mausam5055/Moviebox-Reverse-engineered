.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;
.super Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->sP(Lcom/bytedance/sdk/component/utils/LqL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

.field Sj:Z

.field final synthetic TKC:Z

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->sP:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->TKC:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$1;)V

    return-void
.end method


# virtual methods
.method Sj(II)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->aa(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Ym(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v4

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj()F

    move-result p2

    :goto_1
    float-to-int p2, p2

    add-int/2addr p1, p2

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v4

    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    if-ne v4, p2, :cond_3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, p2, :cond_3

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->sP:Z

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr v1, p2

    :cond_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->TKC:Z

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj()F

    move-result p2

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->Sj:Z

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->Sj:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$2;->Sj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method
