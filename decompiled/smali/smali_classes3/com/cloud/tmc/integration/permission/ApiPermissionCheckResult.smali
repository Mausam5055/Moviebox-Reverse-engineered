.class public final enum Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

.field public static final enum ALLOW:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

.field public static final enum DENY:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

.field public static final enum IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    sget-object v1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->ALLOW:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->DENY:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->IGNORE:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    new-instance v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    const-string v1, "ALLOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->ALLOW:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    new-instance v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    const-string v1, "DENY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->DENY:Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    invoke-static {}, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->$values()[Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->$VALUES:[Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->$VALUES:[Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    invoke-virtual {v0}, [Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/permission/ApiPermissionCheckResult;

    return-object v0
.end method
