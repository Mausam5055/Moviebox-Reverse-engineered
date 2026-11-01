.class public final enum Lcom/transsion/search_pugc/constant/SearchType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/search_pugc/constant/SearchType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/search_pugc/constant/SearchType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UGC_COLLECTION",
        "VERTICAL_RANK",
        "VERTICAL_RANK_TYPE2",
        "HASH_TAG",
        "UGC_VIDEO",
        "UNKNOW",
        "Search_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

.field public static final enum VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/search_pugc/constant/SearchType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/transsion/search_pugc/constant/SearchType;

    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/search_pugc/constant/SearchType;->UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    const-string v1, "UGC_COLLECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    const-string v1, "VERTICAL_RANK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    const-string v1, "VERTICAL_RANK_TYPE2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    const-string v1, "HASH_TAG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->HASH_TAG:Lcom/transsion/search_pugc/constant/SearchType;

    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    const-string v1, "UGC_VIDEO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

    new-instance v0, Lcom/transsion/search_pugc/constant/SearchType;

    const-string v1, "UNKNOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/search_pugc/constant/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UNKNOW:Lcom/transsion/search_pugc/constant/SearchType;

    invoke-static {}, Lcom/transsion/search_pugc/constant/SearchType;->$values()[Lcom/transsion/search_pugc/constant/SearchType;

    move-result-object v0

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$VALUES:[Lcom/transsion/search_pugc/constant/SearchType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/transsion/search_pugc/constant/SearchType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/search_pugc/constant/SearchType;
    .locals 1

    const-class v0, Lcom/transsion/search_pugc/constant/SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/search_pugc/constant/SearchType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/search_pugc/constant/SearchType;
    .locals 1

    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->$VALUES:[Lcom/transsion/search_pugc/constant/SearchType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/search_pugc/constant/SearchType;

    return-object v0
.end method
