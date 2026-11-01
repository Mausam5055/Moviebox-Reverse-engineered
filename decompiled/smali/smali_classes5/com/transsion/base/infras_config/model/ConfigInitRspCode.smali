.class public final enum Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IRC_UNKNOWN",
        "IRC_NOT_MODIFIED",
        "IRC_MODIFIED",
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

.field private static final synthetic $VALUES:[Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

.field public static final enum IRC_MODIFIED:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IRC_MODIFIED"
    .end annotation
.end field

.field public static final enum IRC_NOT_MODIFIED:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IRC_NOT_MODIFIED"
    .end annotation
.end field

.field public static final enum IRC_UNKNOWN:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IRC_UNKNOWN"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    sget-object v1, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->IRC_UNKNOWN:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->IRC_NOT_MODIFIED:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->IRC_MODIFIED:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    const-string v1, "IRC_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->IRC_UNKNOWN:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    new-instance v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    const-string v1, "IRC_NOT_MODIFIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->IRC_NOT_MODIFIED:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    new-instance v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    const-string v1, "IRC_MODIFIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->IRC_MODIFIED:Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    invoke-static {}, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->$values()[Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    move-result-object v0

    sput-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->$VALUES:[Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 1

    const-class v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/base/infras_config/model/ConfigInitRspCode;
    .locals 1

    sget-object v0, Lcom/transsion/base/infras_config/model/ConfigInitRspCode;->$VALUES:[Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/base/infras_config/model/ConfigInitRspCode;

    return-object v0
.end method
