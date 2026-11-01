.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static TKC:I = 0xa


# instance fields
.field private EjP:Z

.field private HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

.field private Sj:F

.field private sP:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

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

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->EjP:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->Sj:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->TKC:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->sP:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->TKC:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_8

    :cond_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->EjP:Z

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->EjP:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->EjP:Z

    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->Sj:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->TKC:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->sP:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->TKC:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    goto :goto_1

    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->EjP:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->Sj:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/vS;->sP:F

    :cond_8
    :goto_1
    return v0
.end method
