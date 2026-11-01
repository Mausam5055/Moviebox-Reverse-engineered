.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

.field private HiB:I

.field private Sj:F

.field private TKC:Z

.field private sP:F


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->HiB:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->sP:F

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->Sj:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->TKC:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->TKC:Z

    const/4 p2, 0x0

    if-nez p1, :cond_2

    return p2

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->sP:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->Sj:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->sP(Landroid/content/Context;F)I

    move-result p1

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->sP:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->Sj:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->HiB:I

    if-le p1, v1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    iput v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->Sj:F

    iput v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->sP:F

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->TKC:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/HiB;->Sj:F

    :cond_4
    :goto_0
    return v0
.end method
