.class public final Landroidx/datastore/core/okio/OkioStorageConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/core/t;


# instance fields
.field private final a:Lokio/FileSystem;

.field private final b:Lokio/Path;

.field private final c:Landroidx/datastore/core/okio/b;

.field private final d:Landroidx/datastore/core/k;

.field private final e:Lkotlin/jvm/functions/Function0;

.field private final f:Landroidx/datastore/core/okio/a;

.field private final g:Lkotlinx/coroutines/sync/a;


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/b;Landroidx/datastore/core/k;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClose"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    iput-object p2, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->b:Lokio/Path;

    iput-object p3, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->c:Landroidx/datastore/core/okio/b;

    iput-object p4, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->d:Landroidx/datastore/core/k;

    iput-object p5, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->e:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/datastore/core/okio/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/datastore/core/okio/a;-><init>(Z)V

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->f:Landroidx/datastore/core/okio/a;

    const/4 p1, 0x1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->g:Lkotlinx/coroutines/sync/a;

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->f:Landroidx/datastore/core/okio/a;

    invoke-virtual {v0}, Landroidx/datastore/core/okio/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StorageConnection has already been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;-><init>(Landroidx/datastore/core/okio/OkioStorageConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/core/b;

    iget-object v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lokio/Path;

    iget-object v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/a;

    iget-object v0, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/core/okio/OkioStorageConnection;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/a;

    iget-object v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    iget-object v5, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/datastore/core/okio/OkioStorageConnection;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v5

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorageConnection;->f()V

    iget-object p2, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->b:Lokio/Path;

    invoke-virtual {p2}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object p2, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    invoke-virtual {p2, v2, v3}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    iget-object p2, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->g:Lkotlinx/coroutines/sync/a;

    iput-object p0, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/a;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, p0

    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v7, Landroidx/datastore/core/okio/OkioStorageConnection;->b:Lokio/Path;

    invoke-virtual {v8}, Lokio/Path;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v5, v7, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    invoke-virtual {v5, v2, v3}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    new-instance v3, Landroidx/datastore/core/okio/OkioWriteScope;

    iget-object v5, v7, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    iget-object v8, v7, Landroidx/datastore/core/okio/OkioStorageConnection;->c:Landroidx/datastore/core/okio/b;

    invoke-direct {v3, v5, v2, v8}, Landroidx/datastore/core/okio/OkioWriteScope;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-object v7, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    invoke-interface {p1, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v2

    move-object p1, v3

    move-object v0, v7

    move-object v2, p2

    :goto_2
    :try_start_4
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {p1}, Landroidx/datastore/core/b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p1, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    if-nez p1, :cond_7

    :try_start_6
    iget-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    invoke-virtual {p1, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    iget-object p2, v0, Landroidx/datastore/core/okio/OkioStorageConnection;->b:Lokio/Path;

    invoke-virtual {p1, v1, p2}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto :goto_8

    :catch_0
    move-exception p1

    move-object v7, v0

    move-object p2, v2

    move-object v2, v1

    goto :goto_7

    :cond_6
    :goto_4
    :try_start_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_3
    move-exception p1

    move-object v1, v2

    move-object v0, v7

    move-object v2, p2

    move-object p2, p1

    move-object p1, v3

    :goto_5
    :try_start_9
    invoke-interface {p1}, Landroidx/datastore/core/b;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_5
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    :goto_7
    :try_start_b
    iget-object v0, v7, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    invoke-virtual {v0, v2}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_8

    :try_start_c
    iget-object v0, v7, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    invoke-virtual {v0, v2}, Lokio/FileSystem;->delete(Lokio/Path;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catch_2
    :cond_8
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_8
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must have a parent path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->f:Landroidx/datastore/core/okio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/core/okio/a;->b(Z)V

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;-><init>(Landroidx/datastore/core/okio/OkioStorageConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->Z$0:Z

    iget-object v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/core/b;

    iget-object v0, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/core/okio/OkioStorageConnection;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorageConnection;->f()V

    iget-object p2, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->g:Lkotlinx/coroutines/sync/a;

    invoke-static {p2, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->b(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p2

    :try_start_1
    new-instance v2, Landroidx/datastore/core/okio/OkioReadScope;

    iget-object v5, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->a:Lokio/FileSystem;

    iget-object v6, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->b:Lokio/Path;

    iget-object v7, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->c:Landroidx/datastore/core/okio/b;

    invoke-direct {v2, v5, v6, v7}, Landroidx/datastore/core/okio/OkioReadScope;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object p0, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->Z$0:Z

    iput v3, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    invoke-interface {p1, v2, v5, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, v2

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroidx/datastore/core/b;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection;->g:Lkotlinx/coroutines/sync/a;

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_4
    return-object p2

    :cond_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v0, p0

    move-object v1, v2

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_3
    :try_start_5
    invoke-interface {v1}, Landroidx/datastore/core/b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_6
    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_5
    move-exception p1

    move-object v0, p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_5
    if-eqz p1, :cond_6

    iget-object p1, v0, Landroidx/datastore/core/okio/OkioStorageConnection;->g:Lkotlinx/coroutines/sync/a;

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_6
    throw p2
.end method

.method public e()Landroidx/datastore/core/k;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->d:Landroidx/datastore/core/k;

    return-object v0
.end method
