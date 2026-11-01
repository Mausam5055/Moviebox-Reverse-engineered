.class public final Lor/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lor/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lor/a;

    invoke-direct {v0}, Lor/a;-><init>()V

    sput-object v0, Lor/a;->a:Lor/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x17df8fd0

    if-eq v0, v1, :cond_3

    const v1, -0x37783a3

    if-eq v0, v1, :cond_1

    const v1, 0x5c4a96bd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "VideoForYouListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_1
    const-string v0, "ShortTvDiscoverMostTrendingScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lsr/t;

    invoke-direct {p2, p1}, Lsr/t;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    const-string v0, "ShortTvListScene"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, Lsr/a;

    invoke-direct {p2, p1}, Lsr/a;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method
