.class public final enum Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

.field public static final enum HmacMD5:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

.field public static final enum HmacSHA1:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

.field public static final enum HmacSHA256:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    sget-object v1, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->HmacSHA1:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->HmacSHA256:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->HmacMD5:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    const-string v1, "HmacSHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->HmacSHA1:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    new-instance v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    const-string v1, "HmacSHA256"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->HmacSHA256:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    new-instance v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    const-string v1, "HmacMD5"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->HmacMD5:Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    invoke-static {}, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->$values()[Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->$VALUES:[Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->$VALUES:[Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/sign/SignAlgorithm;

    return-object v0
.end method
