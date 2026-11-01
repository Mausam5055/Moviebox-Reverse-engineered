.class public final enum Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

.field public static final enum Collect:Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

.field public static final enum Meter:Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;


# direct methods
.method private static synthetic $values()[Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    sget-object v1, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->Meter:Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    const-string v1, "Collect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    new-instance v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    const-string v1, "Meter"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->Meter:Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    invoke-static {}, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->$values()[Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->$VALUES:[Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;
    .locals 1

    const-class v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->$VALUES:[Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    invoke-virtual {v0}, [Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/transfer/androidasync/util/ThrottleTimeout$ThrottleMode;

    return-object v0
.end method
