.class public final Lcom/transsion/publish/view/CustomHeader;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0015R\u0014\u0010\u001e\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/publish/view/CustomHeader;",
        "Landroid/widget/RelativeLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "title",
        "",
        "setTitle",
        "(Ljava/lang/String;)V",
        "Landroid/view/View$OnClickListener;",
        "click",
        "setOnBackClick",
        "(Landroid/view/View$OnClickListener;)V",
        "setOnEditClick",
        "onSearchClick",
        "Landroid/widget/ImageView;",
        "a",
        "Landroid/widget/ImageView;",
        "iBack",
        "Lcom/tn/lib/widget/TnTextView;",
        "b",
        "Lcom/tn/lib/widget/TnTextView;",
        "vTitle",
        "c",
        "iSearch",
        "d",
        "vEdit",
        "Publish_psRelease"
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
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/tn/lib/widget/TnTextView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$layout;->common_layout_header:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/transsion/publish/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->a:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/publish/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tn/lib/widget/TnTextView;

    iput-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->b:Lcom/tn/lib/widget/TnTextView;

    sget v0, Lcom/transsion/publish/R$id;->iv_search:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->c:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/publish/R$id;->tv_edit:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tn/lib/widget/TnTextView;

    iput-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->d:Lcom/tn/lib/widget/TnTextView;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "titleValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    sget-object v3, Lcom/transsion/publish/R$styleable;->CustomHeader:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v3, "obtainStyledAttributes(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/transsion/publish/view/CustomHeader;->b:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v3, v1}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rightValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result p2

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_3
    iget-object v1, p0, Lcom/transsion/publish/view/CustomHeader;->d:Lcom/tn/lib/widget/TnTextView;

    sget v3, Lcom/tn/lib/widget/R$color;->cl01:I

    invoke-static {v3}, Lcom/blankj/utilcode/util/h;->a(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/transsion/publish/view/CustomHeader;->d:Lcom/tn/lib/widget/TnTextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/transsion/publish/view/CustomHeader;->d:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v1, p2}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    :cond_5
    sget p2, Lcom/transsion/publish/R$styleable;->CustomHeader_showSearch:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget v1, Lcom/transsion/publish/R$styleable;->CustomHeader_showEdit:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/publish/view/CustomHeader;->c:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_4

    :cond_6
    move p2, v4

    :goto_4
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/publish/view/CustomHeader;->d:Lcom/tn/lib/widget/TnTextView;

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v4

    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/publish/R$styleable;->CustomHeader_isBack:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iget-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->a:Landroid/widget/ImageView;

    if-ne p2, v2, :cond_8

    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_back_black:I

    goto :goto_6

    :cond_8
    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_back_black:I

    :goto_6
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onSearchClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnBackClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnEditClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->d:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomHeader;->b:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
