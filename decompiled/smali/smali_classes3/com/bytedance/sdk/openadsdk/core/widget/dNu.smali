.class public Lcom/bytedance/sdk/openadsdk/core/widget/dNu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;
    }
.end annotation


# instance fields
.field private Dq:Z

.field private EjP:F

.field private HiB:F

.field private Jcg:I

.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;

.field private final TEQ:Landroid/view/View$OnTouchListener;

.field private TKC:Z

.field private Ym:Z

.field private final sP:Z

.field private uA:Z

.field private vS:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->sP:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->TKC:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Dq:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->uA:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/dNu$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->TEQ:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Jcg:I

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Dq:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->EjP:F

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->vS:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;)Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/dNu$Sj;

    return-object p0
.end method

.method private Sj(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v0, v0

    const v4, 0x3c23d70a    # 0.01f

    mul-float v5, v0, v4

    cmpg-float v5, v3, v5

    if-lez v5, :cond_1

    const v5, 0x3f7d70a4    # 0.99f

    mul-float/2addr v0, v5

    cmpl-float v0, v3, v0

    if-gez v0, :cond_1

    int-to-float v0, v2

    mul-float/2addr v4, v0

    cmpg-float v2, p1, v4

    if-lez v2, :cond_1

    mul-float/2addr v0, v5

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Sj(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Ym:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->vS:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->uA:Z

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->HiB:F

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Jcg:I

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->TKC:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/widget/dNu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->Dq:Z

    return p1
.end method


# virtual methods
.method public Sj(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->TEQ:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dNu;->TKC:Z

    return-void
.end method
