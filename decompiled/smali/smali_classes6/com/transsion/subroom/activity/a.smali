.class public final Lcom/transsion/subroom/activity/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/subroom/activity/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/subroom/activity/a;

    invoke-direct {v0}, Lcom/transsion/subroom/activity/a;-><init>()V

    sput-object v0, Lcom/transsion/subroom/activity/a;->a:Lcom/transsion/subroom/activity/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/home/bean/BottomTabItem;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->isLargeUiType()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COMMUNITY"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_big_community:I

    return p1

    :cond_0
    sget p1, Lcom/transsion/subroom/R$mipmap;->ic_tab_bottom_large_default:I

    return p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "PREMIUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_premium_unactive:I

    goto :goto_2

    :sswitch_1
    const-string v0, "NOVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_novel_unactive:I

    goto :goto_2

    :sswitch_2
    const-string v0, "MUSIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_music_unactive_dark:I

    goto :goto_2

    :sswitch_3
    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_home_unactive_dark:I

    goto :goto_2

    :sswitch_4
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_me_unactive_dark:I

    goto :goto_2

    :sswitch_5
    const-string v0, "DOWNLOADS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_downloads_unactive_dark:I

    goto :goto_2

    :sswitch_6
    const-string v0, "SHORTTV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_short_tv_unactive:I

    goto :goto_2

    :sswitch_7
    const-string v0, "SUBSCRIPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_subscription_unactive:I

    goto :goto_2

    :cond_b
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x618abee3 -> :sswitch_7
        -0x59fe1022 -> :sswitch_6
        -0xba9a735 -> :sswitch_5
        0x998 -> :sswitch_4
        0x21ecdf -> :sswitch_3
        0x464f605 -> :sswitch_2
        0x4705e1c -> :sswitch_1
        0x17d05a37 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lcom/transsion/home/bean/BottomTabItem;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->isLargeUiType()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COMMUNITY"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_big_community:I

    return p1

    :cond_0
    sget p1, Lcom/transsion/subroom/R$mipmap;->ic_tab_bottom_large_default:I

    return p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/BottomTabItem;->getBtTabCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "PREMIUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_premium_activit:I

    goto :goto_2

    :sswitch_1
    const-string v0, "NOVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_novel_active:I

    goto :goto_2

    :sswitch_2
    const-string v0, "MUSIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_music_active:I

    goto :goto_2

    :sswitch_3
    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_home_active:I

    goto :goto_2

    :sswitch_4
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_me_active:I

    goto :goto_2

    :sswitch_5
    const-string v0, "DOWNLOADS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_downloads_active:I

    goto :goto_2

    :sswitch_6
    const-string v0, "SHORTTV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_short_tv_active:I

    goto :goto_2

    :sswitch_7
    const-string v0, "SUBSCRIPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    sget p1, Lcom/transsion/home/R$mipmap;->ic_tab_subscription_active:I

    goto :goto_2

    :cond_b
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x618abee3 -> :sswitch_7
        -0x59fe1022 -> :sswitch_6
        -0xba9a735 -> :sswitch_5
        0x998 -> :sswitch_4
        0x21ecdf -> :sswitch_3
        0x464f605 -> :sswitch_2
        0x4705e1c -> :sswitch_1
        0x17d05a37 -> :sswitch_0
    .end sparse-switch
.end method
