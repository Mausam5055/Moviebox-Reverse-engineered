.class public final enum Lcom/cloud/tmc/integration/permission/api/TmcGroup;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Group;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/permission/api/TmcGroup;",
        ">;",
        "Lcom/cloud/tmc/kernel/security/Group;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_ABOVE_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_EMPTY:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_HIGH:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_LOW:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

.field public static final enum LEVEL_NONE:Lcom/cloud/tmc/integration/permission/api/TmcGroup;


# instance fields
.field private desc:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/integration/permission/api/TmcGroup;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_HIGH:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_ABOVE_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_LOW:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_NONE:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_EMPTY:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x0

    const-string v2, "level_high"

    const-string v3, "LEVEL_HIGH"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_HIGH:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x1

    const-string v2, "level_abovemedium"

    const-string v3, "LEVEL_ABOVE_MEDIUM"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_ABOVE_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x2

    const-string v2, "level_medium"

    const-string v3, "LEVEL_MEDIUM"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_MEDIUM:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x3

    const-string v2, "level_low"

    const-string v3, "LEVEL_LOW"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_LOW:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x4

    const-string v2, "level_none"

    const-string v3, "LEVEL_NONE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_NONE:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x5

    const-string v2, "level_app_default"

    const-string v3, "LEVEL_APP_DEFAULT"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_APP_DEFAULT:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    new-instance v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    const/4 v1, 0x6

    const-string v2, "level_empty"

    const-string v3, "LEVEL_EMPTY"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->LEVEL_EMPTY:Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    invoke-static {}, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->$values()[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->$VALUES:[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->level:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/permission/api/TmcGroup;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/permission/api/TmcGroup;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->$VALUES:[Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    invoke-virtual {v0}, [Lcom/cloud/tmc/integration/permission/api/TmcGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/permission/api/TmcGroup;

    return-object v0
.end method


# virtual methods
.method public assignPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearPermissions()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public groupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->level:Ljava/lang/String;

    return-object v0
.end method

.method public permissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/security/Permission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/permission/api/TmcGroup;->permissions:Ljava/util/List;

    return-object v0
.end method
