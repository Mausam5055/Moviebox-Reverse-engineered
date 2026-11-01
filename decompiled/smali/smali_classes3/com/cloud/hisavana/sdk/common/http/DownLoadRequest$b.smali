.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;
.super Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-direct {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public i(I[BLjava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownLoadRequest --> onFailure statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    const/16 v1, 0x100

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->d(I[BLjava/lang/Throwable;)V

    :cond_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    iput p1, p2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f:I

    return-void
.end method

.method public l(Lokhttp3/Headers;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->l(Lokhttp3/Headers;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-response-cdn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    iput-object v1, v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->d:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n(I[B)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownLoadRequest --> onSuccess statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownLoadRequest"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->h(II[BLjava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    array-length p2, p2

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c:J

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    sput-boolean v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    :cond_3
    return-void
.end method

.method public o(I[BLjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownLoadRequest --> onSuccess statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    move-result v0

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->h(II[BLjava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    array-length p2, p2

    int-to-long p2, p2

    iput-wide p2, p1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c:J

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    sput-boolean v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    :cond_3
    return-void
.end method
