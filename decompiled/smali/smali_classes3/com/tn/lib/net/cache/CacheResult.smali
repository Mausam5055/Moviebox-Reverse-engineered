.class public final Lcom/tn/lib/net/cache/CacheResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/tn/lib/net/cache/CacheResult;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "cacheTime",
        "",
        "getCacheTime",
        "()I",
        "setCacheTime",
        "(I)V",
        "canCache",
        "",
        "getCanCache",
        "()Z",
        "setCanCache",
        "(Z)V",
        "startTimestamp",
        "",
        "getStartTimestamp",
        "()Ljava/lang/Long;",
        "setStartTimestamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "paramsMap",
        "",
        "",
        "getParamsMap",
        "()Ljava/util/Map;",
        "setParamsMap",
        "(Ljava/util/Map;)V",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cacheTime:I

.field private canCache:Z

.field private paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCacheTime()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/net/cache/CacheResult;->cacheTime:I

    return v0
.end method

.method public final getCanCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/lib/net/cache/CacheResult;->canCache:Z

    return v0
.end method

.method public final getParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tn/lib/net/cache/CacheResult;->paramsMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getStartTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/net/cache/CacheResult;->startTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final setCacheTime(I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/net/cache/CacheResult;->cacheTime:I

    return-void
.end method

.method public final setCanCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/net/cache/CacheResult;->canCache:Z

    return-void
.end method

.method public final setParamsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/lib/net/cache/CacheResult;->paramsMap:Ljava/util/Map;

    return-void
.end method

.method public final setStartTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/net/cache/CacheResult;->startTimestamp:Ljava/lang/Long;

    return-void
.end method
