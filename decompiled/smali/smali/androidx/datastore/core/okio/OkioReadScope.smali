.class public Landroidx/datastore/core/okio/OkioReadScope;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/core/p;


# instance fields
.field private final a:Lokio/FileSystem;

.field private final b:Lokio/Path;

.field private final c:Landroidx/datastore/core/okio/b;

.field private final d:Landroidx/datastore/core/okio/a;


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/b;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->a:Lokio/FileSystem;

    iput-object p2, p0, Landroidx/datastore/core/okio/OkioReadScope;->b:Lokio/Path;

    iput-object p3, p0, Landroidx/datastore/core/okio/OkioReadScope;->c:Landroidx/datastore/core/okio/b;

    new-instance p1, Landroidx/datastore/core/okio/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/datastore/core/okio/a;-><init>(Z)V

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->d:Landroidx/datastore/core/okio/a;

    return-void
.end method

.method static synthetic j(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/okio/OkioReadScope$readData$1;-><init>(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object v2, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/datastore/core/okio/OkioReadScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/datastore/core/okio/OkioReadScope;->f()V

    :try_start_2
    iget-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->a:Lokio/FileSystem;

    iget-object v2, p0, Landroidx/datastore/core/okio/OkioReadScope;->b:Lokio/Path;

    invoke-virtual {p1, v2}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v2, p0, Landroidx/datastore/core/okio/OkioReadScope;->c:Landroidx/datastore/core/okio/b;

    iput-object p0, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    invoke-interface {v2, p1, v0}, Landroidx/datastore/core/okio/b;->a(Lokio/BufferedSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    :goto_1
    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_2
    move-object p0, v5

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    :goto_3
    if-eqz p0, :cond_6

    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    :try_start_6
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_0
    move-object p0, v2

    goto :goto_6

    :cond_6
    :goto_4
    move-object p0, p1

    move-object p1, v5

    :goto_5
    if-nez p0, :cond_7

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_b

    :cond_7
    throw p0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    :goto_6
    iget-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->a:Lokio/FileSystem;

    iget-object v2, p0, Landroidx/datastore/core/okio/OkioReadScope;->b:Lokio/Path;

    invoke-virtual {p1, v2}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->a:Lokio/FileSystem;

    iget-object v2, p0, Landroidx/datastore/core/okio/OkioReadScope;->b:Lokio/Path;

    invoke-virtual {p1, v2}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    :try_start_7
    iget-object p0, p0, Landroidx/datastore/core/okio/OkioReadScope;->c:Landroidx/datastore/core/okio/b;

    iput-object p1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    invoke-interface {p0, p1, v0}, Landroidx/datastore/core/okio/b;->a(Lokio/BufferedSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_7
    if-eqz p0, :cond_a

    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v5

    goto :goto_a

    :catchall_6
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_8
    if-eqz p0, :cond_9

    :try_start_9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_9
    move-object v6, v5

    move-object v5, p1

    move-object p1, v6

    :cond_a
    :goto_a
    if-nez v5, :cond_b

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_b

    :cond_b
    throw v5

    :cond_c
    iget-object p0, p0, Landroidx/datastore/core/okio/OkioReadScope;->c:Landroidx/datastore/core/okio/b;

    invoke-interface {p0}, Landroidx/datastore/core/okio/b;->c()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    :goto_b
    return-object p1
.end method


# virtual methods
.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/core/okio/OkioReadScope;->j(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->d:Landroidx/datastore/core/okio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/core/okio/a;->b(Z)V

    return-void
.end method

.method protected final f()V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->d:Landroidx/datastore/core/okio/a;

    invoke-virtual {v0}, Landroidx/datastore/core/okio/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This scope has already been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final g()Lokio/FileSystem;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->a:Lokio/FileSystem;

    return-object v0
.end method

.method protected final h()Lokio/Path;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->b:Lokio/Path;

    return-object v0
.end method

.method protected final i()Landroidx/datastore/core/okio/b;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->c:Landroidx/datastore/core/okio/b;

    return-object v0
.end method
