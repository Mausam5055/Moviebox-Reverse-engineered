.class Lcom/cloud/hisavana/protocol/okhttptransport/a$c;
.super Lcom/cloud/hisavana/protocol/okhttptransport/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Lokhttp3/Call;

.field final synthetic c:Lcom/cloud/hisavana/protocol/okhttptransport/a;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/b;-><init>(Lokhttp3/ResponseBody;)V

    iput-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;->b:Lokhttp3/Call;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;Lcom/cloud/hisavana/protocol/okhttptransport/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;)V

    return-void
.end method


# virtual methods
.method d()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;->c:Lcom/cloud/hisavana/protocol/okhttptransport/a;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->d(Lcom/cloud/hisavana/protocol/okhttptransport/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;->b:Lokhttp3/Call;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
