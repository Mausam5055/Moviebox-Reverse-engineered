.class public final enum Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/audio/PlayerInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_CAN_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_ENDED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_SEEKED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_SEEKING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_STOP:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

.field public static final enum ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_CAN_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_STOP:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ENDED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_CAN_PLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_CAN_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_PLAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PLAY:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_PAUSE:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_STOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_STOP:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_ENDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ENDED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_ERROR:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_WAITING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_SEEKING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKING:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    new-instance v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    const-string v1, "ON_SEEKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->ON_SEEKED:Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-static {}, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->$values()[Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->$VALUES:[Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->$VALUES:[Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;

    return-object v0
.end method
