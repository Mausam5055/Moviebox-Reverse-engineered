.class public final enum Lcom/transsion/tinker/lib/custom/api/PatchState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/tinker/lib/custom/api/PatchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum DOWNLOADING:Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum EXPIRED:Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

.field public static final enum ROLLBACK:Lcom/transsion/tinker/lib/custom/api/PatchState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/tinker/lib/custom/api/PatchState;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/transsion/tinker/lib/custom/api/PatchState;

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->DOWNLOADING:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->ROLLBACK:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->EXPIRED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->DOWNLOADING:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "INSTALLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "ROLLBACK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->ROLLBACK:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "BLACKLISTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    new-instance v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "EXPIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/tinker/lib/custom/api/PatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->EXPIRED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-static {}, Lcom/transsion/tinker/lib/custom/api/PatchState;->$values()[Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v0

    sput-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->$VALUES:[Lcom/transsion/tinker/lib/custom/api/PatchState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/tinker/lib/custom/api/PatchState;
    .locals 1

    const-class v0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/tinker/lib/custom/api/PatchState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/tinker/lib/custom/api/PatchState;
    .locals 1

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->$VALUES:[Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-virtual {v0}, [Lcom/transsion/tinker/lib/custom/api/PatchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/tinker/lib/custom/api/PatchState;

    return-object v0
.end method
