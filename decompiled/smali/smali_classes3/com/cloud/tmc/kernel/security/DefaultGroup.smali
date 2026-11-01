.class public final enum Lcom/cloud/tmc/kernel/security/DefaultGroup;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Group;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/security/DefaultGroup;",
        ">;",
        "Lcom/cloud/tmc/kernel/security/Group;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/security/DefaultGroup;

.field public static final enum EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

.field public static final enum INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

.field public static final enum PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;


# instance fields
.field private description:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

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
.method private static synthetic $values()[Lcom/cloud/tmc/kernel/security/DefaultGroup;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cloud/tmc/kernel/security/DefaultGroup;

    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const-string v1, "internal"

    const-string v2, "first party"

    const-string v3, "INTERNAL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cloud/tmc/kernel/security/DefaultGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->INTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    new-instance v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const-string v1, "partner"

    const-string v2, "second party"

    const-string v3, "PARTNER"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cloud/tmc/kernel/security/DefaultGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->PARTNER:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    new-instance v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;

    const-string v1, "external"

    const-string v2, "third party"

    const-string v3, "EXTERNAL"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cloud/tmc/kernel/security/DefaultGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    invoke-static {}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->$values()[Lcom/cloud/tmc/kernel/security/DefaultGroup;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->$VALUES:[Lcom/cloud/tmc/kernel/security/DefaultGroup;

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

    iput-object p3, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->groupName:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/security/DefaultGroup;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/security/DefaultGroup;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->$VALUES:[Lcom/cloud/tmc/kernel/security/DefaultGroup;

    invoke-virtual {v0}, [Lcom/cloud/tmc/kernel/security/DefaultGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/security/DefaultGroup;

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

    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearPermissions()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public groupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->groupName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->permissions:Ljava/util/List;

    return-object v0
.end method
