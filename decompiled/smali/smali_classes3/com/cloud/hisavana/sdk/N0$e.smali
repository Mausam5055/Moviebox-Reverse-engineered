.class final enum Lcom/cloud/hisavana/sdk/N0$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/N0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/N0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cloud/hisavana/sdk/N0$e;

.field public static final enum b:Lcom/cloud/hisavana/sdk/N0$e;

.field public static final enum c:Lcom/cloud/hisavana/sdk/N0$e;

.field public static final enum d:Lcom/cloud/hisavana/sdk/N0$e;

.field public static final enum e:Lcom/cloud/hisavana/sdk/N0$e;

.field public static final enum f:Lcom/cloud/hisavana/sdk/N0$e;

.field private static final synthetic g:[Lcom/cloud/hisavana/sdk/N0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/N0$e;

    const-string v1, "OPEN_PS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/N0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->a:Lcom/cloud/hisavana/sdk/N0$e;

    new-instance v0, Lcom/cloud/hisavana/sdk/N0$e;

    const-string v1, "OPEN_AHA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/N0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->b:Lcom/cloud/hisavana/sdk/N0$e;

    new-instance v0, Lcom/cloud/hisavana/sdk/N0$e;

    const-string v1, "OPEN_GP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/N0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->c:Lcom/cloud/hisavana/sdk/N0$e;

    new-instance v0, Lcom/cloud/hisavana/sdk/N0$e;

    const-string v1, "OPEN_URLSCHEMA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/N0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->d:Lcom/cloud/hisavana/sdk/N0$e;

    new-instance v0, Lcom/cloud/hisavana/sdk/N0$e;

    const-string v1, "OPEN_OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/N0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->e:Lcom/cloud/hisavana/sdk/N0$e;

    new-instance v0, Lcom/cloud/hisavana/sdk/N0$e;

    const-string v1, "OPEN_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/N0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->f:Lcom/cloud/hisavana/sdk/N0$e;

    invoke-static {}, Lcom/cloud/hisavana/sdk/N0$e;->a()[Lcom/cloud/hisavana/sdk/N0$e;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/N0$e;->g:[Lcom/cloud/hisavana/sdk/N0$e;

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

.method private static synthetic a()[Lcom/cloud/hisavana/sdk/N0$e;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/N0$e;

    sget-object v1, Lcom/cloud/hisavana/sdk/N0$e;->a:Lcom/cloud/hisavana/sdk/N0$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/N0$e;->b:Lcom/cloud/hisavana/sdk/N0$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/N0$e;->c:Lcom/cloud/hisavana/sdk/N0$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/N0$e;->d:Lcom/cloud/hisavana/sdk/N0$e;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/N0$e;->e:Lcom/cloud/hisavana/sdk/N0$e;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/N0$e;->f:Lcom/cloud/hisavana/sdk/N0$e;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/N0$e;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/N0$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/N0$e;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/N0$e;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/N0$e;->g:[Lcom/cloud/hisavana/sdk/N0$e;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/N0$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/N0$e;

    return-object v0
.end method
