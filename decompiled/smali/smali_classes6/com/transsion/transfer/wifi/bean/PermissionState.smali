.class public final enum Lcom/transsion/transfer/wifi/bean/PermissionState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/transfer/wifi/bean/PermissionState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/transfer/wifi/bean/PermissionState;",
        "",
        "state",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getState",
        "()Ljava/lang/String;",
        "PERMISSION_GRANTED",
        "PERMISSION_DENIED",
        "PERMISSION_REQUEST",
        "Transfer_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/transfer/wifi/bean/PermissionState;

.field public static final enum PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

.field public static final enum PERMISSION_GRANTED:Lcom/transsion/transfer/wifi/bean/PermissionState;

.field public static final enum PERMISSION_REQUEST:Lcom/transsion/transfer/wifi/bean/PermissionState;


# instance fields
.field private final state:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/transfer/wifi/bean/PermissionState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/transsion/transfer/wifi/bean/PermissionState;

    sget-object v1, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_GRANTED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_REQUEST:Lcom/transsion/transfer/wifi/bean/PermissionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/transfer/wifi/bean/PermissionState;

    const/4 v1, 0x0

    const-string v2, "granted"

    const-string v3, "PERMISSION_GRANTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/transfer/wifi/bean/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_GRANTED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    new-instance v0, Lcom/transsion/transfer/wifi/bean/PermissionState;

    const/4 v1, 0x1

    const-string v2, "denied"

    const-string v3, "PERMISSION_DENIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/transfer/wifi/bean/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_DENIED:Lcom/transsion/transfer/wifi/bean/PermissionState;

    new-instance v0, Lcom/transsion/transfer/wifi/bean/PermissionState;

    const/4 v1, 0x2

    const-string v2, "request"

    const-string v3, "PERMISSION_REQUEST"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/transfer/wifi/bean/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->PERMISSION_REQUEST:Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {}, Lcom/transsion/transfer/wifi/bean/PermissionState;->$values()[Lcom/transsion/transfer/wifi/bean/PermissionState;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->$VALUES:[Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/transfer/wifi/bean/PermissionState;->state:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/transfer/wifi/bean/PermissionState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/transfer/wifi/bean/PermissionState;
    .locals 1

    const-class v0, Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/transfer/wifi/bean/PermissionState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/transfer/wifi/bean/PermissionState;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/wifi/bean/PermissionState;->$VALUES:[Lcom/transsion/transfer/wifi/bean/PermissionState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/transfer/wifi/bean/PermissionState;

    return-object v0
.end method


# virtual methods
.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/bean/PermissionState;->state:Ljava/lang/String;

    return-object v0
.end method
