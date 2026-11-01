.class public Lcom/cicada/player/utils/ass/BorderedSpan;
.super Landroid/text/style/ReplacementSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;
    }
.end annotation


# instance fields
.field final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;


# direct methods
.method public constructor <init>(Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private fillPainStyle(Landroid/graphics/Paint;)V
    .locals 5

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-object v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-wide v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontSize:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mPrimaryColour:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mUnderline:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mStrikeOut:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mBold:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-boolean v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mItalic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, -0x41800000    # -0.25f

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    iget-object v0, p0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-wide v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowWidth:D

    double-to-float v4, v2

    double-to-float v2, v2

    iget v0, v0, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowColor:I

    invoke-virtual {p1, v1, v4, v2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p7

    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-wide v2, v2, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/cicada/player/utils/ass/BorderedSpan;->fillPainStyle(Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget-wide v3, v3, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderStyle:Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    iget v3, v3, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v1

    iget-object v10, v0, Lcom/cicada/player/utils/ass/BorderedSpan;->mBorderPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v7, p9

    invoke-direct {p0, v7}, Lcom/cicada/player/utils/ass/BorderedSpan;->fillPainStyle(Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object/from16 v7, p9

    :goto_0
    int-to-float v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/BorderedSpan;->fillPainStyle(Landroid/graphics/Paint;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
