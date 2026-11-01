.class public final Lcom/transsion/publish/PublishManager$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcw/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/PublishManager;->uploadCallback()Lcw/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/PublishManager;


# direct methods
.method constructor <init>(Lcom/transsion/publish/PublishManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)V
    .locals 7

    const-string v0, "localFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getCancelIng$p(Lcom/transsion/publish/PublishManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/transsion/publish/PublishManager;->access$uploadProgress(Lcom/transsion/publish/PublishManager;Ljava/lang/String;JJ)V

    iget-object p2, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p2}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/bean/PublishValue;

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/transsion/publish/bean/PublishValue;->setState(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "localFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getCancelIng$p(Lcom/transsion/publish/PublishManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {v0}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/publish/bean/PublishValue;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/transsion/publish/bean/PublishValue;->setUploadUrl(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p2}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/bean/PublishValue;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/publish/bean/PublishValue;->setState(I)V

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p1, p3}, Lcom/transsion/publish/PublishManager;->access$setTempBucket$p(Lcom/transsion/publish/PublishManager;Ljava/lang/String;)V

    :cond_3
    sget-object p1, Lew/a;->a:Lew/a;

    iget-object p2, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p2}, Lcom/transsion/publish/PublishManager;->access$getClassTag(Lcom/transsion/publish/PublishManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> bucket = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lew/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p1}, Lcom/transsion/publish/PublishManager;->access$uploadSuccess(Lcom/transsion/publish/PublishManager;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p2}, Lcom/transsion/publish/PublishManager;->access$getCancelIng$p(Lcom/transsion/publish/PublishManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p2}, Lcom/transsion/publish/PublishManager;->access$getPublishQueue$p(Lcom/transsion/publish/PublishManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/bean/PublishValue;

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/transsion/publish/bean/PublishValue;->setState(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/publish/PublishManager$f;->a:Lcom/transsion/publish/PublishManager;

    invoke-static {p1}, Lcom/transsion/publish/PublishManager;->access$uploadFail(Lcom/transsion/publish/PublishManager;)V

    return-void
.end method
