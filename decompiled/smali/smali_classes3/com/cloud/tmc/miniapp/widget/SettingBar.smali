.class public final Lcom/cloud/tmc/miniapp/widget/SettingBar;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Landroid/widget/LinearLayout;

.field public final OooO0O0:Landroid/widget/TextView;

.field public final OooO0OO:Landroid/widget/TextView;

.field public final OooO0Oo:Landroid/view/View;

.field public OooO0o:I

.field public OooO0o0:I

.field public OooO0oO:I

.field public OooO0oo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o:Landroid/widget/LinearLayout;

    new-instance p4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x50

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x800013

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x800015

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p4, v2, v3, v4, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v2, "getContext().obtainStyle\u2026tyleable.Mini_SettingBar)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_0
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_1
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_2
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_3
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableSize:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableSize:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_4
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableSize:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableSize:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_5
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableTint:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_6
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableTint:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_7
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawablePadding:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawablePadding:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawablePadding:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawablePadding:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_a
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_b
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$color;->mini_color_title_text:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$color;->mini_color_666666:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooOO0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_sp_14:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v6, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_sp_14:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v6, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    goto :goto_2

    :cond_c
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_divider_01:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :goto_2
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineVisible:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_d

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineVisible:I

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(Z)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_d
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineSize:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_e

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineSize:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_e
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineMargin:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_f

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineMargin:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_10

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_surface_01:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    :cond_10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p0, p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final OooO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO00o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object p0
.end method

.method public final OooO00o(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public final OooO00o(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oO:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO00o(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO00o(Z)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public final OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 3

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oO:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p0
.end method

.method public final OooO0O0(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public final OooO0O0(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final OooO0O0(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO0OO(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO0OO(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO0Oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public final OooO0Oo(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO0o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final OooO0o0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final OooO0oO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object p0
.end method

.method public final OooO0oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 3

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p0
.end method

.method public final OooOO0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public final getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLeftText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getLeftView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLineView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    return-object v0
.end method

.method public final getMainLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getRightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getRightText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getRightView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    return-object v0
.end method
