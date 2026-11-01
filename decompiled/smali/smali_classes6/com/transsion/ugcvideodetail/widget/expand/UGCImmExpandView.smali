.class public Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;
.super Lcom/transsion/shorttv_pugc/base/widget/TnTextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$c;,
        Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$b;
    }
.end annotation


# static fields
.field public static final STATE_EXPAND:I = 0x1

.field public static final STATE_SHRINK:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:Z

.field private u:Landroid/text/style/ClickableSpan;

.field private v:Luv/a;

.field private w:Luv/a;

.field private x:Landroid/text/Layout;

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "  "

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    const v2, -0x66000001

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "  "

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    const v1, -0x66000001

    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    iput p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    iput p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    iput p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    return-void
.end method

.method private getLayoutWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method private h(I)Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    if-nez v0, :cond_1

    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    :cond_1
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    if-gt p1, v0, :cond_3

    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, " "

    :goto_0
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    iget p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    if-nez p1, :cond_5

    :goto_1
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gez v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->u:Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->v:Luv/a;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    iget v4, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_8

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v3

    :cond_8
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    if-gtz p1, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, -0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v0, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n\n"

    const-string v3, "\n"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gez p1, :cond_a

    goto :goto_3

    :cond_a
    move v2, p1

    :goto_3
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->u:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->w:Luv/a;

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_4
    return-object v0
.end method

.method private i()V
    .locals 11

    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Luv/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    const/16 v10, -0x6f

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_down_more:I

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v10

    :goto_1
    iget v5, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    iget v6, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    iget v7, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    const/4 v8, 0x0

    move-object v2, v0

    move v9, v1

    invoke-direct/range {v2 .. v9}, Luv/a;-><init>(Landroid/content/Context;IIIFIZ)V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->w:Luv/a;

    new-instance v0, Luv/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_up_hide:I

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v10

    :goto_2
    iget v5, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    iget v6, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    iget v7, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    const/4 v8, 0x0

    move-object v2, v0

    move v9, v1

    invoke-direct/range {v2 .. v9}, Luv/a;-><init>(Landroid/content/Context;IIIFIZ)V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->v:Luv/a;

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "..."

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_str_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_str_hide:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    const-string v1, "  "

    if-nez v0, :cond_7

    iput-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    if-nez v0, :cond_8

    iput-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    :cond_8
    new-instance v0, Luv/c;

    invoke-direct {v0, p0}, Luv/c;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$a;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private j(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i()V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/shorttv/R$styleable;->ExpandView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_12

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_hint_text_size:I

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->s:F

    goto/16 :goto_1

    :cond_1
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_reverse_Lines:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    goto/16 :goto_1

    :cond_2
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_ellipsis:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_hint:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_shrink_hint:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_toggle_enabled:I

    if-ne v2, v3, :cond_6

    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->g:Z

    goto/16 :goto_1

    :cond_6
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_show_expand_hint:I

    if-ne v2, v3, :cond_7

    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i:Z

    goto/16 :goto_1

    :cond_7
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_show_shrink_hint:I

    if-ne v2, v3, :cond_8

    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->j:Z

    goto/16 :goto_1

    :cond_8
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_hint_color:I

    const v5, -0x66000001

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->m:I

    goto :goto_1

    :cond_9
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_shrink_hint_color:I

    if-ne v2, v3, :cond_a

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->n:I

    goto :goto_1

    :cond_a
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_bg_Color:I

    if-ne v2, v3, :cond_b

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o:I

    goto :goto_1

    :cond_b
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_shrink_bg_color:I

    if-ne v2, v3, :cond_c

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->p:I

    goto :goto_1

    :cond_c
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_Init_state:I

    if-ne v2, v3, :cond_d

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    goto :goto_1

    :cond_d
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_expand_gap:I

    if-ne v2, v3, :cond_e

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->e:Ljava/lang/String;

    goto :goto_1

    :cond_e
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_collapse_gap:I

    if-ne v2, v3, :cond_f

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->f:Ljava/lang/String;

    goto :goto_1

    :cond_f
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_hash_tag_color:I

    if-ne v2, v3, :cond_10

    iget v3, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->q:I

    goto :goto_1

    :cond_10
    sget v3, Lcom/transsion/shorttv/R$styleable;->ExpandView_pop_show_hint_icon:I

    if-ne v2, v3, :cond_11

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->t:Z

    :cond_11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->i()V

    return-void
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->o()V

    return-void
.end method

.method private synthetic l(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    :cond_0
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->getLayoutWidth()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->k:Z

    if-eqz v0, :cond_3

    new-instance v0, Luv/d;

    invoke-direct {v0, p0, p1}, Luv/d;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-object v1

    :cond_4
    return-object p1
.end method

.method private n(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method private o()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    :goto_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addLegacyHashTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->A:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->z:Ljava/lang/String;

    return-void
.end method

.method public changeLocal()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_str_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_str_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->d:Ljava/lang/String;

    invoke-super {p0}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;->changeLocal()V

    return-void
.end method

.method public getExpandState()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    return v0
.end method

.method public isOutLines()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->x:Landroid/text/Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->l:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSetTitleSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->B:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->r:I

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->y:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;->h:Z

    return-void
.end method

.method public setExpandListener(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$c;)V
    .locals 0

    return-void
.end method

.method public setOnClickHashTagListener(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView$b;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Luv/b;

    invoke-direct {v0, p0, p1}, Luv/b;-><init>(Lcom/transsion/ugcvideodetail/widget/expand/UGCImmExpandView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;->setTextAction(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
