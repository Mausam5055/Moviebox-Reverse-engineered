.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private Dq:Z

.field private EjP:F

.field private HiB:Z

.field private Jcg:F

.field private Sj:F

.field private TEQ:I

.field private TKC:F

.field private Ym:Z

.field private sP:F

.field private uA:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

.field private vS:F


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->HiB:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->uA:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->TEQ:I

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Ym:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Jcg:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->vS:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Dq:Z

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->EjP:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->TKC:F

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->EjP:F

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Sj:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->TKC:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->sP:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->HiB:Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Dq:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->HiB:Z

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Ym:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->uA:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Jcg:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->vS:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->sP(Landroid/content/Context;F)I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Jcg:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->vS:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-gez p2, :cond_6

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->TEQ:I

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->uA:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    goto :goto_0

    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->HiB:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->uA:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->Sj:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->sP:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->vS:F

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/EjP;->HiB:Z

    :cond_8
    :goto_0
    return v0
.end method
