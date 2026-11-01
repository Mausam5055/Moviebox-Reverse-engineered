.class Lcom/google/net/cronet/okhttptransport/a$c;
.super Lcom/google/net/cronet/okhttptransport/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/cronet/okhttptransport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Lokhttp3/Call;

.field final synthetic c:Lcom/google/net/cronet/okhttptransport/a;


# direct methods
.method private constructor <init>(Lcom/google/net/cronet/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/a$c;->c:Lcom/google/net/cronet/okhttptransport/a;

    invoke-direct {p0, p2}, Lcom/google/net/cronet/okhttptransport/b;-><init>(Lokhttp3/ResponseBody;)V

    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/a$c;->b:Lokhttp3/Call;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/net/cronet/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;Lcom/google/net/cronet/okhttptransport/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/net/cronet/okhttptransport/a$c;-><init>(Lcom/google/net/cronet/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;)V

    return-void
.end method


# virtual methods
.method d()V
    .locals 2

    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/a$c;->c:Lcom/google/net/cronet/okhttptransport/a;

    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/a;->d(Lcom/google/net/cronet/okhttptransport/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/a$c;->b:Lokhttp3/Call;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
