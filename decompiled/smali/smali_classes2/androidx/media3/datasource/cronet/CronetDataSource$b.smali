.class public final Landroidx/media3/datasource/cronet/CronetDataSource$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/chromium/net/CronetEngine;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/media3/datasource/HttpDataSource$b;

.field private final d:Landroidx/media3/datasource/c$b;

.field private e:Landroidx/media3/datasource/HttpDataSource$a;

.field private f:Lcom/google/common/base/n;

.field private g:Lw1/n;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetEngine;

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->a:Lorg/chromium/net/CronetEngine;

    iput-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$b;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->c:Landroidx/media3/datasource/HttpDataSource$b;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->d:Landroidx/media3/datasource/c$b;

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->i:I

    const/16 p1, 0x1f40

    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->j:I

    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->k:I

    const p1, 0x8000

    iput p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->l:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cronet/CronetDataSource$b;->b(Ljava/util/Map;)Landroidx/media3/datasource/cronet/CronetDataSource$b;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/Map;)Landroidx/media3/datasource/cronet/CronetDataSource$b;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->c:Landroidx/media3/datasource/HttpDataSource$b;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$b;->a(Ljava/util/Map;)V

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->d:Landroidx/media3/datasource/c$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/c$b;->c(Ljava/util/Map;)Landroidx/media3/datasource/c$b;

    :cond_0
    return-object p0
.end method

.method public createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 14

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->a:Lorg/chromium/net/CronetEngine;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->e:Landroidx/media3/datasource/HttpDataSource$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/datasource/HttpDataSource$a;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->d:Landroidx/media3/datasource/c$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/c$b;

    invoke-virtual {v0}, Landroidx/media3/datasource/c$b;->b()Landroidx/media3/datasource/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroidx/media3/datasource/cronet/CronetDataSource;

    iget-object v2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->a:Lorg/chromium/net/CronetEngine;

    iget-object v3, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->b:Ljava/util/concurrent/Executor;

    iget v4, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->i:I

    iget v5, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->j:I

    iget v6, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->k:I

    iget-boolean v7, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->m:Z

    iget-boolean v8, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->n:Z

    iget-object v9, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->h:Ljava/lang/String;

    iget-object v10, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->c:Landroidx/media3/datasource/HttpDataSource$b;

    iget-object v11, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->f:Lcom/google/common/base/n;

    iget-boolean v12, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->o:Z

    iget v13, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->l:I

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroidx/media3/datasource/cronet/CronetDataSource;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Landroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;ZI)V

    iget-object v1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$b;->g:Lw1/n;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lw1/a;->c(Lw1/n;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/datasource/cronet/CronetDataSource$b;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object v0

    return-object v0
.end method
