.class public Lcom/tn/lib/view/expand/SubjectExpandView;
.super Landroidx/appcompat/widget/AppCompatTextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/expand/SubjectExpandView$b;
    }
.end annotation


# static fields
.field public static final STATE_EXPAND:I = 0x1

.field public static final STATE_SHRINK:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:Lqh/a;

.field private t:Lqh/a;

.field private u:Landroid/text/Layout;

.field private v:Ljava/lang/CharSequence;

.field private w:Landroid/text/style/ClickableSpan;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/expand/SubjectExpandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "  "

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->g:Z

    iput-boolean v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->h:Z

    iput-boolean v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->i:Z

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->j:Z

    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->k:I

    const v1, -0x66000001

    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->l:I

    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->m:I

    const v1, 0x33ffffff

    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->n:I

    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->o:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->p:I

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->x:Z

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->y:Z

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/expand/SubjectExpandView;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "  "

    iput-object p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->g:Z

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->h:Z

    iput-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->i:Z

    iput-boolean p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->j:Z

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->k:I

    const v0, -0x66000001

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->l:I

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->m:I

    const v0, 0x33ffffff

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->n:I

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->o:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->p:I

    iput p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    iput-boolean p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->x:Z

    iput-boolean p3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->y:Z

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/expand/SubjectExpandView;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic b(Lcom/tn/lib/view/expand/SubjectExpandView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c(Lcom/tn/lib/view/expand/SubjectExpandView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->j(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/tn/lib/view/expand/SubjectExpandView;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/tn/lib/view/expand/SubjectExpandView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->j:Z

    return-void
.end method

.method private f(I)Ljava/lang/CharSequence;
    .locals 11

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    if-nez v0, :cond_1

    new-instance v10, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->k:I

    if-gt v0, v1, :cond_3

    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, " "

    :goto_1
    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->l(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    iget v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    const/4 v6, 0x0

    const/16 v7, 0x21

    const/4 v10, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v10, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->i:Z

    if-nez p1, :cond_5

    :goto_2
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->l(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->w:Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->s:Lqh/a;

    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->l(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    sub-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    iget v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->k:I

    sub-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    move-object v0, p0

    move-object v1, v9

    move-object v2, v8

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tn/lib/view/expand/SubjectExpandView;->g(Ljava/lang/String;Landroid/text/TextPaint;III)I

    move-result p1

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_8

    iget-object p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v10

    :cond_8
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    if-gtz p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0xb4

    if-le p1, v0, :cond_a

    iget-object p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-interface {p1, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    :goto_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->h:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gez v0, :cond_b

    goto :goto_5

    :cond_b
    move v6, v0

    :goto_5
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->w:Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->t:Lqh/a;

    invoke-virtual {p1, v0, v6, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->l(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_6
    return-object v0
.end method

.method private g(Ljava/lang/String;Landroid/text/TextPaint;III)I
    .locals 7

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->t:Lqh/a;

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->h:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, p2, v1, v2}, Lqh/a;->e(Landroid/graphics/Paint;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float v5, p5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    add-int/2addr p1, p3

    return p1
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

.method private h()V
    .locals 10

    iget v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->r:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->r:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lqh/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$mipmap;->info_player_ic_expand:I

    iget v5, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->l:I

    iget v6, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->n:I

    iget v7, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->r:F

    const/4 v8, 0x5

    move-object v2, v0

    move v9, v1

    invoke-direct/range {v2 .. v9}, Lqh/a;-><init>(Landroid/content/Context;IIIFIZ)V

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->t:Lqh/a;

    new-instance v0, Lqh/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$mipmap;->info_player_ic_collapse:I

    iget v5, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->m:I

    iget v6, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->o:I

    iget v7, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->r:F

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lqh/a;-><init>(Landroid/content/Context;IIIFIZ)V

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->s:Lqh/a;

    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "..."

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->a:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$string;->player_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$string;->player_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->c:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    const-string v1, "  "

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    iput-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    :cond_6
    new-instance v0, Lqh/e;

    invoke-direct {v0, p0}, Lqh/e;-><init>(Lcom/tn/lib/view/expand/SubjectExpandView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tn/lib/view/expand/SubjectExpandView$a;

    invoke-direct {v1, p0}, Lcom/tn/lib/view/expand/SubjectExpandView$a;-><init>(Lcom/tn/lib/view/expand/SubjectExpandView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private i(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/tn/lib/view/expand/SubjectExpandView;->h()V

    return-void

    :cond_0
    sget-object v0, Lcom/tn/lib/widget/R$styleable;->ExpandView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_11

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_hint_text_size:I

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->r:F

    goto/16 :goto_1

    :cond_1
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_reverse_Lines:I

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->k:I

    goto/16 :goto_1

    :cond_2
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_ellipsis:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_hint:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_shrink_hint:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_toggle_enabled:I

    if-ne v2, v3, :cond_6

    iget-boolean v3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->f:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->f:Z

    goto/16 :goto_1

    :cond_6
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_show_expand_hint:I

    if-ne v2, v3, :cond_7

    iget-boolean v3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->h:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->h:Z

    goto/16 :goto_1

    :cond_7
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_show_shrink_hint:I

    if-ne v2, v3, :cond_8

    iget-boolean v3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->i:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->i:Z

    goto :goto_1

    :cond_8
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_hint_color:I

    const v4, -0x66000001

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->l:I

    goto :goto_1

    :cond_9
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_shrink_hint_color:I

    if-ne v2, v3, :cond_a

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->m:I

    goto :goto_1

    :cond_a
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_bg_Color:I

    const v4, 0x33ffffff

    if-ne v2, v3, :cond_b

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->n:I

    goto :goto_1

    :cond_b
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_shrink_bg_color:I

    if-ne v2, v3, :cond_c

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->o:I

    goto :goto_1

    :cond_c
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_Init_state:I

    if-ne v2, v3, :cond_d

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    goto :goto_1

    :cond_d
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_expand_gap:I

    if-ne v2, v3, :cond_e

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->d:Ljava/lang/String;

    goto :goto_1

    :cond_e
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_collapse_gap:I

    if-ne v2, v3, :cond_f

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->e:Ljava/lang/String;

    goto :goto_1

    :cond_f
    sget v3, Lcom/tn/lib/widget/R$styleable;->ExpandView_pop_hash_tag_color:I

    if-ne v2, v3, :cond_10

    iget v3, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->p:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->p:I

    :cond_10
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/tn/lib/view/expand/SubjectExpandView;->h()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/tn/lib/view/expand/SubjectExpandView;->m()V

    return-void
.end method

.method private synthetic k(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/expand/SubjectExpandView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private l(Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method private m()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->y:Z

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    :goto_0
    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tn/lib/view/expand/SubjectExpandView;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getExpandState()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    return v0
.end method

.method public isOutLines()Z
    .locals 3

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->k:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tn/lib/view/expand/SubjectExpandView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->g:Z

    return-void
.end method

.method public setExpandListener(Lcom/tn/lib/view/expand/SubjectExpandView$b;)V
    .locals 0

    return-void
.end method

.method public setHasStarring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->x:Z

    return-void
.end method

.method public setShrink(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->y:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    invoke-direct {p0}, Lcom/tn/lib/view/expand/SubjectExpandView;->m()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->y:Z

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->u:Landroid/text/Layout;

    :cond_0
    iput-object p1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/tn/lib/view/expand/SubjectExpandView;->getLayoutWidth()I

    move-result v0

    iget-boolean v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->x:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/tn/lib/view/expand/SubjectExpandView;->f(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_3
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->v:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/tn/lib/view/expand/SubjectExpandView;->f(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/tn/lib/view/expand/SubjectExpandView;->j:Z

    if-eqz v0, :cond_7

    new-instance v0, Lqh/f;

    invoke-direct {v0, p0, p1}, Lqh/f;-><init>(Lcom/tn/lib/view/expand/SubjectExpandView;Ljava/lang/CharSequence;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method
