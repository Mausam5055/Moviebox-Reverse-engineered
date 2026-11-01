.class Lcom/aliyun/thumbnail/ThumbnailHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

.field final synthetic val$imgUrl:Ljava/lang/String;

.field final synthetic val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iput-object p2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    move-object v1, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    invoke-interface {v0, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;->onSuccess([B)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not open url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v3, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1400(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/net/URLConnection;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1500(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open url responseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open url exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    invoke-interface {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;->onFail()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$imgUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$3;->val$l:Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;

    invoke-interface {v0, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;->onSuccess([B)V

    :goto_3
    return-void

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    throw v0

    :goto_6
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method
