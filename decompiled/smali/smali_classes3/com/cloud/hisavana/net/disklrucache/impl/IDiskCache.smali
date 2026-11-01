.class public interface abstract Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache$Provider;,
        Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V
.end method

.method public abstract b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;[B)Ljava/lang/String;
.end method

.method public abstract c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;
.end method

.method public abstract d(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Lokhttp3/Response;)Ljava/lang/String;
.end method

.method public abstract e(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Ljava/io/InputStream;)Ljava/lang/String;
.end method

.method public abstract f(Ljava/lang/String;)Z
.end method
