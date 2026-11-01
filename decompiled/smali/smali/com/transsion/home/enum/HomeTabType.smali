.class public final enum Lcom/transsion/home/enum/HomeTabType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/enum/HomeTabType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/home/enum/HomeTabType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/home/enum/HomeTabType;",
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
        "TRENDING",
        "SUBJECT",
        "H5TAB",
        "SUB_OPERATION",
        "SUB_ROOM",
        "TV_CHANNEL_TAB",
        "SUB_SPORTS_LIVE",
        "SUB_NOVEL",
        "SHORT_TV_TAB",
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

.field private static final synthetic $VALUES:[Lcom/transsion/home/enum/HomeTabType;

.field public static final Companion:Lcom/transsion/home/enum/HomeTabType$a;

.field public static final enum H5TAB:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum SHORT_TV_TAB:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum SUBJECT:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum SUB_NOVEL:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum SUB_OPERATION:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum SUB_ROOM:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum SUB_SPORTS_LIVE:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum TRENDING:Lcom/transsion/home/enum/HomeTabType;

.field public static final enum TV_CHANNEL_TAB:Lcom/transsion/home/enum/HomeTabType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/home/enum/HomeTabType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/transsion/home/enum/HomeTabType;

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->TRENDING:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->SUBJECT:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->H5TAB:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->SUB_OPERATION:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->SUB_ROOM:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->TV_CHANNEL_TAB:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->SUB_SPORTS_LIVE:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->SUB_NOVEL:Lcom/transsion/home/enum/HomeTabType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/home/enum/HomeTabType;->SHORT_TV_TAB:Lcom/transsion/home/enum/HomeTabType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x0

    const-string v2, "TrenTab"

    const-string v3, "TRENDING"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->TRENDING:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x1

    const-string v2, "SubjTab"

    const-string v3, "SUBJECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->SUBJECT:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x2

    const-string v2, "H5Tab"

    const-string v3, "H5TAB"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->H5TAB:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x3

    const-string v2, "OperateTab"

    const-string v3, "SUB_OPERATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->SUB_OPERATION:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x4

    const-string v2, "CommunityTab"

    const-string v3, "SUB_ROOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->SUB_ROOM:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x5

    const-string v2, "TVChannelTab"

    const-string v3, "TV_CHANNEL_TAB"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->TV_CHANNEL_TAB:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x6

    const-string v2, "LiveTab"

    const-string v3, "SUB_SPORTS_LIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->SUB_SPORTS_LIVE:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/4 v1, 0x7

    const-string v2, "NovelTab"

    const-string v3, "SUB_NOVEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->SUB_NOVEL:Lcom/transsion/home/enum/HomeTabType;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType;

    const/16 v1, 0x8

    const-string v2, "ShortTvTab"

    const-string v3, "SHORT_TV_TAB"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/home/enum/HomeTabType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->SHORT_TV_TAB:Lcom/transsion/home/enum/HomeTabType;

    invoke-static {}, Lcom/transsion/home/enum/HomeTabType;->$values()[Lcom/transsion/home/enum/HomeTabType;

    move-result-object v0

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->$VALUES:[Lcom/transsion/home/enum/HomeTabType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/transsion/home/enum/HomeTabType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/enum/HomeTabType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/enum/HomeTabType;->Companion:Lcom/transsion/home/enum/HomeTabType$a;

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

    iput-object p3, p0, Lcom/transsion/home/enum/HomeTabType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/home/enum/HomeTabType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/home/enum/HomeTabType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/home/enum/HomeTabType;
    .locals 1

    const-class v0, Lcom/transsion/home/enum/HomeTabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/home/enum/HomeTabType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/home/enum/HomeTabType;
    .locals 1

    sget-object v0, Lcom/transsion/home/enum/HomeTabType;->$VALUES:[Lcom/transsion/home/enum/HomeTabType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/home/enum/HomeTabType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/enum/HomeTabType;->value:Ljava/lang/String;

    return-object v0
.end method
