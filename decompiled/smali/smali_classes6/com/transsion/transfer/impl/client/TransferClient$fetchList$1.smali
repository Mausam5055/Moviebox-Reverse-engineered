.class public final Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;
.super Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/TransferClient;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function2;

.field final synthetic b:Lcom/transsion/transfer/impl/client/TransferClient;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->a:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->b:Lcom/transsion/transfer/impl/client/TransferClient;

    iput-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/transfer/androidasync/http/k;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->d(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/k;Ljava/lang/String;)V
    .locals 6

    sget-object p2, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {p2}, Lcom/transsion/transfer/impl/client/TransferClient$a;->j()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetchList onCompleted: result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->a:Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->b:Lcom/transsion/transfer/impl/client/TransferClient;

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->a:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;->c:Ljava/lang/String;

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->A(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1$onCompleted$1$data$1;

    invoke-direct {v2}, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1$onCompleted$1$data$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/impl/entity/TransferResponse;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getCode()I

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    sget-object v3, Lcom/transsion/transfer/impl/server/service/b;->c:Lcom/transsion/transfer/impl/server/service/b$a;

    invoke-virtual {v3}, Lcom/transsion/transfer/impl/server/service/b$a;->a()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetchList#onCompleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileReceiveCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAbsolutePath(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/transsion/transfer/impl/entity/FileData;->setFileReceiveCachePath(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    sget-object p3, Lmv/a;->a:Lmv/a;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p3, v1}, Lmv/a;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/TransferResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-interface {v0, p2, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :goto_5
    return-void
.end method
