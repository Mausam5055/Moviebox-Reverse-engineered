.class public Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)[B
    .locals 4

    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "CompleteMultipartUpload"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/PartETag;

    const-string v2, "Part"

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "PartNumber"

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "ETag"

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->c()[B

    move-result-object p0

    return-object p0
.end method
