.class public Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final textShow:Z

.field private final type:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->type:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->textShow:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;Z)V

    return-void
.end method

.method private final getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black70:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private final getTextSize(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method


# virtual methods
.method public final createIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x1020006

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v2

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v1

    invoke-direct {p1, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public final createTextView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->getTextSize(Landroid/content/Context;)F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->textShow:Z

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x78

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v3

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v3

    const/16 v4, 0x1a

    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v4

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createIconView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createTextView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getGravity(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getHorizontalMargin(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method public getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->type:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getVerticalMargin(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)F

    move-result v0

    return v0
.end method

.method public getXOffset()I
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getXOffset(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getYOffset(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    move-result v0

    return v0
.end method
