.class public final enum Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum ALREADY_CONNECION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum ALREADY_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum CONNECTION_FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum N0_CHARACTERISTIC_DESCRIPTOR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum NOT_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum NO_DEVICE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum NO_POSITION_FUNCTION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

.field public static final enum SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;


# instance fields
.field private code:J

.field private descript:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_DEVICE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->CONNECTION_FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_CONNECION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC_DESCRIPTOR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_POSITION_FUNCTION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v3, -0x1

    const-string v5, "fail"

    const-string v1, "FAIL"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v6, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x0

    const-string v12, "ok"

    const-string v8, "OK"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v4, 0x2710

    const-string v6, "not init adapter"

    const-string v2, "NOT_INIT"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x2711

    const-string v12, "not available bluetooth"

    const-string v8, "NOT_AVALIABLE"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v4, 0x2712

    const-string v6, "no device"

    const-string v2, "NO_DEVICE"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_DEVICE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x2713

    const-string v12, "connection fail"

    const-string v8, "CONNECTION_FAIL"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->CONNECTION_FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v4, 0x2714

    const-string v6, "already connected"

    const-string v2, "ALREADY_CONNECION"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_CONNECION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x2715

    const-string v12, "no characteristic"

    const-string v8, "N0_CHARACTERISTIC"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v4, 0x2716

    const-string v6, "no characteristic\'s descriptor"

    const-string v2, "N0_CHARACTERISTIC_DESCRIPTOR"

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC_DESCRIPTOR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x2717

    const-string v12, "needs to open the positioning function"

    const-string v8, "NO_POSITION_FUNCTION"

    const/16 v9, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_POSITION_FUNCTION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v4, 0x2718

    const-string v6, "system error"

    const-string v2, "SYSTEM_ERROR"

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x271d

    const-string v12, "invalid_data"

    const-string v8, "INVALID_DATA"

    const/16 v9, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v4, 0x271e

    const-string v6, "no permission"

    const-string v2, "NOT_PERMISSION"

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    const-wide/16 v10, 0x271f

    const-string v12, "already_init"

    const-string v8, "ALREADY_INIT"

    const/16 v9, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-static {}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->$values()[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->$VALUES:[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->code:J

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->descript:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x2

    if-eqz p3, :cond_1

    const-string p5, ""

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->$VALUES:[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->code:J

    return-wide v0
.end method

.method public final getDescript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->descript:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->code:J

    return-void
.end method

.method public final setDescript(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->descript:Ljava/lang/String;

    return-void
.end method
