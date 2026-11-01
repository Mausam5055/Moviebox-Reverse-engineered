.class final Lcom/google/net/cronet/okhttptransport/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/cronet/okhttptransport/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/UrlRequest;

.field private final b:Lcom/google/net/cronet/okhttptransport/g$c;


# direct methods
.method constructor <init>(Lorg/chromium/net/UrlRequest;Lcom/google/net/cronet/okhttptransport/g$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/g$b;->a:Lorg/chromium/net/UrlRequest;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/g$b;->b:Lcom/google/net/cronet/okhttptransport/g$c;

    return-void
.end method


# virtual methods
.method public a()Lorg/chromium/net/UrlRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/g$b;->a:Lorg/chromium/net/UrlRequest;

    return-object v0
.end method

.method public b()Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/g$b;->b:Lcom/google/net/cronet/okhttptransport/g$c;

    invoke-interface {v0}, Lcom/google/net/cronet/okhttptransport/g$c;->getResponse()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
