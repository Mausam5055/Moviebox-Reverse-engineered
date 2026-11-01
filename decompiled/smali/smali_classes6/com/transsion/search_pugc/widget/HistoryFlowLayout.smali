.class public final Lcom/transsion/search_pugc/widget/HistoryFlowLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J7\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/search_pugc/widget/HistoryFlowLayout;",
        "Landroid/view/ViewGroup;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "maxLines",
        "",
        "setMaxLines",
        "(I)V",
        "toggleExpanded",
        "()V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "a",
        "I",
        "Z",
        "isExpanded",
        "Search_psRelease"
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
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->d(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->c(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->toggleExpanded()V

    return-void
.end method

.method private static final d(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->toggleExpanded()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    move p5, p3

    move v0, p5

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge p3, p1, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v7, p5, v5

    if-le v7, p4, :cond_1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    iget-boolean p5, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->b:Z

    if-nez p5, :cond_0

    iget p5, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->a:I

    if-lt v2, p5, :cond_0

    goto :goto_1

    :cond_0
    move p5, p2

    move v1, p5

    move v3, v1

    :cond_1
    add-int v7, v3, v5

    add-int v8, v0, v6

    invoke-virtual {v4, v3, v0, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int/2addr p5, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 p3, p3, 0x1

    move v3, v7

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_1
    iget-boolean p1, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->b:Z

    if-nez p1, :cond_3

    iget p3, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->a:I

    if-lt v2, p3, :cond_3

    new-instance p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string p3, "\u5c55\u5f00"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/transsion/search_pugc/widget/a;

    invoke-direct {p3, p0}, Lcom/transsion/search_pugc/widget/a;-><init>(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p2

    add-int/2addr p4, v0

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string p3, "\u6536\u8d77"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/transsion/search_pugc/widget/b;

    invoke-direct {p3, p0}, Lcom/transsion/search_pugc/widget/b;-><init>(Lcom/transsion/search_pugc/widget/HistoryFlowLayout;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p2

    add-int/2addr p4, v0

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v10, v4, v9

    if-le v10, v0, :cond_1

    add-int/2addr v5, v6

    add-int/lit8 v7, v7, 0x1

    iget-boolean v4, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->b:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->a:I

    if-lt v7, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    move v6, v4

    :cond_1
    add-int/2addr v4, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_1
    add-int/2addr v5, v2

    invoke-virtual {p0, v0, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->a:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final toggleExpanded()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search_pugc/widget/HistoryFlowLayout;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
