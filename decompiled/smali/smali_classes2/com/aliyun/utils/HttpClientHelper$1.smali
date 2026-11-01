.class Lcom/aliyun/utils/HttpClientHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/HttpClientHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/HttpClientHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/HttpClientHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpClientHelper stop().... HttpsURLConnection.disconnect "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpClientHelper stop().... HttpURLConnection.disconnect "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
