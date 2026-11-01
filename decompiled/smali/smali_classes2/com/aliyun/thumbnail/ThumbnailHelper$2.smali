.class Lcom/aliyun/thumbnail/ThumbnailHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->requestBitmapAtPosition(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

.field final synthetic val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

.field final synthetic val$positionMs:J


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;J)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iput-object p2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    iput-wide p3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 4

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not get thumbnail at position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V

    return-void
.end method

.method public onSuccess([B)V
    .locals 4

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    invoke-static {v0, v1, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$600(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not get thumbnail at position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-static {p1, v0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$800(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
