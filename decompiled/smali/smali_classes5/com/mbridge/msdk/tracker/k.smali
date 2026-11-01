.class Lcom/mbridge/msdk/tracker/k;
.super Ljava/lang/Object;


# static fields
.field private static volatile o:Ljava/lang/String; = ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/mbridge/msdk/tracker/m;

.field private c:Landroid/content/Context;

.field private d:Lcom/mbridge/msdk/tracker/x;

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/mbridge/msdk/tracker/c;

.field private volatile i:Lcom/mbridge/msdk/tracker/l;

.field private volatile j:Lcom/mbridge/msdk/tracker/d;

.field private volatile k:Lcom/mbridge/msdk/tracker/j;

.field private volatile l:Lcom/mbridge/msdk/tracker/s;

.field private volatile m:Z

.field private volatile n:Lcom/mbridge/msdk/tracker/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/k;->b:Lcom/mbridge/msdk/tracker/m;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->c:Landroid/content/Context;

    return-void
.end method

.method a(Lcom/mbridge/msdk/tracker/x;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/k;->e:Lorg/json/JSONObject;

    return-void
.end method

.method a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->f()Lcom/mbridge/msdk/tracker/d;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->r()Lcom/mbridge/msdk/tracker/w;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/p;->b()Lcom/mbridge/msdk/tracker/network/toolbox/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "report url is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "networkStackConfig or stack can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "responseHandler can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decorate can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "config can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/mbridge/msdk/tracker/e;)Z
    .locals 4

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->j:Lcom/mbridge/msdk/tracker/f;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TrackManager"

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/tracker/f;->a(Lcom/mbridge/msdk/tracker/e;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "event filter apply exception"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->g:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr p1, v1

    return p1

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "disallowTrackEventNames contains exception"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "allowTrackEventNames contains exception"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return v1
.end method

.method b()Lcom/mbridge/msdk/tracker/x;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/tracker/x$b;

    invoke-direct {v0}, Lcom/mbridge/msdk/tracker/x$b;-><init>()V

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/x$b;->a()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    :cond_0
    return-object v0
.end method

.method c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->c:Landroid/content/Context;

    return-object v0
.end method

.method d()Lcom/mbridge/msdk/tracker/c;
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/tracker/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/tracker/c;

    new-instance v3, Lcom/mbridge/msdk/tracker/b;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/mbridge/msdk/tracker/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/mbridge/msdk/tracker/c;-><init>(Lcom/mbridge/msdk/tracker/b;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->h:Lcom/mbridge/msdk/tracker/c;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "track_manager_%s.db"

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->v()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/mbridge/msdk/tracker/d;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->j:Lcom/mbridge/msdk/tracker/d;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->h:Lcom/mbridge/msdk/tracker/d;

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/k;->j:Lcom/mbridge/msdk/tracker/d;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->j:Lcom/mbridge/msdk/tracker/d;

    return-object v0
.end method

.method g()Lcom/mbridge/msdk/tracker/l;
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/tracker/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/tracker/q;

    new-instance v2, Lcom/mbridge/msdk/tracker/g;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->d()Lcom/mbridge/msdk/tracker/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->p()Lcom/mbridge/msdk/tracker/s;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/tracker/g;-><init>(Lcom/mbridge/msdk/tracker/c;Lcom/mbridge/msdk/tracker/s;)V

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/tracker/q;-><init>(Lcom/mbridge/msdk/tracker/g;)V

    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->i:Lcom/mbridge/msdk/tracker/l;

    return-object v0
.end method

.method h()Lcom/mbridge/msdk/tracker/j;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/tracker/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/tracker/j;

    invoke-direct {v1}, Lcom/mbridge/msdk/tracker/j;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->k:Lcom/mbridge/msdk/tracker/j;

    return-object v0
.end method

.method i()I
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->a:I

    if-gez v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->a:I

    :goto_0
    return v0
.end method

.method j()I
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->e:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method k()I
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->d:I

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->d:I

    :goto_0
    return v0
.end method

.method l()I
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->b:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method m()Lcom/mbridge/msdk/tracker/o;
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/tracker/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/tracker/o;

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->k()I

    move-result v2

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->n()Lcom/mbridge/msdk/tracker/p;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->r()Lcom/mbridge/msdk/tracker/w;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->q()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mbridge/msdk/tracker/o;-><init>(ILcom/mbridge/msdk/tracker/p;Lcom/mbridge/msdk/tracker/w;I)V

    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->n:Lcom/mbridge/msdk/tracker/o;

    return-object v0
.end method

.method n()Lcom/mbridge/msdk/tracker/p;
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->g:Lcom/mbridge/msdk/tracker/p;

    return-object v0
.end method

.method o()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/k;->e:Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method p()Lcom/mbridge/msdk/tracker/s;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/tracker/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/tracker/s;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/tracker/s;-><init>(Lcom/mbridge/msdk/tracker/k;)V

    iput-object v1, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->l:Lcom/mbridge/msdk/tracker/s;

    return-object v0
.end method

.method q()I
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/tracker/x;->c:I

    return v0
.end method

.method r()Lcom/mbridge/msdk/tracker/w;
    .locals 1

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/tracker/x;->i:Lcom/mbridge/msdk/tracker/w;

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    const-string v0, "event_table"

    return-object v0
.end method

.method u()Lcom/mbridge/msdk/tracker/m;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->b:Lcom/mbridge/msdk/tracker/m;

    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    return v0
.end method

.method x()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/k;->d:Lcom/mbridge/msdk/tracker/x;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/k;->p()Lcom/mbridge/msdk/tracker/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/s;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mbridge/msdk/tracker/k;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    sget-boolean v2, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "TrackManager"

    const-string v3, "start error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/k;->m:Z

    :cond_3
    :goto_2
    return-object v1
.end method
