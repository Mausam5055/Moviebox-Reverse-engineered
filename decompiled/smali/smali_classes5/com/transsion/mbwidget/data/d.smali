.class public final Lcom/transsion/mbwidget/data/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mbwidget/data/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mbwidget/data/d;

    invoke-direct {v0}, Lcom/transsion/mbwidget/data/d;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/data/d;->a:Lcom/transsion/mbwidget/data/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 3

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object v0

    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->UNKNOWN:Lcom/transsion/mbwidget/data/MatchStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object p1

    sget-object v0, Lcom/transsion/mbwidget/data/MatchStatus;->ENDED:Lcom/transsion/mbwidget/data/MatchStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final b(Lcom/transsion/mbwidget/data/SportMatch;)Z
    .locals 8

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object v0

    sget-object v1, Lcom/transsion/mbwidget/data/MatchStatus;->UNKNOWN:Lcom/transsion/mbwidget/data/MatchStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getStatus()Lcom/transsion/mbwidget/data/MatchStatus;

    move-result-object p1

    sget-object v0, Lcom/transsion/mbwidget/data/MatchStatus;->ING:Lcom/transsion/mbwidget/data/MatchStatus;

    if-ne p1, v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    invoke-virtual {p1}, Lcom/transsion/mbwidget/data/SportMatch;->getMatchTime()J

    move-result-wide v4

    const-wide/32 v6, 0x6ddd00

    add-long/2addr v4, v6

    cmp-long p1, v0, v4

    if-gtz p1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method
