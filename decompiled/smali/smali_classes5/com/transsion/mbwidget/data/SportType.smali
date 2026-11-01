.class public final enum Lcom/transsion/mbwidget/data/SportType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mbwidget/data/SportType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/mbwidget/data/SportType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/mbwidget/data/SportType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "FOOTBALL",
        "CRICKET",
        "BASKETBALL",
        "DeskWidget_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/mbwidget/data/SportType;

.field public static final enum BASKETBALL:Lcom/transsion/mbwidget/data/SportType;

.field public static final enum CRICKET:Lcom/transsion/mbwidget/data/SportType;

.field public static final Companion:Lcom/transsion/mbwidget/data/SportType$a;

.field public static final enum FOOTBALL:Lcom/transsion/mbwidget/data/SportType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/mbwidget/data/SportType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/transsion/mbwidget/data/SportType;

    sget-object v1, Lcom/transsion/mbwidget/data/SportType;->FOOTBALL:Lcom/transsion/mbwidget/data/SportType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mbwidget/data/SportType;->CRICKET:Lcom/transsion/mbwidget/data/SportType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mbwidget/data/SportType;->BASKETBALL:Lcom/transsion/mbwidget/data/SportType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/mbwidget/data/SportType;

    const-string v1, "FOOTBALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/mbwidget/data/SportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/mbwidget/data/SportType;->FOOTBALL:Lcom/transsion/mbwidget/data/SportType;

    new-instance v0, Lcom/transsion/mbwidget/data/SportType;

    const-string v1, "CRICKET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/mbwidget/data/SportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/mbwidget/data/SportType;->CRICKET:Lcom/transsion/mbwidget/data/SportType;

    new-instance v0, Lcom/transsion/mbwidget/data/SportType;

    const-string v1, "BASKETBALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/mbwidget/data/SportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/mbwidget/data/SportType;->BASKETBALL:Lcom/transsion/mbwidget/data/SportType;

    invoke-static {}, Lcom/transsion/mbwidget/data/SportType;->$values()[Lcom/transsion/mbwidget/data/SportType;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbwidget/data/SportType;->$VALUES:[Lcom/transsion/mbwidget/data/SportType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/mbwidget/data/SportType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/transsion/mbwidget/data/SportType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mbwidget/data/SportType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mbwidget/data/SportType;->Companion:Lcom/transsion/mbwidget/data/SportType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/mbwidget/data/SportType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/mbwidget/data/SportType;
    .locals 1

    const-class v0, Lcom/transsion/mbwidget/data/SportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/mbwidget/data/SportType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/mbwidget/data/SportType;
    .locals 1

    sget-object v0, Lcom/transsion/mbwidget/data/SportType;->$VALUES:[Lcom/transsion/mbwidget/data/SportType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/mbwidget/data/SportType;

    return-object v0
.end method
