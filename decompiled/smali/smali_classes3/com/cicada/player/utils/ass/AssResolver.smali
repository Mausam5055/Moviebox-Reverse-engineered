.class public Lcom/cicada/player/utils/ass/AssResolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;,
        Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssResolver"

.field public static final TEXT_PATTERN:Ljava/lang/String; = "\\{[^\\{]+\\}"

.field public static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

.field private mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

.field private videoDisplayHeight:I

.field private videoDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{[^\\{]+\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/ass/AssResolver;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    iput v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    new-instance v0, Lcom/cicada/player/utils/ass/TextViewPool;

    invoke-direct {v0, p1}, Lcom/cicada/player/utils/ass/TextViewPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    return-void
.end method

.method private convertRgbColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fillContentAttribute(Lcom/cicada/player/utils/ass/AssStyle;Ljava/util/LinkedList;Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cicada/player/utils/ass/AssStyle;",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;",
            "Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    const-string v5, "\\N"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    iget-object v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mFontName:Ljava/lang/String;

    iput-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mFontSize:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBold:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mItalic:I

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    iput-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mStrikeOut:I

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_3

    :cond_2
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mUnderline:I

    if-ne v4, v5, :cond_3

    goto :goto_4

    :cond_3
    move v5, v1

    :goto_4
    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBorderStyle:I

    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBorderStyle:I

    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mOutline:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mShadow:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mShadow:D

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBackColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBackColour:I

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mOutlineColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineColour:I

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mPrimaryColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mSecondaryColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mSecondaryColour:I

    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->parseOverrideStyle(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v5, "primaryColour"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    :cond_4
    const-string v5, "strikeOut"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    :cond_5
    const-string v5, "underline"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    :cond_6
    const-string v5, "italic"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    :cond_7
    const-string v5, "bold"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    :cond_8
    const-string v5, "fontSize"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    :cond_9
    const-string v5, "fontName"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    :cond_a
    const-string v3, "posX"

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, p3, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    :cond_b
    const-string v3, "posY"

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, p3, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private getFinalStr(Ljava/util/LinkedList;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    const/4 v5, 0x1

    const/16 v6, 0x21

    if-lez v4, :cond_1

    new-instance v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    invoke-direct {v4}, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;-><init>()V

    iget-object v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    iput-object v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontName:Ljava/lang/String;

    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    iput-wide v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontSize:D

    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mPrimaryColour:I

    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mSecondaryColour:I

    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mSecondaryColour:I

    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mBold:Z

    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mItalic:Z

    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mUnderline:Z

    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mStrikeOut:Z

    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineColour:I

    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineColour:I

    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    iput-wide v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBorderStyle:I

    if-ne v7, v5, :cond_0

    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mShadow:D

    iput-wide v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowWidth:D

    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBackColour:I

    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowColor:I

    :cond_0
    new-instance v7, Lcom/cicada/player/utils/ass/BorderedSpan;

    invoke-direct {v7, v4}, Lcom/cicada/player/utils/ass/BorderedSpan;-><init>(Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;)V

    invoke-virtual {v0, v7, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    new-instance v4, Landroid/text/style/TypefaceSpan;

    iget-object v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    double-to-int v7, v7

    invoke-direct {v4, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    if-eqz v4, :cond_2

    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    if-eqz v7, :cond_2

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    if-eqz v4, :cond_4

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_1
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    if-eqz v4, :cond_5

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    if-eqz v4, :cond_6

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    iget-object v3, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private getLayoutParams(Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;FF)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 8

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v5, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    cmpl-double v3, v5, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    const/16 p3, 0xf

    const/16 v1, 0x9

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0xe

    const/16 v5, 0xc

    packed-switch p2, :pswitch_data_0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_4
    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget p2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    :cond_1
    :goto_1
    iget v3, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    invoke-direct {p0, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->scaleXSize(D)D

    move-result-wide v1

    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    const/high16 p1, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_1

    div-float/2addr p2, p1

    float-to-double p1, p2

    sub-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_9
    float-to-double p1, p2

    sub-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_a
    div-float/2addr p2, p1

    float-to-double p1, p2

    sub-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_b
    invoke-direct {p0, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->scaleXSize(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_c
    float-to-double v6, p2

    sub-double/2addr v1, v6

    double-to-int p2, v1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    div-float/2addr p3, p1

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_d
    div-float/2addr p2, p1

    float-to-double v6, p2

    sub-double/2addr v1, v6

    double-to-int p2, v1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    div-float/2addr p3, p1

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_e
    double-to-int p2, v1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    div-float/2addr p3, p1

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_f
    float-to-double p1, p2

    sub-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_10
    div-float/2addr p2, p1

    float-to-double p1, p2

    sub-double/2addr v1, p1

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :pswitch_11
    double-to-int p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-double p1, p3

    sub-double/2addr v4, p1

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getLocationAttribute(Lcom/cicada/player/utils/ass/AssDialogue;Lcom/cicada/player/utils/ass/AssStyle;)Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    .locals 3

    new-instance v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mAlignment:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginL:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginR:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginV:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginL:I

    if-eqz v1, :cond_0

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    :cond_0
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginR:I

    if-eqz v1, :cond_1

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    :cond_1
    iget p1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginV:I

    if-eqz p1, :cond_2

    iput p1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    :cond_2
    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mAngle:D

    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAngle:D

    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mScaleX:D

    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleX:D

    iget-wide p1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mScaleY:D

    iput-wide p1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleY:D

    return-object v0
.end method

.method private parseOverrideStyle(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\"

    const-string v1, "\\$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_a

    aget-object v5, p1, v4

    const-string v6, "fn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fontName"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    const-string v6, "fs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fontSize"

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_1
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "b1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "bold"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "i1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "italic"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    const-string v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "u1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "underline"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_4
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "s1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "strikeOut"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    const-string v6, "c&H"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    if-nez v7, :cond_7

    const-string v7, "1c&H"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "pos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "posX"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "posY"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_1
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "#"

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cicada/player/utils/ass/AssResolver;->convertRgbColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cicada/player/utils/ass/AssResolver;->convertRgbColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "primaryColour"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v0

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private rgbaToArgb(I)I
    .locals 5

    and-int/lit16 v0, p1, 0xff

    rsub-int v0, v0, 0xff

    ushr-int/lit8 p1, p1, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "%02x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "%06x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private scaleXSize(D)D
    .locals 4

    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget v1, v1, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    if-lez v1, :cond_0

    int-to-double v2, v0

    mul-double/2addr p1, v2

    int-to-double v0, v1

    div-double/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method private scaleYSize(D)D
    .locals 4

    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget v1, v1, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    if-lez v1, :cond_0

    int-to-double v2, v0

    mul-double/2addr p1, v2

    int-to-double v0, v1

    div-double/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method private splitContent(Lcom/cicada/player/utils/ass/AssDialogue;)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cicada/player/utils/ass/AssDialogue;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/cicada/player/utils/ass/AssResolver;->pattern:Ljava/util/regex/Pattern;

    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    const-string v2, "\\{[^\\{]+\\}"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_4

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    invoke-direct {v4, v3}, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    aget-object v5, p1, v2

    iput-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    iput-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    invoke-direct {v1, v3}, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    iget-object p1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    iput-object p1, v1, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public dismiss(Lcom/cicada/player/utils/ass/AssTextView;)V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/TextViewPool;->recycle(Lcom/cicada/player/utils/ass/AssTextView;)V

    :cond_0
    return-void
.end method

.method public setAssDialog(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssTextView;
    .locals 5

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/TextViewPool;->obtain()Lcom/cicada/player/utils/ass/AssTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssTextView;->setContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    invoke-static {v1, p1}, Lcom/cicada/player/utils/ass/AssUtils;->parseAssDialogue(Lcom/cicada/player/utils/ass/AssHeader;Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssDialogue;

    move-result-object p1

    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget-object v1, v1, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mStyle:Ljava/lang/String;

    const-string v3, "*"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cicada/player/utils/ass/AssStyle;

    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    const-string v3, "{\\p0}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssResolver;->splitContent(Lcom/cicada/player/utils/ass/AssDialogue;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcom/cicada/player/utils/ass/AssResolver;->getLocationAttribute(Lcom/cicada/player/utils/ass/AssDialogue;Lcom/cicada/player/utils/ass/AssStyle;)Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/cicada/player/utils/ass/AssResolver;->fillContentAttribute(Lcom/cicada/player/utils/ass/AssStyle;Ljava/util/LinkedList;Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;)V

    invoke-direct {p0, v2}, Lcom/cicada/player/utils/ass/AssResolver;->getFinalStr(Ljava/util/LinkedList;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAngle:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p1, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->getLayoutParams(Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    float-to-int v1, v2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method public setAssHeaders(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/cicada/player/utils/ass/AssUtils;->parseAssHeader(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    return-void
.end method

.method public setFontTypeMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setVideoDisplaySize(II)V
    .locals 0

    iput p1, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    iput p2, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    return-void
.end method
