.class public final Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u001dR\u0016\u0010 \u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "m",
        "()V",
        "r",
        "",
        "l",
        "()Z",
        "o",
        "k",
        "",
        "getNewTextByConfig",
        "()Ljava/lang/String;",
        "Lcom/transsion/shorttv/bean/Subject;",
        "bean",
        "showData",
        "(Lcom/transsion/shorttv/bean/Subject;)V",
        "desc",
        "(Ljava/lang/String;)V",
        "a",
        "Z",
        "isExtend",
        "Lms/s0;",
        "b",
        "Lms/s0;",
        "mViewBinding",
        "c",
        "Ljava/lang/String;",
        "description",
        "d",
        "I",
        "mMaxLinesOnShrink",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Z

.field private b:Lms/s0;

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->m()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->a:Z

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->d:I

    return-void
.end method

.method private final getNewTextByConfig()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v1, :cond_4

    iget-object v9, v1, Lms/s0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v1, "getPaint(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v10, 0x0

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v0, v10, v1, v3, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v11, Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->d:I

    if-gt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->l()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lms/s0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lms/s0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->p(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->n(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->q(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V

    return-void
.end method

.method private final k()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->a:Z

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lms/s0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_str_hide:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_up_hide:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lms/s0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final m()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$layout;->short_tv_view_download_info_extend_layout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lms/s0;->a(Landroid/view/View;)Lms/s0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lms/s0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/shorttv/ui/widget/p;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/p;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final n(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->a:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->o()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->k()V

    :goto_0
    return-void
.end method

.method private final o()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->a:Z

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lms/s0;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_str_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_down_more:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lms/s0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->getNewTextByConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private static final p(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->r()V

    return-void
.end method

.method private static final q(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->r()V

    return-void
.end method

.method private final r()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->o()V

    return-void
.end method


# virtual methods
.method public final showData(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lms/s0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsion/shorttv/ui/widget/o;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/widget/o;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final showData(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;->b:Lms/s0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lms/s0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsion/shorttv/ui/widget/n;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/widget/n;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadInfoExtendView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
