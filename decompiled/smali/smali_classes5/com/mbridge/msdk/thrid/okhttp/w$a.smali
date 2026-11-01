.class public Lcom/mbridge/msdk/thrid/okhttp/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/mbridge/msdk/thrid/okhttp/q;

.field b:Ljava/lang/String;

.field c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

.field d:Lcom/mbridge/msdk/thrid/okhttp/x;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/w;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->e:Ljava/util/Map;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/mbridge/msdk/thrid/okhttp/w;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->a()Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/c;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 0

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->a()Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/q;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public a()Lcom/mbridge/msdk/thrid/okhttp/w;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/w;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/w;-><init>(Lcom/mbridge/msdk/thrid/okhttp/w$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 6

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/q;->b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Lcom/mbridge/msdk/thrid/okhttp/q;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public c()Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/x;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object p1

    return-object p1
.end method
