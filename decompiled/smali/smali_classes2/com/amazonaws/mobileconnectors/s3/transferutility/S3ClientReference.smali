.class abstract Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/AmazonS3;

    return-object p0
.end method

.method public static b(Ljava/lang/Integer;Lcom/amazonaws/services/s3/AmazonS3;)V
    .locals 1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
