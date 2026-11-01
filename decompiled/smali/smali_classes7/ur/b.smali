.class public final Lur/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lur/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lur/b;

    invoke-direct {v0}, Lur/b;-><init>()V

    sput-object v0, Lur/b;->a:Lur/b;

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

    const-string v0, "ShortTvDiscoverMostTrendingScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lur/d;

    invoke-direct {p2, p1}, Lur/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "ShortTvListScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lur/c;

    invoke-direct {p2, p1}, Lur/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
