.class public final Lcom/vungle/ads/internal/network/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logEntry:Lcom/vungle/ads/internal/util/n;

.field private method:Lcom/vungle/ads/internal/network/HttpMethod;

.field private priorityRetry:Ljava/lang/Boolean;

.field private priorityRetryCount:I

.field private regularRetry:Z

.field private regularRetryCount:I

.field private tpatKey:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->url:Ljava/lang/String;

    sget-object p1, Lcom/vungle/ads/internal/network/HttpMethod;->GET:Lcom/vungle/ads/internal/network/HttpMethod;

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    const/4 p1, 0x3

    iput p1, p0, Lcom/vungle/ads/internal/network/f$a;->priorityRetryCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vungle/ads/internal/network/f$a;->regularRetry:Z

    const/4 p1, 0x5

    iput p1, p0, Lcom/vungle/ads/internal/network/f$a;->regularRetryCount:I

    return-void
.end method


# virtual methods
.method public final body(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->body:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/vungle/ads/internal/network/f;
    .locals 13

    new-instance v12, Lcom/vungle/ads/internal/network/f;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/f$a;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/f$a;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    iget-object v3, p0, Lcom/vungle/ads/internal/network/f$a;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/vungle/ads/internal/network/f$a;->body:Ljava/lang/String;

    iget-object v5, p0, Lcom/vungle/ads/internal/network/f$a;->priorityRetry:Ljava/lang/Boolean;

    iget v6, p0, Lcom/vungle/ads/internal/network/f$a;->priorityRetryCount:I

    iget-boolean v7, p0, Lcom/vungle/ads/internal/network/f$a;->regularRetry:Z

    iget v8, p0, Lcom/vungle/ads/internal/network/f$a;->regularRetryCount:I

    iget-object v9, p0, Lcom/vungle/ads/internal/network/f$a;->tpatKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/vungle/ads/internal/network/f$a;->logEntry:Lcom/vungle/ads/internal/util/n;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/vungle/ads/internal/network/f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/n;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final get()Lcom/vungle/ads/internal/network/f$a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->GET:Lcom/vungle/ads/internal/network/HttpMethod;

    iput-object v0, p0, Lcom/vungle/ads/internal/network/f$a;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f$a;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final headers(Ljava/util/Map;)Lcom/vungle/ads/internal/network/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/ads/internal/network/f$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public final method(Lcom/vungle/ads/internal/network/HttpMethod;)Lcom/vungle/ads/internal/network/f$a;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    return-object p0
.end method

.method public final post()Lcom/vungle/ads/internal/network/f$a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/network/HttpMethod;->POST:Lcom/vungle/ads/internal/network/HttpMethod;

    iput-object v0, p0, Lcom/vungle/ads/internal/network/f$a;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    return-object p0
.end method

.method public final priorityRetry(Z)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->priorityRetry:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final priorityRetryCount(I)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/network/f$a;->priorityRetryCount:I

    return-object p0
.end method

.method public final regularRetry(Z)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/network/f$a;->regularRetry:Z

    return-object p0
.end method

.method public final regularRetryCount(I)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/network/f$a;->regularRetryCount:I

    return-object p0
.end method

.method public final tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->tpatKey:Ljava/lang/String;

    return-object p0
.end method

.method public final withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f$a;->logEntry:Lcom/vungle/ads/internal/util/n;

    return-object p0
.end method
