.class public final Landroidx/window/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static ActivityFilter:[I = null

.field public static ActivityFilter_activityAction:I = 0x0

.field public static ActivityFilter_activityName:I = 0x1

.field public static ActivityRule:[I = null

.field public static ActivityRule_alwaysExpand:I = 0x0

.field public static SplitPairFilter:[I = null

.field public static SplitPairFilter_primaryActivityName:I = 0x0

.field public static SplitPairFilter_secondaryActivityAction:I = 0x1

.field public static SplitPairFilter_secondaryActivityName:I = 0x2

.field public static SplitPairRule:[I = null

.field public static SplitPairRule_clearTop:I = 0x0

.field public static SplitPairRule_finishPrimaryWithSecondary:I = 0x1

.field public static SplitPairRule_finishSecondaryWithPrimary:I = 0x2

.field public static SplitPairRule_splitLayoutDirection:I = 0x3

.field public static SplitPairRule_splitMinSmallestWidth:I = 0x4

.field public static SplitPairRule_splitMinWidth:I = 0x5

.field public static SplitPairRule_splitRatio:I = 0x6

.field public static SplitPlaceholderRule:[I = null

.field public static SplitPlaceholderRule_placeholderActivityName:I = 0x0

.field public static SplitPlaceholderRule_splitLayoutDirection:I = 0x1

.field public static SplitPlaceholderRule_splitMinSmallestWidth:I = 0x2

.field public static SplitPlaceholderRule_splitMinWidth:I = 0x3

.field public static SplitPlaceholderRule_splitRatio:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x7f040034

    const v1, 0x7f040036

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->ActivityFilter:[I

    const v0, 0x7f040048

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    const v0, 0x7f040654

    const v1, 0x7f040655

    const v2, 0x7f0405f1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const v0, 0x7f0406d2

    const v1, 0x7f0406d3

    const v2, 0x7f0406d0

    const v3, 0x7f0406d1

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Landroidx/window/R$styleable;->SplitPairRule:[I

    const v4, 0x7f0405c3

    filled-new-array {v4, v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    return-void

    :array_0
    .array-data 4
        0x7f04024d
        0x7f040379
        0x7f04037a
        0x7f0406d0
        0x7f0406d1
        0x7f0406d2
        0x7f0406d3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
