.class public Lcom/noober/background/drawable/TextViewGradientColor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ITextViewOperator;


# instance fields
.field private endColor:I

.field private orientation:I

.field private startColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->endColor:I

    iput v0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->startColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->orientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/noober/background/drawable/TextViewGradientColor;)I
    .locals 0

    iget p0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->startColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/noober/background/drawable/TextViewGradientColor;)I
    .locals 0

    iget p0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->endColor:I

    return p0
.end method


# virtual methods
.method public invoke(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
    .locals 4

    sget-object v0, Lcom/noober/background/R$styleable;->bl_text:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v3, Lcom/noober/background/R$styleable;->bl_text_bl_text_gradient_endColor:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/noober/background/drawable/TextViewGradientColor;->endColor:I

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    sget v3, Lcom/noober/background/R$styleable;->bl_text_bl_text_gradient_startColor:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/noober/background/drawable/TextViewGradientColor;->startColor:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/noober/background/R$styleable;->bl_text_bl_text_gradient_orientation:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/noober/background/drawable/TextViewGradientColor;->orientation:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget p2, p0, Lcom/noober/background/drawable/TextViewGradientColor;->endColor:I

    if-ne p2, v2, :cond_5

    iget v0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->startColor:I

    if-eq v0, v2, :cond_5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/noober/background/drawable/TextViewGradientColor;->startColor:I

    if-ne v0, v2, :cond_6

    if-eq p2, v2, :cond_6

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_6
    if-eq p2, v2, :cond_8

    if-eq v0, v2, :cond_8

    iget p2, p0, Lcom/noober/background/drawable/TextViewGradientColor;->orientation:I

    if-nez p2, :cond_7

    new-instance p2, Lcom/noober/background/drawable/TextViewGradientColor$1;

    invoke-direct {p2, p0, p3}, Lcom/noober/background/drawable/TextViewGradientColor$1;-><init>(Lcom/noober/background/drawable/TextViewGradientColor;Landroid/widget/TextView;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    new-instance p2, Lcom/noober/background/drawable/TextViewGradientColor$2;

    invoke-direct {p2, p0, p3}, Lcom/noober/background/drawable/TextViewGradientColor$2;-><init>(Lcom/noober/background/drawable/TextViewGradientColor;Landroid/widget/TextView;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :goto_4
    return-void
.end method
