.class public final Lcom/cloud/h5update/utils/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/h5update/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/h5update/utils/a;

    invoke-direct {v0}, Lcom/cloud/h5update/utils/a;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/a;->a:Lcom/cloud/h5update/utils/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadResource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v1, p2}, Lcom/cloud/h5update/utils/l;->i(Lcom/cloud/h5update/bean/PreloadResource;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    invoke-virtual {v3}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cloud/h5update/download/DownloadManager;->h(Ljava/lang/String;)Lcom/cloud/h5update/download/DownloadTask;

    move-result-object v4

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getEncryptedStaticZip()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/cloud/h5update/bean/DownloadEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Lcom/cloud/h5update/utils/a$a;

    invoke-direct {v0, p2, v5, p1}, Lcom/cloud/h5update/utils/a$a;-><init>(Lcom/cloud/h5update/bean/PreloadResource;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v4, :cond_2

    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-virtual {p1, v2}, Lcom/cloud/h5update/bean/DownloadEntity;->setTaskId(Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/h5update/download/DownloadTask;

    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/cloud/h5update/bean/DownloadEntity;

    invoke-direct {p1, v1}, Lcom/cloud/h5update/download/DownloadTask;-><init>(Lcom/cloud/h5update/bean/DownloadEntity;)V

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/download/DownloadTask;->setListener(Lcom/cloud/h5update/download/a;)V

    sget-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v0}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lt6/b;->onZipDownloadStart(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object p2

    invoke-static {p2, p1, v8, v7, v6}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/cloud/h5update/download/DownloadTask;->getDownloadEntity()Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/cloud/h5update/download/DownloadTask;->setListener(Lcom/cloud/h5update/download/a;)V

    invoke-virtual {v3}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, p1, p2}, Lcom/cloud/h5update/utils/l;->n(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v4, v8, v7, v6}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v4, v8, v7, v6}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v4, v8, v7, v6}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v4}, Lcom/cloud/h5update/download/DownloadManager;->m(Lcom/cloud/h5update/download/DownloadTask;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v4, v8, v7, v6}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v4, v8, v7, v6}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Lcom/cloud/h5update/bean/PreloadResource;)V
    .locals 9

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadResource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lt6/b;->onZipTryDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->c()Landroid/content/Context;

    move-result-object p1

    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const-string v6, "ERROR_PARAMS"

    const/16 v7, 0x65

    const-string v8, "error url :"

    if-nez v2, :cond_4

    const-string v2, "https://"

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lgg/b;->a:Lgg/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgg/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v7, v6}, Lt6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v2, ".zip"

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/cloud/h5update/utils/a;->a(Landroid/content/Context;Lcom/cloud/h5update/bean/PreloadResource;)V

    goto :goto_1

    :cond_5
    sget-object p1, Lgg/b;->a:Lgg/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgg/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/PreloadResource;->getStaticZipUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v7, v6}, Lt6/b;->onError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
