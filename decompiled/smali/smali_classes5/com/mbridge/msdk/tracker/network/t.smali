.class public abstract Lcom/mbridge/msdk/tracker/network/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/tracker/network/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mbridge/msdk/tracker/network/t<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/tracker/network/c;

.field private b:Ljava/lang/String;

.field private volatile c:Lcom/mbridge/msdk/tracker/network/p;

.field private d:J

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Ljava/lang/Object;

.field private l:Lcom/mbridge/msdk/tracker/network/v$a;

.field private m:Ljava/lang/Integer;

.field private n:Lcom/mbridge/msdk/tracker/network/u;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/mbridge/msdk/tracker/network/x;

.field private u:Lcom/mbridge/msdk/tracker/network/b$a;

.field private v:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/tracker/network/t;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const-string v0, "un_known"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mbridge/msdk/tracker/network/t;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->o:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->p:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->q:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->r:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->s:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->u:Lcom/mbridge/msdk/tracker/network/b$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/tracker/network/t;->v:J

    iput p1, p0, Lcom/mbridge/msdk/tracker/network/t;->f:I

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/network/t;->g:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/tracker/network/t;->h:I

    iput-object p4, p0, Lcom/mbridge/msdk/tracker/network/t;->i:Ljava/lang/String;

    new-instance p1, Lcom/mbridge/msdk/tracker/network/e;

    invoke-direct {p1}, Lcom/mbridge/msdk/tracker/network/e;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/x;)Lcom/mbridge/msdk/tracker/network/t;

    invoke-static {p2}, Lcom/mbridge/msdk/tracker/network/t;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/tracker/network/t;->j:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mbridge/msdk/tracker/network/t;->d:J

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v3, ""

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-static {v3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_0

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->s:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->r:Z

    return v0
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/t;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->l()Lcom/mbridge/msdk/tracker/network/t$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->l()Lcom/mbridge/msdk/tracker/network/t$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/mbridge/msdk/tracker/network/t;->m:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/u;",
            ")",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->n:Lcom/mbridge/msdk/tracker/network/u;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/x;)Lcom/mbridge/msdk/tracker/network/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/x;",
            ")",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->t:Lcom/mbridge/msdk/tracker/network/x;

    return-object p0
.end method

.method public final a(Z)Lcom/mbridge/msdk/tracker/network/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mbridge/msdk/tracker/network/t;->o:Z

    return-object p0
.end method

.method protected abstract a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/q;",
            ")",
            "Lcom/mbridge/msdk/tracker/network/v<",
            "TT;>;"
        }
    .end annotation
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->n:Lcom/mbridge/msdk/tracker/network/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/mbridge/msdk/tracker/network/u;->a(Lcom/mbridge/msdk/tracker/network/t;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/p;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->c:Lcom/mbridge/msdk/tracker/network/p;

    return-void
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->l:Lcom/mbridge/msdk/tracker/network/v$a;

    return-void
.end method

.method a(Lcom/mbridge/msdk/tracker/network/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/v<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->e:Ljava/util/Map;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)Lcom/mbridge/msdk/tracker/network/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b(Z)Lcom/mbridge/msdk/tracker/network/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mbridge/msdk/tracker/network/t;->s:Z

    return-object p0
.end method

.method public b(Lcom/mbridge/msdk/tracker/network/b0;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/t;->l:Lcom/mbridge/msdk/tracker/network/v$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/mbridge/msdk/tracker/network/v$a;->a(Lcom/mbridge/msdk/tracker/network/b0;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()[B
    .locals 3

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->i()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/mbridge/msdk/tracker/network/t;->v:J

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/tracker/network/t;->v:J

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c(Lcom/mbridge/msdk/tracker/network/b0;)Lcom/mbridge/msdk/tracker/network/b0;
    .locals 0

    return-object p1
.end method

.method public final c(Z)Lcom/mbridge/msdk/tracker/network/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mbridge/msdk/tracker/network/t;->r:Z

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/tracker/network/t;->n:Lcom/mbridge/msdk/tracker/network/u;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/tracker/network/u;->c(Lcom/mbridge/msdk/tracker/network/t;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/mbridge/msdk/tracker/network/t;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/t;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/mbridge/msdk/tracker/network/b$a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->u:Lcom/mbridge/msdk/tracker/network/b$a;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->e:Ljava/util/Map;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->a:Lcom/mbridge/msdk/tracker/network/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/e;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->a:Lcom/mbridge/msdk/tracker/network/c;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->a:Lcom/mbridge/msdk/tracker/network/c;

    invoke-interface {v0, p0}, Lcom/mbridge/msdk/tracker/network/c;->a(Lcom/mbridge/msdk/tracker/network/t;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Map;
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

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/network/t;->f:I

    return v0
.end method

.method public h()Lcom/mbridge/msdk/tracker/network/p;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->c:Lcom/mbridge/msdk/tracker/network/p;

    return-object v0
.end method

.method protected i()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/network/t;->h:I

    return v0
.end method

.method public l()Lcom/mbridge/msdk/tracker/network/t$a;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->b:Lcom/mbridge/msdk/tracker/network/t$a;

    return-object v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/tracker/network/t;->v:J

    return-wide v0
.end method

.method public n()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mbridge/msdk/tracker/network/t;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public o()Lcom/mbridge/msdk/tracker/network/x;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->t:Lcom/mbridge/msdk/tracker/network/x;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final q()I
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->o()Lcom/mbridge/msdk/tracker/network/x;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x7530

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/mbridge/msdk/tracker/network/x;->b()I

    move-result v0

    return v0
.end method

.method public final r()J
    .locals 7

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->o()Lcom/mbridge/msdk/tracker/network/x;

    move-result-object v0

    const-wide/16 v1, 0x7530

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {v0}, Lcom/mbridge/msdk/tracker/network/x;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    return-wide v1
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/network/t;->j:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/t;->l()Lcom/mbridge/msdk/tracker/network/t$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/tracker/network/t;->q:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/mbridge/msdk/tracker/network/t;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/tracker/network/t;->q:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method x()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/t;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/t;->o:Z

    return v0
.end method
