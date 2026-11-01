.class public final enum Lcom/amazonaws/services/s3/model/StorageClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/StorageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum IntelligentTiering:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum OneZoneInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum Standard:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum StandardInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;


# instance fields
.field private final storageClassId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    const-string v3, "Standard"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v2, Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v3, 0x1

    const-string v4, "REDUCED_REDUNDANCY"

    const-string v5, "ReducedRedundancy"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v4, Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v5, 0x2

    const-string v6, "GLACIER"

    const-string v7, "Glacier"

    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v6, Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v7, 0x3

    const-string v8, "STANDARD_IA"

    const-string v9, "StandardInfrequentAccess"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/s3/model/StorageClass;->StandardInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v8, Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v9, 0x4

    const-string v10, "ONEZONE_IA"

    const-string v11, "OneZoneInfrequentAccess"

    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/amazonaws/services/s3/model/StorageClass;->OneZoneInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;

    new-instance v10, Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v11, 0x5

    const-string v12, "INTELLIGENT_TIERING"

    const-string v13, "IntelligentTiering"

    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/amazonaws/services/s3/model/StorageClass;->IntelligentTiering:Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

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

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/amazonaws/services/s3/model/StorageClass;->values()[Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/StorageClass;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/StorageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-object v0
.end method
