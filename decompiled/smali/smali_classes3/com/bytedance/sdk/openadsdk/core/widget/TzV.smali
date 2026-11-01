.class public Lcom/bytedance/sdk/openadsdk/core/widget/TzV;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;
    }
.end annotation


# instance fields
.field private Dq:Landroid/view/ViewGroup;

.field private EjP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;

.field private Jcg:Ly5/b;

.field private Sj:Landroid/view/View;

.field private TKC:Landroid/content/Context;

.field private sP:Landroid/widget/TextView;

.field private vS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->vS:Z

    return-void
.end method

.method private EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private Sj(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private Sj(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Dq:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/sef/Zq;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/sef/Zq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Dq:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->DhB:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->sP:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->DKa:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC()V

    return-void
.end method

.method private Sj(Ly5/b;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;->Ym()V

    :cond_2
    invoke-virtual {p1}, Ly5/b;->g()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-string p1, "tt_video_without_wifi_tips"

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    const-string v1, "tt_video_bytesize"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->sP:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->EjP(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_4
    :goto_1
    return-void
.end method

.method private Sj(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->vS:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;->TEQ()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    invoke-interface {p1, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->HiB(Lu5/c;Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;

    invoke-interface {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Jcg:Ly5/b;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Ly5/b;Z)V

    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method

.method private TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/TzV;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    return-object p0
.end method

.method private sP()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Jcg:Ly5/b;

    return-void
.end method


# virtual methods
.method public Sj(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p1, :cond_0

    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Dq:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/TzV$sP;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->sP()V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->EjP()V

    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj(ILy5/b;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->TKC:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Dq:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Jcg:Ly5/b;

    if-eq p1, v1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
