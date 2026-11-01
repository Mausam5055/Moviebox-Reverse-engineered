.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static TKC:I = 0xa


# instance fields
.field private final Dq:I

.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

.field private HiB:I

.field private Jcg:J

.field private Sj:F

.field private TEQ:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private sP:F

.field private final uA:I

.field private vS:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;ILandroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->TKC:I

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->HiB:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->vS:Landroid/graphics/RectF;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Jcg:J

    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Dq:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->uA:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->TEQ:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-lez p2, :cond_0

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->HiB:I

    :cond_0
    if-eqz p3, :cond_1

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;

    invoke-direct {p1, p0, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;Landroid/view/ViewGroup;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private Sj(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v3, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-direct {v1, v3, v5, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->TEQ:Ljava/lang/ref/SoftReference;

    return-object p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->vS:Landroid/graphics/RectF;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Sj:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->sP:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Sj:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->sP:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->HiB:I

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Jcg:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    cmpg-float p1, p2, v1

    if-gez p1, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;->Sj()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->TEQ:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Sj(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->vS:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Sj:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->sP:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Sj;->Jcg:J

    :cond_6
    :goto_1
    return v0
.end method
