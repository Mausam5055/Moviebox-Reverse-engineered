.class public final enum Lcom/transsion/base/infras_config/model/InfrasSourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/base/infras_config/model/InfrasSourceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/model/InfrasSourceType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ST_UNKNOWN",
        "ST_EMBEDDED",
        "ST_PROBER",
        "ST_PUSH",
        "ST_SNIFFER",
        "base_infras_config_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/base/infras_config/model/InfrasSourceType;

.field public static final enum ST_EMBEDDED:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ST_EMBEDDED"
    .end annotation
.end field

.field public static final enum ST_PROBER:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ST_PROBER"
    .end annotation
.end field

.field public static final enum ST_PUSH:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ST_PUSH"
    .end annotation
.end field

.field public static final enum ST_SNIFFER:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ST_SNIFFER"
    .end annotation
.end field

.field public static final enum ST_UNKNOWN:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ST_UNKNOWN"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/base/infras_config/model/InfrasSourceType;

    sget-object v1, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_UNKNOWN:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_EMBEDDED:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_PROBER:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_PUSH:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_SNIFFER:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const-string v1, "ST_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/InfrasSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_UNKNOWN:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    new-instance v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const-string v1, "ST_EMBEDDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/InfrasSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_EMBEDDED:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    new-instance v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const-string v1, "ST_PROBER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/InfrasSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_PROBER:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    new-instance v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const-string v1, "ST_PUSH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/InfrasSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_PUSH:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    new-instance v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    const-string v1, "ST_SNIFFER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/InfrasSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->ST_SNIFFER:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    invoke-static {}, Lcom/transsion/base/infras_config/model/InfrasSourceType;->$values()[Lcom/transsion/base/infras_config/model/InfrasSourceType;

    move-result-object v0

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->$VALUES:[Lcom/transsion/base/infras_config/model/InfrasSourceType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/transsion/base/infras_config/model/InfrasSourceType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 1

    const-class v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/base/infras_config/model/InfrasSourceType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 1

    sget-object v0, Lcom/transsion/base/infras_config/model/InfrasSourceType;->$VALUES:[Lcom/transsion/base/infras_config/model/InfrasSourceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/base/infras_config/model/InfrasSourceType;

    return-object v0
.end method
