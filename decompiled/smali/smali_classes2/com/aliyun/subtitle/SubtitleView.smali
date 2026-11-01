.class public Lcom/aliyun/subtitle/SubtitleView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;,
        Lcom/aliyun/subtitle/SubtitleView$Subtitle;
    }
.end annotation


# static fields
.field public static final EXTRA_COLOR__STRING:Ljava/lang/String; = "extra_color"

.field public static final EXTRA_GRAVITY__ENUM:Ljava/lang/String; = "extra_gravity"

.field public static final EXTRA_LOCATION__INT:Ljava/lang/String; = "extra_location"

.field public static final EXTRA_SIZE_PX__INT:Ljava/lang/String; = "extra_size_px"

.field private static final TAG:Ljava/lang/String; = "SubtitleView"


# instance fields
.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultLocation:I

.field private mDefaultPercent:F

.field private mDefaultSize:I

.field private mSubtitleView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    invoke-direct {p0}, Lcom/aliyun/subtitle/SubtitleView;->init()V

    return-void
.end method

.method private getFinalParam(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    iget v1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultLocation:I

    invoke-static {v0, p1, v1}, Lcom/aliyun/subtitle/LocationStyle;->setLocation(Landroid/widget/RelativeLayout$LayoutParams;Ljava/util/Map;I)V

    return-object v0
.end method

.method private getFinalText(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/text/SpannableStringBuilder;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultColor:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/aliyun/subtitle/TextSytle;->setTextColor(Landroid/text/SpannableStringBuilder;Ljava/util/Map;Ljava/lang/String;)V

    iget v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    invoke-static {v1, p1, v0}, Lcom/aliyun/subtitle/TextSytle;->setTextSize(Landroid/text/SpannableStringBuilder;Ljava/util/Map;I)V

    return-object v1

    :cond_1
    :goto_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private getFinalTextView(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    invoke-virtual {v0}, Lcom/aliyun/subtitle/TextViewPool;->obtain()Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->extraInfo:Ljava/util/Map;

    if-nez p1, :cond_0

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const-string v1, "extra_gravity"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/aliyun/subtitle/TextViewPool;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/subtitle/TextViewPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    new-instance v0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;

    invoke-direct {v0}, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/aliyun/subtitle/SubtitleView;->setDefaultValue(Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;)V

    return-void
.end method


# virtual methods
.method public dismiss(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mTextViewPool:Lcom/aliyun/subtitle/TextViewPool;

    invoke-virtual {v0, p1}, Lcom/aliyun/subtitle/TextViewPool;->recycle(Landroid/widget/TextView;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    int-to-float p2, p5

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    :cond_1
    iget p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    if-gtz p1, :cond_2

    const/16 p1, 0x14

    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    :cond_2
    return-void
.end method

.method public setDefaultValue(Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;)V
    .locals 1

    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultLocation:I

    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultPercent:F

    iget v0, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultSize:I

    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView;->mDefaultColor:Ljava/lang/String;

    return-void
.end method

.method public show(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalText(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalParam(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/aliyun/subtitle/SubtitleView;->getFinalTextView(Lcom/aliyun/subtitle/SubtitleView$Subtitle;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/aliyun/subtitle/SubtitleView;->mSubtitleView:Ljava/util/Map;

    iget-object p1, p1, Lcom/aliyun/subtitle/SubtitleView$Subtitle;->id:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
