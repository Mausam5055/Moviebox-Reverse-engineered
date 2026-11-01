.class public Lcom/cicada/player/utils/ass/AssStyle;
.super Ljava/lang/Object;


# instance fields
.field public mAlignment:I

.field public mAngle:D

.field public mBackColour:I

.field public mBold:I

.field public mBorderStyle:I

.field public mEncoding:I

.field public mFontName:Ljava/lang/String;

.field public mFontSize:D

.field public mItalic:I

.field public mMarginL:I

.field public mMarginR:I

.field public mMarginV:I

.field public mName:Ljava/lang/String;

.field public mOutline:D

.field public mOutlineColour:I

.field public mPrimaryColour:I

.field public mScaleX:D

.field public mScaleY:D

.field public mSecondaryColour:I

.field public mShadow:D

.field public mSpacing:D

.field public mStrikeOut:I

.field public mUnderline:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mFontSize:D

    const/4 v2, 0x0

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mPrimaryColour:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mSecondaryColour:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mOutlineColour:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBackColour:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBold:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mItalic:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mUnderline:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mStrikeOut:I

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    iput-wide v3, p0, Lcom/cicada/player/utils/ass/AssStyle;->mScaleX:D

    iput-wide v3, p0, Lcom/cicada/player/utils/ass/AssStyle;->mScaleY:D

    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mSpacing:D

    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mAngle:D

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mBorderStyle:I

    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mOutline:D

    iput-wide v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mShadow:D

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mAlignment:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginL:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginR:I

    iput v2, p0, Lcom/cicada/player/utils/ass/AssStyle;->mMarginV:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/cicada/player/utils/ass/AssStyle;->mEncoding:I

    return-void
.end method
