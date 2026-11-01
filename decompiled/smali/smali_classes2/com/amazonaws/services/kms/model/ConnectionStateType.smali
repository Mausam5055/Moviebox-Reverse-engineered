.class public final enum Lcom/amazonaws/services/kms/model/ConnectionStateType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/ConnectionStateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum CONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum CONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum DISCONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum DISCONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field public static final enum FAILED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/ConnectionStateType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    const/4 v1, 0x0

    const-string v2, "CONNECTED"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->CONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    new-instance v3, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    const/4 v4, 0x1

    const-string v5, "CONNECTING"

    invoke-direct {v3, v5, v4, v5}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/kms/model/ConnectionStateType;->CONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    new-instance v6, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    const/4 v7, 0x2

    const-string v8, "FAILED"

    invoke-direct {v6, v8, v7, v8}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/kms/model/ConnectionStateType;->FAILED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    new-instance v9, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    const/4 v10, 0x3

    const-string v11, "DISCONNECTED"

    invoke-direct {v9, v11, v10, v11}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/services/kms/model/ConnectionStateType;->DISCONNECTED:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    new-instance v12, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    const/4 v13, 0x4

    const-string v14, "DISCONNECTING"

    invoke-direct {v12, v14, v13, v14}, Lcom/amazonaws/services/kms/model/ConnectionStateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/kms/model/ConnectionStateType;->DISCONNECTING:Lcom/amazonaws/services/kms/model/ConnectionStateType;

    const/4 v15, 0x5

    new-array v15, v15, [Lcom/amazonaws/services/kms/model/ConnectionStateType;

    aput-object v0, v15, v1

    aput-object v3, v15, v4

    aput-object v6, v15, v7

    aput-object v9, v15, v10

    aput-object v12, v15, v13

    sput-object v15, Lcom/amazonaws/services/kms/model/ConnectionStateType;->$VALUES:[Lcom/amazonaws/services/kms/model/ConnectionStateType;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amazonaws/services/kms/model/ConnectionStateType;->enumMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object p3, p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ConnectionStateType;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ConnectionStateType;
    .locals 1

    const-class v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/ConnectionStateType;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->$VALUES:[Lcom/amazonaws/services/kms/model/ConnectionStateType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/ConnectionStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/kms/model/ConnectionStateType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ConnectionStateType;->value:Ljava/lang/String;

    return-object v0
.end method
