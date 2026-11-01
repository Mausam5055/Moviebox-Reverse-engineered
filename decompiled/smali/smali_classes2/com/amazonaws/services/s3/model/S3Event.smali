.class public final enum Lcom/amazonaws/services/s3/model/S3Event;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/S3Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

.field public static final enum ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v1, 0x0

    const-string v2, "s3:ReducedRedundancyLostObject"

    const-string v3, "ReducedRedundancyLostObject"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/S3Event;->ReducedRedundancyLostObject:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v2, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v3, 0x1

    const-string v4, "s3:ObjectCreated:*"

    const-string v5, "ObjectCreated"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreated:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v4, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v5, 0x2

    const-string v6, "s3:ObjectCreated:Put"

    const-string v7, "ObjectCreatedByPut"

    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPut:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v6, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v7, 0x3

    const-string v8, "s3:ObjectCreated:Post"

    const-string v9, "ObjectCreatedByPost"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByPost:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v8, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v9, 0x4

    const-string v10, "s3:ObjectCreated:Copy"

    const-string v11, "ObjectCreatedByCopy"

    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCopy:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v10, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v11, 0x5

    const-string v12, "s3:ObjectCreated:CompleteMultipartUpload"

    const-string v13, "ObjectCreatedByCompleteMultipartUpload"

    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/amazonaws/services/s3/model/S3Event;->ObjectCreatedByCompleteMultipartUpload:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v12, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v13, 0x6

    const-string v14, "s3:ObjectRemoved:*"

    const-string v15, "ObjectRemoved"

    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemoved:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v14, Lcom/amazonaws/services/s3/model/S3Event;

    const/4 v15, 0x7

    const-string v13, "s3:ObjectRemoved:Delete"

    const-string v11, "ObjectRemovedDelete"

    invoke-direct {v14, v11, v15, v13}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDelete:Lcom/amazonaws/services/s3/model/S3Event;

    new-instance v11, Lcom/amazonaws/services/s3/model/S3Event;

    const/16 v13, 0x8

    const-string v15, "s3:ObjectRemoved:DeleteMarkerCreated"

    const-string v9, "ObjectRemovedDeleteMarkerCreated"

    invoke-direct {v11, v9, v13, v15}, Lcom/amazonaws/services/s3/model/S3Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/amazonaws/services/s3/model/S3Event;->ObjectRemovedDeleteMarkerCreated:Lcom/amazonaws/services/s3/model/S3Event;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/amazonaws/services/s3/model/S3Event;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v11, v9, v13

    sput-object v9, Lcom/amazonaws/services/s3/model/S3Event;->$VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

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

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/S3Event;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Event;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/model/S3Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/S3Event;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/S3Event;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/model/S3Event;->$VALUES:[Lcom/amazonaws/services/s3/model/S3Event;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/S3Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/S3Event;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Event;->event:Ljava/lang/String;

    return-object v0
.end method
