.class public final enum Lcom/transsion/home/enum/BottomTabType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/enum/BottomTabType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/home/enum/BottomTabType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/home/enum/BottomTabType;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "Companion",
        "a",
        "HOME",
        "SHORT_TV",
        "H5TAB",
        "OPERATION",
        "DOWNLOAD",
        "PREMIUM",
        "ROOM",
        "NOVEL",
        "SUBSCRIPTION",
        "ME",
        "Home_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/home/enum/BottomTabType;

.field public static final Companion:Lcom/transsion/home/enum/BottomTabType$a;

.field public static final enum DOWNLOAD:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum H5TAB:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum HOME:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum ME:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum NOVEL:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum OPERATION:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum PREMIUM:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum ROOM:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum SHORT_TV:Lcom/transsion/home/enum/BottomTabType;

.field public static final enum SUBSCRIPTION:Lcom/transsion/home/enum/BottomTabType;

.field public static final TAB_CODE_COMMUNITY:Ljava/lang/String; = "COMMUNITY"

.field public static final TAB_CODE_DOWNLOAD:Ljava/lang/String; = "DOWNLOADS"

.field public static final TAB_CODE_HOME:Ljava/lang/String; = "HOME"

.field public static final TAB_CODE_ME:Ljava/lang/String; = "ME"

.field public static final TAB_CODE_MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final TAB_CODE_NOVEL:Ljava/lang/String; = "NOVEL"

.field public static final TAB_CODE_PREMIUM:Ljava/lang/String; = "PREMIUM"

.field public static final TAB_CODE_SHORT_TV:Ljava/lang/String; = "SHORTTV"

.field public static final TAB_CODE_SUBSCRIPTION:Ljava/lang/String; = "SUBSCRIPTION"

.field public static final TAB_OPEN_TYPE_LAND_PAGE:Ljava/lang/String; = "NEW_PAGE"

.field public static final TAB_OPEN_TYPE_TAB:Ljava/lang/String; = "REDIRECT"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/home/enum/BottomTabType;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/transsion/home/enum/BottomTabType;

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->HOME:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->SHORT_TV:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->H5TAB:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->OPERATION:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->DOWNLOAD:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->PREMIUM:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->ROOM:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->NOVEL:Lcom/transsion/home/enum/BottomTabType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->SUBSCRIPTION:Lcom/transsion/home/enum/BottomTabType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/BottomTabType;->ME:Lcom/transsion/home/enum/BottomTabType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x0

    const-string v2, "BT_HOME"

    const-string v3, "HOME"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->HOME:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x1

    const-string v2, "BT_SHORTTV"

    const-string v3, "SHORT_TV"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->SHORT_TV:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x2

    const-string v2, "BT_H5"

    const-string v3, "H5TAB"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->H5TAB:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x3

    const-string v2, "BT_OPERATE"

    const-string v3, "OPERATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->OPERATION:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x4

    const-string v2, "BT_DOWNLOADS"

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->DOWNLOAD:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x5

    const-string v2, "BT_PREMIUM"

    const-string v3, "PREMIUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->PREMIUM:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x6

    const-string v2, "BT_COMMUNITY"

    const-string v3, "ROOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->ROOM:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/4 v1, 0x7

    const-string v2, "BT_NOVEL"

    const-string v3, "NOVEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->NOVEL:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/16 v1, 0x8

    const-string v2, "BT_SUBSCRIPTION"

    const-string v3, "SUBSCRIPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->SUBSCRIPTION:Lcom/transsion/home/enum/BottomTabType;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType;

    const/16 v1, 0x9

    const-string v2, "BT_ME"

    const-string v3, "ME"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/BottomTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->ME:Lcom/transsion/home/enum/BottomTabType;

    invoke-static {}, Lcom/transsion/home/enum/BottomTabType;->$values()[Lcom/transsion/home/enum/BottomTabType;

    move-result-object v0

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->$VALUES:[Lcom/transsion/home/enum/BottomTabType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/transsion/home/enum/BottomTabType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/enum/BottomTabType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/enum/BottomTabType;->Companion:Lcom/transsion/home/enum/BottomTabType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/home/enum/BottomTabType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/home/enum/BottomTabType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/home/enum/BottomTabType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/home/enum/BottomTabType;
    .locals 1

    const-class v0, Lcom/transsion/home/enum/BottomTabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/home/enum/BottomTabType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/home/enum/BottomTabType;
    .locals 1

    sget-object v0, Lcom/transsion/home/enum/BottomTabType;->$VALUES:[Lcom/transsion/home/enum/BottomTabType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/home/enum/BottomTabType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/enum/BottomTabType;->value:Ljava/lang/String;

    return-object v0
.end method
