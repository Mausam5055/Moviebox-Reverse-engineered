.class Lcom/google/net/cronet/okhttptransport/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/net/cronet/okhttptransport/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/net/cronet/okhttptransport/g;->c(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/google/net/cronet/okhttptransport/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Request;

.field final synthetic b:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

.field final synthetic c:Lcom/google/net/cronet/okhttptransport/g;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/g;Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/g$a;->c:Lcom/google/net/cronet/okhttptransport/g;

    iput-object p2, p0, Lcom/google/net/cronet/okhttptransport/g$a;->a:Lokhttp3/Request;

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/g$a;->b:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lokhttp3/Response;
    .locals 3

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/g$a;->c:Lcom/google/net/cronet/okhttptransport/g;

    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/g;->a(Lcom/google/net/cronet/okhttptransport/g;)Lcom/google/net/cronet/okhttptransport/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/g$a;->a:Lokhttp3/Request;

    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/g$a;->b:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/net/cronet/okhttptransport/i;->f(Lokhttp3/Request;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
