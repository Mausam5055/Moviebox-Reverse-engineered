.class public final enum Lcom/amazonaws/services/kms/model/DataKeyPairSpec;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/DataKeyPairSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum ECC_NIST_P256:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum ECC_NIST_P384:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum ECC_NIST_P521:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum ECC_SECG_P256K1:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum RSA_2048:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum RSA_3072:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field public static final enum RSA_4096:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/DataKeyPairSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v1, 0x0

    const-string v2, "RSA_2048"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->RSA_2048:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v3, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v4, 0x1

    const-string v5, "RSA_3072"

    invoke-direct {v3, v5, v4, v5}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->RSA_3072:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v6, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v7, 0x2

    const-string v8, "RSA_4096"

    invoke-direct {v6, v8, v7, v8}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->RSA_4096:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v9, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v10, 0x3

    const-string v11, "ECC_NIST_P256"

    invoke-direct {v9, v11, v10, v11}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->ECC_NIST_P256:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v12, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v13, 0x4

    const-string v14, "ECC_NIST_P384"

    invoke-direct {v12, v14, v13, v14}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->ECC_NIST_P384:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v15, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v13, 0x5

    const-string v10, "ECC_NIST_P521"

    invoke-direct {v15, v10, v13, v10}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->ECC_NIST_P521:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v13, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v7, 0x6

    const-string v4, "ECC_SECG_P256K1"

    invoke-direct {v13, v4, v7, v4}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->ECC_SECG_P256K1:Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    aput-object v0, v7, v1

    const/4 v1, 0x1

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v6, v7, v1

    const/4 v1, 0x3

    aput-object v9, v7, v1

    const/4 v1, 0x4

    aput-object v12, v7, v1

    const/4 v1, 0x5

    aput-object v15, v7, v1

    const/4 v1, 0x6

    aput-object v13, v7, v1

    sput-object v7, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->$VALUES:[Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->enumMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/DataKeyPairSpec;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/DataKeyPairSpec;
    .locals 1

    const-class v0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/DataKeyPairSpec;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->$VALUES:[Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/kms/model/DataKeyPairSpec;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->value:Ljava/lang/String;

    return-object v0
.end method
