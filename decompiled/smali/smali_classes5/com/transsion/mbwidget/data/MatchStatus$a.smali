.class public final Lcom/transsion/mbwidget/data/MatchStatus$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/data/MatchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/MatchStatus$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/MatchStatus;
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1b71cfeb

    if-eq v0, v1, :cond_4

    const v1, 0x158c97fd

    if-eq v0, v1, :cond_2

    const v1, 0x34b6ce14

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MatchNotStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->NOT_START:Lcom/transsion/mbwidget/data/MatchStatus;

    goto :goto_1

    :cond_2
    const-string v0, "MatchIng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->ING:Lcom/transsion/mbwidget/data/MatchStatus;

    goto :goto_1

    :cond_4
    const-string v0, "MatchEnded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->ENDED:Lcom/transsion/mbwidget/data/MatchStatus;

    goto :goto_1

    :cond_6
    :goto_0
    sget-object p1, Lcom/transsion/mbwidget/data/MatchStatus;->UNKNOWN:Lcom/transsion/mbwidget/data/MatchStatus;

    :goto_1
    return-object p1
.end method
