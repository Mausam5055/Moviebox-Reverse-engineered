.class public final enum Lcom/transsion/mpush/core/config/PushMsgType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/mpush/core/config/PushMsgType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/mpush/core/config/PushMsgType;",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "LOCAL_PUSH",
        "DOWNLOAD_PUSH",
        "PERMANENT",
        "TOP10_PUSH",
        "SUBJECT_SEEKING",
        "ONLINE_JSON_PUSH",
        "FIREBASE_PUSH",
        "MBPush_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum DOWNLOAD_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum FIREBASE_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum LOCAL_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum ONLINE_JSON_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum PERMANENT:Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum SUBJECT_SEEKING:Lcom/transsion/mpush/core/config/PushMsgType;

.field public static final enum TOP10_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/mpush/core/config/PushMsgType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/transsion/mpush/core/config/PushMsgType;

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->LOCAL_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->DOWNLOAD_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->PERMANENT:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->TOP10_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->SUBJECT_SEEKING:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->ONLINE_JSON_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/mpush/core/config/PushMsgType;->FIREBASE_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "LOCAL_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->LOCAL_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x1

    const-string v2, "4"

    const-string v3, "DOWNLOAD_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->DOWNLOAD_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x2

    const-string v2, "5"

    const-string v3, "PERMANENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->PERMANENT:Lcom/transsion/mpush/core/config/PushMsgType;

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x3

    const-string v2, "6"

    const-string v3, "TOP10_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->TOP10_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x4

    const-string v2, "10"

    const-string v3, "SUBJECT_SEEKING"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->SUBJECT_SEEKING:Lcom/transsion/mpush/core/config/PushMsgType;

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x5

    const-string v2, "11"

    const-string v3, "ONLINE_JSON_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->ONLINE_JSON_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    new-instance v0, Lcom/transsion/mpush/core/config/PushMsgType;

    const/4 v1, 0x6

    const-string v2, "101"

    const-string v3, "FIREBASE_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/mpush/core/config/PushMsgType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->FIREBASE_PUSH:Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-static {}, Lcom/transsion/mpush/core/config/PushMsgType;->$values()[Lcom/transsion/mpush/core/config/PushMsgType;

    move-result-object v0

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->$VALUES:[Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/mpush/core/config/PushMsgType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/mpush/core/config/PushMsgType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/mpush/core/config/PushMsgType;
    .locals 1

    const-class v0, Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/mpush/core/config/PushMsgType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/mpush/core/config/PushMsgType;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/config/PushMsgType;->$VALUES:[Lcom/transsion/mpush/core/config/PushMsgType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/mpush/core/config/PushMsgType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/config/PushMsgType;->type:Ljava/lang/String;

    return-object v0
.end method
