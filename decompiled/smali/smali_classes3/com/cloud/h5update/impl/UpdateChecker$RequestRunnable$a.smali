.class public final Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;


# direct methods
.method constructor <init>(Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    invoke-virtual {p1}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/h5update/impl/UpdateChecker;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    invoke-virtual {v0}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    invoke-virtual {v1}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateManager()Lt6/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/h5update/impl/UpdateChecker;->a(Ljava/lang/String;Lt6/c;)V

    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p2}, Lgg/b;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    invoke-virtual {p2}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/h5update/impl/UpdateChecker;

    move-result-object p2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable$a;->a:Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;

    invoke-virtual {v0}, Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;->getUpdateManager()Lt6/c;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/cloud/h5update/impl/UpdateChecker;->b(Ljava/lang/String;Lt6/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
