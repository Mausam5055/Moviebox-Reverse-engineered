.class public final Lcy/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcy/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcy/b;

    invoke-direct {v0}, Lcy/b;-><init>()V

    sput-object v0, Lcy/b;->a:Lcy/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ProfileDetailBottomScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p2, Lcy/f;

    invoke-direct {p2, p1}, Lcy/f;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "VideoEndBidScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "DownloadPopupScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p2, Lcy/a;

    invoke-direct {p2, p1}, Lcy/a;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "StreamingMediaContentScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VideoFloatingNativeScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "TrendingNativeBannerScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p2, Lcy/j;

    invoke-direct {p2, p1}, Lcy/j;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "VideoForYouListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TrendingScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p2, Lcy/y;

    invoke-direct {p2, p1}, Lcy/y;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "PostDetailRecommendScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "ALLHistoricalPlayRecordScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "TrendingTwoLevelloftScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p2, Lcy/u;

    invoke-direct {p2, p1}, Lcy/u;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "DownloadInterceptIconAdScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance p2, Lcy/c;

    invoke-direct {p2, p1}, Lcy/c;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "HomeFragmentListLinearTemplateAd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "TrendingScene_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance p2, Lcy/d0;

    invoke-direct {p2, p1}, Lcy/d0;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "TrendingScene_1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p2, Lcy/b0;

    invoke-direct {p2, p1}, Lcy/b0;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "DownloadTvListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "HomeFragmentListGrid2TemplateAd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p2, Lcy/h;

    invoke-direct {p2, p1}, Lcy/h;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "DownloadMovieAppDistributionScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p2, Lcy/d;

    invoke-direct {p2, p1}, Lcy/d;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "VerticalPauseScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "DownloadListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance p2, Lcy/e;

    invoke-direct {p2, p1}, Lcy/e;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "ShortTvDiscoverMostTrendingScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p2, Lcy/x;

    invoke-direct {p2, p1}, Lcy/x;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "VideoStartBidScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "HomeLeftTopBrandNonstandardScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "HomeRIGHTTopGameNonstandardScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p2, Lcy/i;

    invoke-direct {p2, p1}, Lcy/i;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "VideoInterpolateBidScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p2, Lcy/m;

    invoke-direct {p2, p1}, Lcy/m;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "TabDownloadIrregularFloatingScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "ShortTvListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p2, Lcy/k;

    invoke-direct {p2, p1}, Lcy/k;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "PlayListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "TrendingFloatIrregularAd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p2, Lcy/w;

    invoke-direct {p2, p1}, Lcy/w;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "HomeFragmentListGrid3TemplateAd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    new-instance p2, Lcy/g;

    invoke-direct {p2, p1}, Lcy/g;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "TabDownloadTopIrregularScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    new-instance p2, Lcy/r;

    invoke-direct {p2, p1}, Lcy/r;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_1f
    const-string v0, "SubjectDetailRecommendScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_0

    :cond_12
    new-instance p2, Lcy/v;

    invoke-direct {p2, p1}, Lcy/v;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_20
    const-string v0, "SearchHotNativeScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_0

    :cond_13
    new-instance p2, Lcy/t;

    invoke-direct {p2, p1}, Lcy/t;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_21
    const-string v0, "VerticalMediaPlayerRecommendScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto :goto_0

    :cond_14
    new-instance p2, Lcy/e0;

    invoke-direct {p2, p1}, Lcy/e0;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_22
    const-string v0, "MediaPlayerMidDescScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_0

    :cond_15
    new-instance p2, Lcy/q;

    invoke-direct {p2, p1}, Lcy/q;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_23
    const-string v0, "LandscapePauseSceneNew"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_0

    :cond_16
    new-instance p2, Lcy/n;

    invoke-direct {p2, p1}, Lcy/n;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_24
    const-string v0, "DownloadInterceptDialogNativeScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_0

    :cond_17
    new-instance p2, Lcy/l;

    invoke-direct {p2, p1}, Lcy/l;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_18
    :goto_0
    const/4 p2, 0x0

    :goto_1
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cfa618d -> :sswitch_24
        -0x76db9d51 -> :sswitch_23
        -0x6a816088 -> :sswitch_22
        -0x66d21681 -> :sswitch_21
        -0x660efff0 -> :sswitch_20
        -0x5d6e2cf3 -> :sswitch_1f
        -0x59fc5aef -> :sswitch_1e
        -0x52b0a9a3 -> :sswitch_1d
        -0x4f6316c1 -> :sswitch_1c
        -0x28f2b666 -> :sswitch_1b
        -0x17df8fd0 -> :sswitch_1a
        -0xed8a7f0 -> :sswitch_19
        -0xa47baab -> :sswitch_18
        -0x8d841f4 -> :sswitch_17
        -0x4e67ec6 -> :sswitch_16
        -0x462e08a -> :sswitch_15
        -0x37783a3 -> :sswitch_14
        0x819dac6 -> :sswitch_13
        0x1526f06c -> :sswitch_12
        0x1547b3cf -> :sswitch_11
        0x186aa39c -> :sswitch_10
        0x239bf064 -> :sswitch_f
        0x2a970839 -> :sswitch_e
        0x2a97083a -> :sswitch_d
        0x3b00ff0f -> :sswitch_c
        0x4989a216 -> :sswitch_b
        0x4dda811e -> :sswitch_a
        0x5057ae3c -> :sswitch_9
        0x509c10c1 -> :sswitch_8
        0x5b6a7247 -> :sswitch_7
        0x5c4a96bd -> :sswitch_6
        0x60921164 -> :sswitch_5
        0x61f12674 -> :sswitch_4
        0x64573975 -> :sswitch_3
        0x73be9a08 -> :sswitch_2
        0x7a28f02f -> :sswitch_1
        0x7f8e5587 -> :sswitch_0
    .end sparse-switch
.end method
