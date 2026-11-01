.class public interface abstract Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;",
        "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
        "contentType",
        "",
        "contextType",
        "Lokhttp3/MediaType;",
        "responseHeader",
        "headers",
        "Lokhttp3/Headers;",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract contentType(Lokhttp3/MediaType;)Z
.end method

.method public abstract responseHeader(Lokhttp3/Headers;)Z
.end method
