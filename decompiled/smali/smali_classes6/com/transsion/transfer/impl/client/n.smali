.class public final Lcom/transsion/transfer/impl/client/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/client/n$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/transfer/impl/client/n$a;


# instance fields
.field private final a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/transsion/transfer/impl/f;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/transfer/impl/client/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/client/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transfer/impl/client/n;->i:Lcom/transsion/transfer/impl/client/n$a;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/n;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/transfer/impl/client/n;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/transfer/impl/client/n;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/transfer/impl/client/n;->e:Lcom/transsion/transfer/impl/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/n;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/transfer/impl/client/n;)Lcom/transsion/transfer/impl/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/n;->e:Lcom/transsion/transfer/impl/f;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/transfer/impl/client/n;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/transfer/impl/client/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/n;->f()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/transfer/impl/client/n;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/impl/client/n;->h:Z

    return-void
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->f:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/transfer/impl/client/n;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/transfer/impl/client/n;->h:Z

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-direct {p0, v0}, Lcom/transsion/transfer/impl/client/n;->g(Lcom/transsion/transfer/impl/entity/FileData;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_1
    return-void
.end method

.method private final g(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getTempCoverFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "/"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/transsion/transfer/impl/client/n;->h:Z

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/transfer/impl/client/n;->a:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    sget-object v5, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    iget-object v6, p0, Lcom/transsion/transfer/impl/client/n;->d:Ljava/lang/String;

    invoke-static {v2}, Ljv/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/client/fetchFile?file="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/transsion/transfer/impl/client/n;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/transfer/impl/client/n;->c:Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v7}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    move-result-object v2

    new-instance v5, Lcom/transsion/transfer/impl/client/n$b;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/transsion/transfer/impl/client/n$b;-><init>(Lcom/transsion/transfer/impl/client/n;Ljava/io/File;Ljava/io/File;Lcom/transsion/transfer/impl/entity/FileData;)V

    invoke-virtual {v4, v2, v3, v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->t(Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$g;)Lcom/transsion/transfer/androidasync/future/f;

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->e:Lcom/transsion/transfer/impl/f;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/f;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/n;->f()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized e(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/n;->f:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/n;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
