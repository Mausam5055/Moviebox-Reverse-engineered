.class public final enum Lcom/cloud/tmc/kernel/constants/PageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/constants/PageType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/constants/PageType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;II)V",
        "getType",
        "()I",
        "NATIVE",
        "H5",
        "H5_SHELL",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/constants/PageType;

.field public static final enum H5:Lcom/cloud/tmc/kernel/constants/PageType;

.field public static final enum H5_SHELL:Lcom/cloud/tmc/kernel/constants/PageType;

.field public static final enum NATIVE:Lcom/cloud/tmc/kernel/constants/PageType;


# instance fields
.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/kernel/constants/PageType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cloud/tmc/kernel/constants/PageType;

    sget-object v1, Lcom/cloud/tmc/kernel/constants/PageType;->NATIVE:Lcom/cloud/tmc/kernel/constants/PageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/constants/PageType;->H5:Lcom/cloud/tmc/kernel/constants/PageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/constants/PageType;->H5_SHELL:Lcom/cloud/tmc/kernel/constants/PageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/kernel/constants/PageType;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/constants/PageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/kernel/constants/PageType;->NATIVE:Lcom/cloud/tmc/kernel/constants/PageType;

    new-instance v0, Lcom/cloud/tmc/kernel/constants/PageType;

    const-string v1, "H5"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/cloud/tmc/kernel/constants/PageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/kernel/constants/PageType;->H5:Lcom/cloud/tmc/kernel/constants/PageType;

    new-instance v0, Lcom/cloud/tmc/kernel/constants/PageType;

    const-string v1, "H5_SHELL"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/constants/PageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/kernel/constants/PageType;->H5_SHELL:Lcom/cloud/tmc/kernel/constants/PageType;

    invoke-static {}, Lcom/cloud/tmc/kernel/constants/PageType;->$values()[Lcom/cloud/tmc/kernel/constants/PageType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/constants/PageType;->$VALUES:[Lcom/cloud/tmc/kernel/constants/PageType;

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

    iput p3, p0, Lcom/cloud/tmc/kernel/constants/PageType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/constants/PageType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/constants/PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/constants/PageType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/constants/PageType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/constants/PageType;->$VALUES:[Lcom/cloud/tmc/kernel/constants/PageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/constants/PageType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/kernel/constants/PageType;->type:I

    return v0
.end method
