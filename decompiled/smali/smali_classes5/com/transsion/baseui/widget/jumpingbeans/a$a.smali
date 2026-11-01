.class public Lcom/transsion/baseui/widget/jumpingbeans/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/jumpingbeans/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    const/16 v0, 0x514

    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    iput-object p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    return-void
.end method

.method private b(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
    .locals 7

    new-instance v6, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    iget-object v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;-><init>(Landroid/widget/TextView;IIIF)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    aget-object v1, v0, v1

    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    iget v3, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    const/16 v4, 0x21

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private c(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;
    .locals 9

    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    iget v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    :cond_0
    iget v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    iget v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    sub-int/2addr v0, v1

    new-array v0, v0, [Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    :goto_0
    iget v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    iget-object v4, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    iget v5, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    iget v3, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    sub-int v6, v1, v3

    iget v7, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    iget v8, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;-><init>(Landroid/widget/TextView;IIIF)V

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x21

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget v4, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    sub-int/2addr v1, v4

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static d(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p2, :cond_3

    if-lt p1, p0, :cond_2

    if-ltz p0, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-gt p1, p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The end position must be smaller than the text length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The start position must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The start position must be smaller than the end position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The textView text must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/transsion/baseui/widget/jumpingbeans/a;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b(Landroid/text/SpannableStringBuilder;)[Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/transsion/baseui/widget/jumpingbeans/a;

    iget-object v2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/baseui/widget/jumpingbeans/a;-><init>([Lcom/transsion/baseui/widget/jumpingbeans/JumpingBeansSpan;Landroid/widget/TextView;Lcom/transsion/baseui/widget/jumpingbeans/b;)V

    return-object v0
.end method

.method public e(II)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h:Z

    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->b:I

    iput p2, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->c:I

    return-object p0
.end method

.method public f(F)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->d:F

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The animated range must be in the (0, 1] range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Z)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h:Z

    return-object p0
.end method

.method public h(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The loop duration must be bigger than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The wave char offset must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
