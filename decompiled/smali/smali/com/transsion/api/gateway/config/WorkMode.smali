.class public final enum Lcom/transsion/api/gateway/config/WorkMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/api/gateway/config/WorkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/api/gateway/config/WorkMode;

.field public static final enum MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

.field public static final enum MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;


# instance fields
.field private mode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/api/gateway/config/WorkMode;

    const-string v1, "MODE_TEST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/api/gateway/config/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/api/gateway/config/WorkMode;->MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;

    new-instance v1, Lcom/transsion/api/gateway/config/WorkMode;

    const-string v4, "MODE_ONLINE"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/transsion/api/gateway/config/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/transsion/api/gateway/config/WorkMode;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/transsion/api/gateway/config/WorkMode;->$VALUES:[Lcom/transsion/api/gateway/config/WorkMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/api/gateway/config/WorkMode;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/api/gateway/config/WorkMode;
    .locals 1

    const-class v0, Lcom/transsion/api/gateway/config/WorkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/api/gateway/config/WorkMode;

    return-object p0
.end method

.method public static values()[Lcom/transsion/api/gateway/config/WorkMode;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/config/WorkMode;->$VALUES:[Lcom/transsion/api/gateway/config/WorkMode;

    invoke-virtual {v0}, [Lcom/transsion/api/gateway/config/WorkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/api/gateway/config/WorkMode;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/transsion/api/gateway/config/WorkMode;->mode:I

    return v0
.end method
