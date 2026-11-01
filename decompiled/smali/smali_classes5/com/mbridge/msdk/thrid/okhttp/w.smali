.class public final Lcom/mbridge/msdk/thrid/okhttp/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/w$a;
    }
.end annotation


# instance fields
.field final a:Lcom/mbridge/msdk/thrid/okhttp/q;

.field final b:Ljava/lang/String;

.field final c:Lcom/mbridge/msdk/thrid/okhttp/p;

.field final d:Lcom/mbridge/msdk/thrid/okhttp/x;

.field final e:Ljava/util/Map;
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

.field private volatile f:Lcom/mbridge/msdk/thrid/okhttp/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/w$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->c:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/w$a;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/thrid/okhttp/x;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->d:Lcom/mbridge/msdk/thrid/okhttp/x;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/c;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->f:Lcom/mbridge/msdk/thrid/okhttp/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/c;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->f:Lcom/mbridge/msdk/thrid/okhttp/c;

    :goto_0
    return-object v0
.end method

.method public c()Lcom/mbridge/msdk/thrid/okhttp/p;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->c:Lcom/mbridge/msdk/thrid/okhttp/p;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/q;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/mbridge/msdk/thrid/okhttp/w$a;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/w$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/w$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/w;)V

    return-object v0
.end method

.method public g()Lcom/mbridge/msdk/thrid/okhttp/q;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->a:Lcom/mbridge/msdk/thrid/okhttp/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/w;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
