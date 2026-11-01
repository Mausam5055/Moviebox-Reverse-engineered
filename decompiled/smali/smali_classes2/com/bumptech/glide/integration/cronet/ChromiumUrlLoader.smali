.class public final Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$ByteBufferFactory;,
        Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final requestSerializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/cronet/ByteBufferParser;Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V
    .locals 0
    .param p3    # Lcom/bumptech/glide/integration/cronet/DataLogger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;",
            "Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;",
            "Lcom/bumptech/glide/integration/cronet/DataLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    new-instance p1, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;-><init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;->requestSerializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/ByteBufferParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;",
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;-><init>(Lcom/bumptech/glide/integration/cronet/ByteBufferParser;Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/bumptech/glide/load/model/GlideUrl;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "TT;>;"
        }
    .end annotation

    new-instance p2, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;

    iget-object p3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;->requestSerializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    iget-object p4, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    invoke-direct {p2, p3, p4, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ByteBufferParser;Lcom/bumptech/glide/load/model/GlideUrl;)V

    new-instance p3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p3
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;->buildLoadData(Lcom/bumptech/glide/load/model/GlideUrl;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/bumptech/glide/load/model/GlideUrl;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader;->handles(Lcom/bumptech/glide/load/model/GlideUrl;)Z

    move-result p1

    return p1
.end method
