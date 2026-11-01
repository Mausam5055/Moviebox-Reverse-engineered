.class public Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;
.super Landroid/view/View;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o$OooO00o;
    }
.end annotation


# instance fields
.field public OooO:F

.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:F

.field public OooO0Oo:F

.field public OooO0o:Ljava/lang/String;

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:I

.field public OooOO0:F

.field public OooOO0O:I

.field public OooOO0o:Landroid/graphics/RectF;

.field public OooOOO:Landroid/graphics/Path;

.field public OooOOO0:Landroid/graphics/RectF;

.field public OooOOOO:Landroid/graphics/Paint$FontMetrics;

.field public OooOOOo:Landroid/graphics/PointF;

.field public OooOOo:Landroid/graphics/PointF;

.field public OooOOo0:Landroid/graphics/PointF;

.field public OooOOoo:Landroid/graphics/PointF;

.field public OooOo:Landroid/text/TextPaint;

.field public OooOo0:Landroid/view/View;

.field public OooOo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public OooOo0O:I

.field public OooOo0o:I

.field public OooOoO:Landroid/graphics/Paint;

.field public OooOoO0:Landroid/graphics/Paint;

.field public OooOoOO:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0;

.field public OooOoo0:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o()V

    return-void
.end method

.method private getBadgeCircleRadius()F
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    return v0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    :goto_0
    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    goto :goto_0

    :goto_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public OooO00o(I)Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;
    .locals 1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o0:I

    if-gez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    const-string p1, "99+"

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    if-gt p1, v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public OooO00o(Landroid/view/View;)Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0:Landroid/view/View;

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o$OooO00o;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o$OooO00o;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o$OooO00o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;Landroid/content/Context;)V

    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    :cond_2
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView must have a parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final OooO00o()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOo0:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOo:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOoo:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo00:Ljava/util/List;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, -0x17b1c0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0O0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o0:I

    const v0, 0x800035

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oo:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oO:Z

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public final OooO00o(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V
    .locals 6

    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p3, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    add-float/2addr v3, v0

    iput v3, p3, Landroid/graphics/RectF;->bottom:F

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    float-to-int v3, p3

    int-to-float v3, v3

    sub-float v4, v2, v3

    iput v4, v0, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v5, v4, v3

    iput v5, v0, Landroid/graphics/RectF;->top:F

    add-float v5, v2, v3

    iput v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO0:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOO0:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOO:Landroid/graphics/Paint$FontMetrics;

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    div-float/2addr v2, v1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public final OooO00o(Z)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0O:I

    const/4 v5, 0x1

    const/high16 v6, -0x40400000    # -1.5f

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result v2

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO0:Landroid/graphics/Paint;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    int-to-float v0, v0

    int-to-float v2, v2

    const/high16 v3, 0x33000000

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final OooO0O0()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOo:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final OooO0O0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0O0(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoo0:Landroid/view/ViewGroup;

    :cond_1
    :goto_0
    return-void
.end method

.method public final OooO0OO()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOO:Landroid/graphics/Paint$FontMetrics;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public getBadgeBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o:I

    return v0
.end method

.method public getBadgeGravity()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oo:I

    return v0
.end method

.method public getBadgeNumber()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o0:I

    return v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0O0:I

    return v0
.end method

.method public getDragCenter()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0:Landroid/view/View;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoo0:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoo0:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0O0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoOO:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoOO:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0;

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0;->OooO00o:[[Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0;->OooO00o:[[Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget-object v6, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0oO:Landroid/graphics/Paint;

    iget v7, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0o0:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0O0:F

    iget-object v7, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO00o:Ljava/util/Random;

    iget v8, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0o:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    iget-object v9, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO00o:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    mul-float/2addr v9, v7

    add-float/2addr v9, v6

    iput v9, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0O0:F

    iget v6, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0OO:F

    iget-object v7, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO00o:Ljava/util/Random;

    iget v9, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0o:I

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    iget-object v8, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO00o:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float/2addr v8, v10

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    iput v8, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0OO:F

    iget v6, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0O0:F

    iget v7, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0Oo:F

    mul-float/2addr v5, v7

    sub-float/2addr v7, v5

    iget-object v4, v4, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0O0$OooO00o;->OooO0oO:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oO:Z

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO0:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOoO:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0O0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->getBadgeCircleRadius()F

    move-result v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOo:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOo0:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_2
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oo:I

    const/high16 v3, 0x40000000    # 2.0f

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    int-to-float v4, v4

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v5, v6

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    int-to-float v1, v1

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    add-float/2addr v4, v6

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float/2addr v1, v5

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :sswitch_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v4, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    int-to-float v1, v1

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float/2addr v1, v5

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :sswitch_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    int-to-float v4, v4

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v5, v6

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    add-float/2addr v1, v6

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :sswitch_3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v4, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    add-float/2addr v1, v5

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :sswitch_4
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    int-to-float v4, v4

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v5, v6

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :sswitch_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v4, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :sswitch_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    int-to-float v2, v2

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :sswitch_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0o:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :sswitch_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0O0()V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOOOo:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v1, v0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_8
        0x31 -> :sswitch_7
        0x51 -> :sswitch_6
        0x800013 -> :sswitch_5
        0x800015 -> :sswitch_4
        0x800033 -> :sswitch_3
        0x800035 -> :sswitch_2
        0x800053 -> :sswitch_1
        0x800055 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0O:I

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOo0o:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
