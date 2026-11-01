.class public final enum Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

.field public static final enum ERROR:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

.field public static final enum EXECUTING:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

.field public static final enum FINISH:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

.field public static final enum INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->EXECUTING:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->ERROR:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->FINISH:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const-string v1, "EXECUTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->EXECUTING:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->ERROR:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const-string v1, "FINISH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->FINISH:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->$values()[Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->$VALUES:[Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->$VALUES:[Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-virtual {v0}, [Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    return-object v0
.end method


# virtual methods
.method public canContinue()Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->EXECUTING:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
