.class public final Lcom/transsion/mbwidget/data/SportType$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mbwidget/data/SportType;
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

    invoke-direct {p0}, Lcom/transsion/mbwidget/data/SportType$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/transsion/mbwidget/data/SportType;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x17862b6d

    if-eq v1, v2, :cond_5

    const v2, 0x2b576cc5

    if-eq v1, v2, :cond_3

    const v2, 0x3d87a3f1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "cricket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->CRICKET:Lcom/transsion/mbwidget/data/SportType;

    goto :goto_1

    :cond_3
    const-string v1, "basketball"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->BASKETBALL:Lcom/transsion/mbwidget/data/SportType;

    goto :goto_1

    :cond_5
    const-string v1, "football"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->FOOTBALL:Lcom/transsion/mbwidget/data/SportType;

    :cond_6
    :goto_1
    return-object v0
.end method
