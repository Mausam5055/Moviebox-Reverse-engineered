.class Lcom/aliyun/downloader/nativeclass/JniDownloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;->onError(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    iput-object p2, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    iput-object p3, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->val$ext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$200(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aliyun/player/bean/ErrorInfo;

    invoke-direct {v0}, Lcom/aliyun/player/bean/ErrorInfo;-><init>()V

    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setCode(Lcom/aliyun/player/bean/ErrorCode;)V

    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setMsg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->val$ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$2;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-static {v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$200(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    :cond_0
    return-void
.end method
