.class Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;
.super Lcom/squareup/okhttp/internal/NamedRunnable;

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;)V
    .locals 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;)V

    return-void
.end method

.method private ackSettingsLater(Lcom/squareup/okhttp/internal/framed/h;)V
    .locals 5

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->i(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g0(I)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/a;->v(Lokio/BufferedSource;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->w()V

    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 5

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-boolean v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-object v1, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2, v1, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catch_2
    :goto_2
    :try_start_3
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, v0, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3, v2, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    throw v1
.end method

.method public goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 3

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/squareup/okhttp/internal/framed/a;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/squareup/okhttp/internal/framed/a;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->m(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->o()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/a;->y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->o()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v0(I)Lcom/squareup/okhttp/internal/framed/a;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/b;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p1, p3, p5, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->k(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g0(I)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p3, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->G0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->n(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I

    move-result p6

    if-gt p3, p6, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    rem-int/lit8 p6, p3, 0x2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->p(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I

    move-result v1

    rem-int/2addr v1, p4

    if-ne p6, v1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    new-instance p6, Lcom/squareup/okhttp/internal/framed/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-object v1, p6

    move v2, p3

    move v4, p1

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/a;-><init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p1, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)I

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;

    const-string p5, "OkHttp %s stream %d"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p4, v2

    const/4 v1, 0x1

    aput-object p3, p4, v1

    invoke-direct {p2, p0, p5, p4, p6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/framed/a;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p1, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v0(I)Lcom/squareup/okhttp/internal/framed/a;

    return-void

    :cond_6
    invoke-virtual {v1, p5, p6}, Lcom/squareup/okhttp/internal/framed/a;->x(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->w()V

    :cond_7
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ping(ZII)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->w(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Lcom/squareup/okhttp/internal/framed/g;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p3, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->x(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/g;)V

    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->T(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->h(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->t(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v0(I)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public settings(ZLcom/squareup/okhttp/internal/framed/h;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result v3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/h;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/h;->j(Lcom/squareup/okhttp/internal/framed/h;)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d0()Lcom/squareup/okhttp/Protocol;

    move-result-object p1

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p1, v5, :cond_1

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/squareup/okhttp/internal/framed/h;)V

    :cond_1
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q:Lcom/squareup/okhttp/internal/framed/h;

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/h;->e(I)I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eq p1, p2, :cond_3

    if-eq p1, v3, :cond_3

    sub-int/2addr p1, v3

    int-to-long p1, p1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->u(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->a0(J)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->v(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z

    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->q(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lcom/squareup/okhttp/internal/framed/a;

    invoke-interface {v3, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [Lcom/squareup/okhttp/internal/framed/a;

    goto :goto_1

    :cond_3
    move-wide p1, v4

    :cond_4
    :goto_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->s()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;

    const-string v8, "OkHttp %s settings"

    iget-object v9, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->b(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v0

    invoke-direct {v7, p0, v8, v10}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    cmp-long v2, p1, v4

    if-eqz v2, :cond_5

    array-length v2, v6

    :goto_2
    if-ge v0, v2, :cond_5

    aget-object v3, v6, v0

    monitor-enter v3

    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->i(J)V

    monitor-exit v3

    add-int/2addr v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    return-void

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public windowUpdate(IJ)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-wide v1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->o:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->g0(I)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/a;->i(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
