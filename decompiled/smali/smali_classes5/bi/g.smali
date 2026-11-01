.class public Lbi/g;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field private a:Lokhttp3/EventListener$Factory;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbi/g;->b:I

    iput-boolean v0, p0, Lbi/g;->c:Z

    iput-boolean v0, p0, Lbi/g;->d:Z

    iput-boolean v0, p0, Lbi/g;->e:Z

    iput-boolean v0, p0, Lbi/g;->f:Z

    const-string v0, "All"

    iput-object v0, p0, Lbi/g;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/EventListener$Factory;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbi/g;->d:Z

    iput-boolean v0, p0, Lbi/g;->e:Z

    iput-boolean v0, p0, Lbi/g;->f:Z

    const-string v0, "All"

    iput-object v0, p0, Lbi/g;->h:Ljava/lang/String;

    iput-object p1, p0, Lbi/g;->a:Lokhttp3/EventListener$Factory;

    iput p2, p0, Lbi/g;->b:I

    iput-boolean p3, p0, Lbi/g;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbi/g;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lbi/g;->f:Z

    return-void
.end method

.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lbi/g;->a:Lokhttp3/EventListener$Factory;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lbi/d;->d()Z

    move-result v2

    const-string v3, "NetworkMonitor"

    if-nez v2, :cond_3

    invoke-static {p1}, Lbi/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lbi/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "==== MonitorFactory host : ${host} does not matche ===="

    aput-object v2, v1, v0

    invoke-virtual {p1, v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_2

    sget-object v4, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    :cond_2
    return-object v4

    :cond_3
    :goto_2
    sget-object p1, Lbi/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "==== MonitorFactory host : ${host} matches ===="

    aput-object v2, v1, v0

    invoke-virtual {p1, v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lbi/f;

    iget v5, p0, Lbi/g;->b:I

    iget-boolean v6, p0, Lbi/g;->c:Z

    iget-object v7, p0, Lbi/g;->h:Ljava/lang/String;

    iget-boolean v8, p0, Lbi/g;->f:Z

    iget-object v9, p0, Lbi/g;->g:Ljava/lang/String;

    iget-boolean v10, p0, Lbi/g;->d:Z

    iget-boolean v11, p0, Lbi/g;->e:Z

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lbi/f;-><init>(Lokhttp3/EventListener;IZLjava/lang/String;ZLjava/lang/String;ZZ)V

    return-object p1
.end method
