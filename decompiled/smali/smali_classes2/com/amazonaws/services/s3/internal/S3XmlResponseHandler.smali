.class public Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Lcom/amazonaws/logging/Log;


# instance fields
.field private c:Lcom/amazonaws/transform/Unmarshaller;

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->c(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c:Lcom/amazonaws/transform/Unmarshaller;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c:Lcom/amazonaws/transform/Unmarshaller;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e:Lcom/amazonaws/logging/Log;

    const-string v2, "Beginning to parse service response XML"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->k(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c:Lcom/amazonaws/transform/Unmarshaller;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/amazonaws/transform/Unmarshaller;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Done parsing service response XML"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->d(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
