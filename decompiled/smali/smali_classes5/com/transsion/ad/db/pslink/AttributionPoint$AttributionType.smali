.class public final enum Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/pslink/AttributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DISPLAY",
        "CLICK",
        "GP_CLICK",
        "lib_ad_gpRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field public static final enum CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field public static final enum DISPLAY:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field public static final enum GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    sget-object v1, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->DISPLAY:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->DISPLAY:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const-string v1, "CLICK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    const-string v1, "GP_CLICK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-static {}, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->$values()[Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->$VALUES:[Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;
    .locals 1

    const-class v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;
    .locals 1

    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->$VALUES:[Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    return-object v0
.end method
