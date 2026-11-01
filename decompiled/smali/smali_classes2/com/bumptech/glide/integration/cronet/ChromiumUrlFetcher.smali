.class final Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;
.implements Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TT;>;",
        "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;"
    }
.end annotation


# instance fields
.field private callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

.field private final url:Lcom/bumptech/glide/load/model/GlideUrl;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ByteBufferParser;Lcom/bumptech/glide/load/model/GlideUrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;",
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    iput-object p3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {v0, v1, p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->cancelRequest(Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    invoke-interface {v0}, Lcom/bumptech/glide/integration/cronet/ByteBufferParser;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p2, p1, v0, p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->startRequest(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V

    return-void
.end method

.method public onRequestComplete(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/integration/cronet/ByteBufferParser;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method
