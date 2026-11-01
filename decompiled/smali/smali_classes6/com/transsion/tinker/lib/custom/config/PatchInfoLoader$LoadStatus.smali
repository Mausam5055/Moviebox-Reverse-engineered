.class public final enum Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

.field public static final enum AVAILABLE:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

.field public static final enum NETWORK_ERROR:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

.field public static final enum REVOKED_BY_SERVER:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;


# direct methods
.method private static synthetic $values()[Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    sget-object v1, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->AVAILABLE:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->REVOKED_BY_SERVER:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->NETWORK_ERROR:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->AVAILABLE:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    new-instance v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const-string v1, "REVOKED_BY_SERVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->REVOKED_BY_SERVER:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    new-instance v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->NETWORK_ERROR:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    invoke-static {}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->$values()[Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    move-result-object v0

    sput-object v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->$VALUES:[Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;
    .locals 1

    const-class v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    return-object p0
.end method

.method public static values()[Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;
    .locals 1

    sget-object v0, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->$VALUES:[Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    invoke-virtual {v0}, [Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    return-object v0
.end method
