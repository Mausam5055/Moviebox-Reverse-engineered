.class public final Lcom/cloud/h5update/utils/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/h5update/download/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/h5update/utils/a;->a(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/h5update/bean/PreloadResource;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cloud/h5update/bean/PreloadResource;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    iput-object p2, p0, Lcom/cloud/h5update/utils/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/cloud/h5update/utils/a$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 1

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lt6/b;->onZipDownloadCancel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 6

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/cloud/h5update/utils/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getCompletedSize()J

    move-result-wide v2

    iget-object p1, p0, Lcom/cloud/h5update/utils/a$a;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getTotalSize()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lt6/b;->onDownloadProcess(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public c(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/cloud/h5update/download/DownloadTask;I)V
    .locals 2

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v0, 0x67

    const-string v1, "ERROR_DOWNLOAD"

    invoke-interface {p1, p2, v0, v1}, Lt6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {v0}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lt6/b;->onZipDownloadFinish(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v1, p0, Lcom/cloud/h5update/utils/a$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/h5update/utils/l;->n(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/h5update/utils/a$a;->a:Lcom/cloud/h5update/bean/PreloadResource;

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->a()V

    return-void
.end method
