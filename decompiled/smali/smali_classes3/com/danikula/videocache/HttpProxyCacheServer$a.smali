.class public final Lcom/danikula/videocache/HttpProxyCacheServer$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lp7/b;

.field private c:Lcom/danikula/videocache/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/danikula/videocache/p;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a:Ljava/io/File;

    new-instance p1, Lp7/a;

    invoke-direct {p1}, Lp7/a;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->b:Lp7/b;

    return-void
.end method

.method private b()Lcom/danikula/videocache/c;
    .locals 4

    new-instance v0, Lcom/danikula/videocache/c;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->b:Lp7/b;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->c:Lcom/danikula/videocache/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/danikula/videocache/c;-><init>(Ljava/io/File;Lp7/b;Lcom/danikula/videocache/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 3

    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer$a;->b()Lcom/danikula/videocache/c;

    move-result-object v0

    new-instance v1, Lcom/danikula/videocache/HttpProxyCacheServer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Lcom/danikula/videocache/c;Lcom/danikula/videocache/f;)V

    return-object v1
.end method

.method public c(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$a;
    .locals 0

    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a:Ljava/io/File;

    return-object p0
.end method

.method public d(Lcom/danikula/videocache/a;)Lcom/danikula/videocache/HttpProxyCacheServer$a;
    .locals 0

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->c:Lcom/danikula/videocache/a;

    return-object p0
.end method
