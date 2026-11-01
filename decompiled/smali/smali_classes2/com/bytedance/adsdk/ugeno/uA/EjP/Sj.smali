.class public Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj/HiB;
.implements Lcom/bytedance/adsdk/ugeno/core/IAnimation;


# static fields
.field private static final EjP:[Landroid/widget/ImageView$ScaleType;

.field public static final Sj:Landroid/graphics/Shader$TileMode;

.field static final synthetic sP:Z = true


# instance fields
.field private Dq:F

.field private Fmk:Z

.field private final HiB:[F

.field private Jcg:Landroid/content/res/ColorStateList;

.field private RiZ:Landroid/graphics/Shader$TileMode;

.field private TEQ:Z

.field private TKC:F

.field private TzV:Landroid/graphics/Shader$TileMode;

.field private Ym:Landroid/graphics/drawable/Drawable;

.field private Zq:I

.field private aa:Z

.field private dNu:Landroid/widget/ImageView$ScaleType;

.field private dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

.field private sU:Lcom/bytedance/adsdk/ugeno/EjP;

.field private sef:Z

.field private uA:Landroid/graphics/ColorFilter;

.field private uvD:I

.field private vS:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->EjP:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->HiB:[F

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Jcg:Landroid/content/res/ColorStateList;

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Dq:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uA:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TEQ:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->aa:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Fmk:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sef:Z

    sget-object p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TzV:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->RiZ:Landroid/graphics/Shader$TileMode;

    new-instance p1, Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TEQ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->aa:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uA:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private Sj()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private Sj(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Dq:F

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(F)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Jcg:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/content/res/ColorStateList;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    move-result-object p2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Fmk:Z

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Z)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TzV:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/Shader$TileMode;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->RiZ:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->sP(Landroid/graphics/Shader$TileMode;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->HiB:[F

    if-eqz p2, :cond_1

    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(FFFF)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->EjP()V

    return-void

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private Sj(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sef:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dNu:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private sP()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uvD:I

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uvD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uvD:I

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Sj(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->HiB:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v4

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    :cond_0
    aput p1, v0, v1

    aput p2, v0, v5

    aput p3, v0, v3

    aput p4, v0, v4

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Jcg:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Jcg:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderRadius()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj()F

    move-result v0

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Dq:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->HiB:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getRipple()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC:F

    return v0
.end method

.method public getRubIn()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getRubIn()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dNu:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getShine()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getShine()F

    move-result v0

    return v0
.end method

.method public getStretch()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getStretch()F

    move-result v0

    return v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TzV:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->RiZ:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Jcg()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Dq()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ugeno/core/IAnimation;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iget-object p4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sU:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3, p3}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(IIII)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uvD:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uvD:I

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sP()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->vS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Jcg:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Jcg:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    iget p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Dq:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj(F)V

    :cond_0
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Dq:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Dq:F

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uA:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->uA:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->aa:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TEQ:Z

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->EjP()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/Bitmap;)Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/sP;->Sj(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Zq:I

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Ym:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Fmk:Z

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRipple(F)V
    .locals 1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->sP(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRubIn(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->HiB(F)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    sget-boolean v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->sP:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dNu:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_3

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dNu:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj$1;->Sj:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setShine(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->TKC(F)V

    :cond_0
    return-void
.end method

.method public setStretch(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->dx:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->EjP(F)V

    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TzV:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TzV:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->RiZ:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->RiZ:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->TKC()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
