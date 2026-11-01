.class Lcom/cloud/hisavana/protocol/okhttptransport/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/protocol/okhttptransport/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/g;->c(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lcom/cloud/hisavana/protocol/okhttptransport/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Request;

.field final synthetic b:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

.field final synthetic c:Lcom/cloud/hisavana/protocol/okhttptransport/g;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/g;Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;->c:Lcom/cloud/hisavana/protocol/okhttptransport/g;

    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;->a:Lokhttp3/Request;

    iput-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lokhttp3/Response;
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;->c:Lcom/cloud/hisavana/protocol/okhttptransport/g;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/g;->a(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Lcom/cloud/hisavana/protocol/okhttptransport/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;->a:Lokhttp3/Request;

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/g$a;->b:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->g(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
