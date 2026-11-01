.class public final enum Lcom/transsion/push/tracker/Tracker$KEY;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/push/tracker/Tracker$KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_CFG:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_CLICK:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_CONVERSION:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_IMG_DOWNLOAD:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_INSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_MSG:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_REPORT:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_SHOW:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_TOKEN:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_TRACE:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_TRIG:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum ATHENA_TID_FOR_APP_UNINSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_BROADCAST:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_BROADCAST_GCM:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_REACH_ERROR:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_SYNC_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_SYNC_PROCESS:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_TOKEN_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

.field public static final enum INFOEYE_FOR_TOKEN_PROCESS:Lcom/transsion/push/tracker/Tracker$KEY;


# instance fields
.field public event:Ljava/lang/String;

.field public infoeyeEvent:Ljava/lang/String;

.field public tid:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/push/tracker/Tracker$KEY;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/transsion/push/tracker/Tracker$KEY;

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_BROADCAST:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_BROADCAST_GCM:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_REACH_ERROR:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_TOKEN_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_TOKEN_PROCESS:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_SYNC_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_SYNC_PROCESS:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TOKEN:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRIG:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_REPORT:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CFG:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_MSG:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_SHOW:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CLICK:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_IMG_DOWNLOAD:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRACE:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_UNINSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CONVERSION:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v6, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v4, "infoeye"

    const-string v5, "hipush_broadcast"

    const-string v1, "INFOEYE_FOR_BROADCAST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_BROADCAST:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v11, "infoeye"

    const-string v12, "hipush_broadcast_gcm"

    const-string v8, "INFOEYE_FOR_BROADCAST_GCM"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_BROADCAST_GCM:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v5, "infoeye"

    const-string v6, "hipush_reach_error"

    const-string v2, "INFOEYE_FOR_REACH_ERROR"

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_REACH_ERROR:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v11, "infoeye"

    const-string v12, "hipush_token_init"

    const-string v8, "INFOEYE_FOR_TOKEN_INIT"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_TOKEN_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v5, "infoeye"

    const-string v6, "hipush_token_process"

    const-string v2, "INFOEYE_FOR_TOKEN_PROCESS"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_TOKEN_PROCESS:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v11, "infoeye"

    const-string v12, "hipush_sync_init"

    const-string v8, "INFOEYE_FOR_SYNC_INIT"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_SYNC_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v5, "infoeye"

    const-string v6, "hipush_sync_process"

    const-string v2, "INFOEYE_FOR_SYNC_PROCESS"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->INFOEYE_FOR_SYNC_PROCESS:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed811

    const-string v2, "init"

    const-string v3, "ATHENA_TID_FOR_APP_INIT"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INIT:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed812

    const-string v2, "token"

    const-string v3, "ATHENA_TID_FOR_APP_TOKEN"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TOKEN:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed813

    const-string v2, "trig"

    const-string v3, "ATHENA_TID_FOR_APP_TRIG"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRIG:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed814

    const-string v2, "report"

    const-string v3, "ATHENA_TID_FOR_APP_REPORT"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_REPORT:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed815

    const-string v2, "cfg"

    const-string v3, "ATHENA_TID_FOR_APP_CFG"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CFG:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v9, "msg"

    const-string v10, "hipush_reach_init"

    const-string v6, "ATHENA_TID_FOR_APP_MSG"

    const/16 v7, 0xc

    const v8, 0x9ed816

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_MSG:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v15, "arrive"

    const-string v16, "hipush_reach_process"

    const-string v12, "ATHENA_TID_FOR_APP_TARGET"

    const/16 v13, 0xd

    const v14, 0x9ed817

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TARGET:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v5, "show"

    const-string v6, "hipush_show"

    const-string v2, "ATHENA_TID_FOR_APP_SHOW"

    const/16 v3, 0xe

    const v4, 0x9ed818

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_SHOW:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const-string v11, "click"

    const-string v12, "hipush_click"

    const-string v8, "ATHENA_TID_FOR_APP_CLICK"

    const/16 v9, 0xf

    const v10, 0x9ed819

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CLICK:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed81a

    const-string v2, "img"

    const-string v3, "ATHENA_TID_FOR_APP_IMG_DOWNLOAD"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_IMG_DOWNLOAD:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed81b

    const-string v2, "trace"

    const-string v3, "ATHENA_TID_FOR_APP_TRACE"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_TRACE:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed81c

    const-string v2, "uninstall"

    const-string v3, "ATHENA_TID_FOR_APP_UNINSTALL"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_UNINSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed81d

    const-string v2, "conversion"

    const-string v3, "ATHENA_TID_FOR_APP_CONVERSION"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_CONVERSION:Lcom/transsion/push/tracker/Tracker$KEY;

    new-instance v0, Lcom/transsion/push/tracker/Tracker$KEY;

    const v1, 0x9ed81e

    const-string v2, "install"

    const-string v3, "ATHENA_TID_FOR_APP_INSTALL"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/push/tracker/Tracker$KEY;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->ATHENA_TID_FOR_APP_INSTALL:Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-static {}, Lcom/transsion/push/tracker/Tracker$KEY;->$values()[Lcom/transsion/push/tracker/Tracker$KEY;

    move-result-object v0

    sput-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->$VALUES:[Lcom/transsion/push/tracker/Tracker$KEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/transsion/push/tracker/Tracker$KEY;->event:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/transsion/push/tracker/Tracker$KEY;->event:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/push/tracker/Tracker$KEY;->tid:I

    iput-object p5, p0, Lcom/transsion/push/tracker/Tracker$KEY;->infoeyeEvent:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/push/tracker/Tracker$KEY;
    .locals 1

    const-class v0, Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/push/tracker/Tracker$KEY;

    return-object p0
.end method

.method public static values()[Lcom/transsion/push/tracker/Tracker$KEY;
    .locals 1

    sget-object v0, Lcom/transsion/push/tracker/Tracker$KEY;->$VALUES:[Lcom/transsion/push/tracker/Tracker$KEY;

    invoke-virtual {v0}, [Lcom/transsion/push/tracker/Tracker$KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/push/tracker/Tracker$KEY;

    return-object v0
.end method
