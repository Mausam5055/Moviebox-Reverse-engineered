.class public abstract Lcom/cloud/hisavana/sdk/common/tranmeasure/h;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/graphics/Rect;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->a:Landroid/graphics/Rect;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->b:Ljava/lang/String;

    return-void
.end method

.method protected static b(Lcom/cloud/hisavana/sdk/d5;)Lcom/cloud/hisavana/sdk/common/tranmeasure/h;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/cloud/hisavana/sdk/d5;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    new-instance p0, Lcom/cloud/hisavana/sdk/h5;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/h5;-><init>()V

    return-object p0

    :cond_1
    iget p0, p0, Lcom/cloud/hisavana/sdk/d5;->b:I

    if-lez p0, :cond_2

    new-instance p0, Lcom/cloud/hisavana/sdk/i5;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/i5;-><init>()V

    return-object p0

    :cond_2
    return-object v0
.end method

.method private c(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ssp"

    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private e(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Lcom/cloud/hisavana/sdk/d5;Landroid/view/View;)I
    .locals 2

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->e(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->d(Lcom/cloud/hisavana/sdk/d5;Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/h;->c(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method protected abstract d(Lcom/cloud/hisavana/sdk/d5;Landroid/view/View;)I
.end method
