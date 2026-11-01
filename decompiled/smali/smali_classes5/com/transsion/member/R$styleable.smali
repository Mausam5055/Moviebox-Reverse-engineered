.class public final Lcom/transsion/member/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static CheckInView:[I = null

.field public static CheckInView_civ_activeEndLayout:I = 0x0

.field public static CheckInView_civ_activeItemLayout:I = 0x1

.field public static CheckInView_civ_doneEndLayout:I = 0x2

.field public static CheckInView_civ_doneItemLayout:I = 0x3

.field public static CheckInView_civ_endSpanCount:I = 0x4

.field public static CheckInView_civ_horizontalSpace:I = 0x5

.field public static CheckInView_civ_length:I = 0x6

.field public static CheckInView_civ_spanCount:I = 0x7

.field public static CheckInView_civ_unActiveEndLayout:I = 0x8

.field public static CheckInView_civ_unActiveItemLayout:I = 0x9

.field public static CheckInView_civ_verticalSpace:I = 0xa

.field public static GradientTextView:[I = null

.field public static GradientTextView_endColor:I = 0x0

.field public static GradientTextView_gradientTvCenterColor:I = 0x1

.field public static GradientTextView_gradientTvEndColor:I = 0x2

.field public static GradientTextView_gradientTvStartColor:I = 0x3

.field public static GradientTextView_startColor:I = 0x4

.field public static InviteUserView:[I = null

.field public static InviteUserView_iuv_activeItemLayout:I = 0x0

.field public static InviteUserView_iuv_doneItemLayout:I = 0x1

.field public static InviteUserView_iuv_inviteViewHorizontalSpace:I = 0x2

.field public static InviteUserView_iuv_length:I = 0x3

.field public static InviteUserView_iuv_loadMoreEnable:I = 0x4

.field public static InviteUserView_iuv_loadMoreItemLayout:I = 0x5

.field public static InviteUserView_iuv_unActiveItemLayout:I = 0x6

.field public static StrokeLinearLayout:[I = null

.field public static StrokeLinearLayout_sll_cornerBLRadius:I = 0x0

.field public static StrokeLinearLayout_sll_cornerBRRadius:I = 0x1

.field public static StrokeLinearLayout_sll_cornerRadius:I = 0x2

.field public static StrokeLinearLayout_sll_cornerTLRadius:I = 0x3

.field public static StrokeLinearLayout_sll_cornerTRRadius:I = 0x4

.field public static StrokeLinearLayout_sll_dashGap:I = 0x5

.field public static StrokeLinearLayout_sll_dashWidth:I = 0x6

.field public static StrokeLinearLayout_sll_strokeColor:I = 0x7

.field public static StrokeLinearLayout_sll_strokeWidth:I = 0x8


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/member/R$styleable;->CheckInView:[I

    const v0, 0x7f0403c4

    const v1, 0x7f040737

    const v2, 0x7f04033d

    const v3, 0x7f0403c2

    const v4, 0x7f0403c3

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/member/R$styleable;->GradientTextView:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/member/R$styleable;->InviteUserView:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/transsion/member/R$styleable;->StrokeLinearLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f040242
        0x7f040243
        0x7f040244
        0x7f040245
        0x7f040246
        0x7f040247
        0x7f040248
        0x7f040249
        0x7f04024a
        0x7f04024b
        0x7f04024c
    .end array-data

    :array_1
    .array-data 4
        0x7f04044e
        0x7f04044f
        0x7f040450
        0x7f040451
        0x7f040452
        0x7f040453
        0x7f040454
    .end array-data

    :array_2
    .array-data 4
        0x7f0406bf
        0x7f0406c0
        0x7f0406c1
        0x7f0406c2
        0x7f0406c3
        0x7f0406c4
        0x7f0406c5
        0x7f0406c6
        0x7f0406c7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
