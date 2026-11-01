.class final enum Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallbackStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field public static final enum ON_CANCELED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field public static final enum ON_FAILED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field public static final enum ON_READ_COMPLETED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

.field public static final enum ON_SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_READ_COMPLETED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_FAILED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_CANCELED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const-string v1, "ON_READ_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_READ_COMPLETED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const-string v1, "ON_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const-string v1, "ON_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_FAILED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    const-string v1, "ON_CANCELED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_CANCELED:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    invoke-static {}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->$values()[Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->$VALUES:[Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->$VALUES:[Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    return-object v0
.end method
