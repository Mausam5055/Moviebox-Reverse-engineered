.class public final Lcom/bumptech/glide/integration/cronet/CronetGlideModule;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 3

    new-instance p2, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;

    new-instance v0, Lcom/bumptech/glide/integration/cronet/CronetGlideModule$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/integration/cronet/CronetGlideModule$1;-><init>(Lcom/bumptech/glide/integration/cronet/CronetGlideModule;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;-><init>(Lcom/google/common/base/q;)V

    new-instance p1, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;-><init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    const-class v1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p3, v1, v2, p1}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    new-instance p1, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$ByteBufferFactory;

    invoke-direct {p1, p2, v0}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$ByteBufferFactory;-><init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    const-class p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v1, p2, p1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
