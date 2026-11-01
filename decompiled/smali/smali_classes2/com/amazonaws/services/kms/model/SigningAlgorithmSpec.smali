.class public final enum Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum ECDSA_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum ECDSA_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum ECDSA_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PKCS1_V1_5_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PKCS1_V1_5_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PKCS1_V1_5_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PSS_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PSS_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field public static final enum RSASSA_PSS_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v1, 0x0

    const-string v2, "RSASSA_PSS_SHA_256"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PSS_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v3, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v4, 0x1

    const-string v5, "RSASSA_PSS_SHA_384"

    invoke-direct {v3, v5, v4, v5}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PSS_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v6, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v7, 0x2

    const-string v8, "RSASSA_PSS_SHA_512"

    invoke-direct {v6, v8, v7, v8}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PSS_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v9, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v10, 0x3

    const-string v11, "RSASSA_PKCS1_V1_5_SHA_256"

    invoke-direct {v9, v11, v10, v11}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PKCS1_V1_5_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v12, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v13, 0x4

    const-string v14, "RSASSA_PKCS1_V1_5_SHA_384"

    invoke-direct {v12, v14, v13, v14}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PKCS1_V1_5_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v15, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v13, 0x5

    const-string v10, "RSASSA_PKCS1_V1_5_SHA_512"

    invoke-direct {v15, v10, v13, v10}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->RSASSA_PKCS1_V1_5_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v13, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v7, 0x6

    const-string v4, "ECDSA_SHA_256"

    invoke-direct {v13, v4, v7, v4}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->ECDSA_SHA_256:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v7, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/4 v1, 0x7

    move-object/from16 v21, v4

    const-string v4, "ECDSA_SHA_384"

    invoke-direct {v7, v4, v1, v4}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->ECDSA_SHA_384:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v1, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    move-object/from16 v22, v4

    const/16 v4, 0x8

    move-object/from16 v23, v10

    const-string v10, "ECDSA_SHA_512"

    invoke-direct {v1, v10, v4, v10}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->ECDSA_SHA_512:Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/16 v4, 0x9

    new-array v4, v4, [Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    const/16 v20, 0x0

    aput-object v0, v4, v20

    const/16 v19, 0x1

    aput-object v3, v4, v19

    const/16 v18, 0x2

    aput-object v6, v4, v18

    const/16 v17, 0x3

    aput-object v9, v4, v17

    const/16 v16, 0x4

    aput-object v12, v4, v16

    const/16 v16, 0x5

    aput-object v15, v4, v16

    const/16 v16, 0x6

    aput-object v13, v4, v16

    const/16 v16, 0x7

    aput-object v7, v4, v16

    const/16 v16, 0x8

    aput-object v1, v4, v16

    sput-object v4, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->$VALUES:[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->enumMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object p3, p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
    .locals 1

    const-class v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->$VALUES:[Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->value:Ljava/lang/String;

    return-object v0
.end method
