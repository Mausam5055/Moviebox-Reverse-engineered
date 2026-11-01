.class public final Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/integration/cronet/ByteBufferParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataLogger:Lcom/bumptech/glide/integration/cronet/DataLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestFactory:Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V
    .locals 0
    .param p2    # Lcom/bumptech/glide/integration/cronet/DataLogger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;->requestFactory:Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;

    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;->dataLogger:Lcom/bumptech/glide/integration/cronet/DataLogger;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;->requestFactory:Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;->dataLogger:Lcom/bumptech/glide/integration/cronet/DataLogger;

    invoke-direct {p1, p0, v0, v1}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;-><init>(Lcom/bumptech/glide/integration/cronet/ByteBufferParser;Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    return-object p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p1}, Lcom/bumptech/glide/util/ByteBufferUtil;->toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;->parse(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
