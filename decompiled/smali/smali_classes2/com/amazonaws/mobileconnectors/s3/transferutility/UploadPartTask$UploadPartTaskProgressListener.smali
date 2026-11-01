.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadPartTaskProgressListener"
.end annotation


# instance fields
.field private a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

.field private b:J

.field final synthetic c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->b()I

    move-result v0

    const/16 v1, 0x20

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a()Lcom/amazonaws/logging/Log;

    move-result-object p1

    const-string v0, "Reset Event triggered. Resetting the bytesCurrent to 0."

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->b:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->b:J

    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->b:J

    :goto_0
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v0

    iget-wide v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b(IJ)V

    return-void
.end method
