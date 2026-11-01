.class public final enum Lcom/amazonaws/services/s3/model/CannedAccessControlList;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/CannedAccessControlList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum AuthenticatedRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum AwsExecRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum BucketOwnerFullControl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum BucketOwnerRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum LogDeliveryWrite:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum Private:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum PublicRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public static final enum PublicReadWrite:Lcom/amazonaws/services/s3/model/CannedAccessControlList;


# instance fields
.field private final cannedAclHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v1, 0x0

    const-string v2, "private"

    const-string v3, "Private"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->Private:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v2, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v3, 0x1

    const-string v4, "public-read"

    const-string v5, "PublicRead"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->PublicRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v4, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v5, 0x2

    const-string v6, "public-read-write"

    const-string v7, "PublicReadWrite"

    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->PublicReadWrite:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v6, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v7, 0x3

    const-string v8, "authenticated-read"

    const-string v9, "AuthenticatedRead"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->AuthenticatedRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v8, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v9, 0x4

    const-string v10, "log-delivery-write"

    const-string v11, "LogDeliveryWrite"

    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->LogDeliveryWrite:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v10, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v11, 0x5

    const-string v12, "bucket-owner-read"

    const-string v13, "BucketOwnerRead"

    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->BucketOwnerRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v12, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v13, 0x6

    const-string v14, "bucket-owner-full-control"

    const-string v15, "BucketOwnerFullControl"

    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->BucketOwnerFullControl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    new-instance v14, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/4 v15, 0x7

    const-string v13, "aws-exec-read"

    const-string v11, "AwsExecRead"

    invoke-direct {v14, v11, v15, v13}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->AwsExecRead:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    const/16 v11, 0x8

    new-array v11, v11, [Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    aput-object v0, v11, v1

    aput-object v2, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->$VALUES:[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

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

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->cannedAclHeader:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->$VALUES:[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/CannedAccessControlList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->cannedAclHeader:Ljava/lang/String;

    return-object v0
.end method
