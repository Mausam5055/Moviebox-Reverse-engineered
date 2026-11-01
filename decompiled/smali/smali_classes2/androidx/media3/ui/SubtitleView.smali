.class public final Landroidx/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/SubtitleView$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field public static final VIEW_TYPE_CANVAS:I = 0x1

.field public static final VIEW_TYPE_WEB:I = 0x2


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroidx/media3/ui/b;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroidx/media3/ui/SubtitleView$a;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    sget-object p2, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->b:Landroidx/media3/ui/b;

    const/4 p2, 0x0

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->c:I

    const p2, 0x3d5a511a    # 0.0533f

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->d:F

    const p2, 0x3da3d70a    # 0.08f

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->e:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    new-instance v0, Landroidx/media3/ui/a;

    invoke-direct {v0, p1}, Landroidx/media3/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroidx/media3/ui/SubtitleView$a;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->h:I

    return-void
.end method

.method private a(Lu1/a;)Lu1/a;
    .locals 1

    invoke-virtual {p1}, Lu1/a;->a()Lu1/a$b;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/media3/ui/x0;->e(Lu1/a$b;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroidx/media3/ui/x0;->f(Lu1/a$b;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lu1/a$b;->a()Lu1/a;

    move-result-object p1

    return-object p1
.end method

.method private b(IF)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->c:I

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->d:F

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroidx/media3/ui/SubtitleView$a;

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->b:Landroidx/media3/ui/b;

    iget v3, p0, Landroidx/media3/ui/SubtitleView;->d:F

    iget v4, p0, Landroidx/media3/ui/SubtitleView;->c:I

    iget v5, p0, Landroidx/media3/ui/SubtitleView;->e:F

    invoke-interface/range {v0 .. v5}, Landroidx/media3/ui/SubtitleView$a;->a(Ljava/util/List;Landroidx/media3/ui/b;FIF)V

    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu1/a;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/a;

    invoke-direct {p0, v2}, Landroidx/media3/ui/SubtitleView;->a(Lu1/a;)Lu1/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "captioning"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    :cond_1
    return v1
.end method

.method private getUserCaptionStyle()Landroidx/media3/ui/b;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/ui/b;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media3/ui/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    :goto_0
    return-object v0
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/media3/ui/SubtitleView$a;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    instance-of v1, v0, Landroidx/media3/ui/b1;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/media3/ui/b1;

    invoke-virtual {v0}, Landroidx/media3/ui/b1;->g()V

    :cond_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Landroidx/media3/ui/SubtitleView$a;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroidx/media3/ui/SubtitleView$a;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->e:F

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu1/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    return-void
.end method

.method public setFixedTextSize(IF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Landroidx/media3/ui/SubtitleView;->b(IF)V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 0

    invoke-direct {p0, p2, p1}, Landroidx/media3/ui/SubtitleView;->b(IF)V

    return-void
.end method

.method public setStyle(Landroidx/media3/ui/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->b:Landroidx/media3/ui/b;

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    return-void
.end method

.method public setUserDefaultStyle()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionStyle()Landroidx/media3/ui/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Landroidx/media3/ui/b;)V

    return-void
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    const v0, 0x3d5a511a    # 0.0533f

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public setViewType(I)V
    .locals 2

    iget v0, p0, Landroidx/media3/ui/SubtitleView;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Landroidx/media3/ui/b1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/b1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    new-instance v0, Landroidx/media3/ui/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    :goto_0
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->h:I

    return-void
.end method
