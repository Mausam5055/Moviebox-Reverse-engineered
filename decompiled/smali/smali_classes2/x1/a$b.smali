.class public final Lx1/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/HttpDataSource$b;

.field private final b:Lokhttp3/Call$Factory;

.field private c:Ljava/lang/String;

.field private d:Lw1/n;

.field private e:Lokhttp3/CacheControl;

.field private f:Lcom/google/common/base/n;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a$b;->b:Lokhttp3/Call$Factory;

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$b;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    iput-object p1, p0, Lx1/a$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$a;
    .locals 0

    invoke-virtual {p0, p1}, Lx1/a$b;->c(Ljava/util/Map;)Lx1/a$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lx1/a;
    .locals 8

    new-instance v7, Lx1/a;

    iget-object v1, p0, Lx1/a$b;->b:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lx1/a$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lx1/a$b;->e:Lokhttp3/CacheControl;

    iget-object v4, p0, Lx1/a$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    iget-object v5, p0, Lx1/a$b;->f:Lcom/google/common/base/n;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lx1/a;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;Lx1/a$a;)V

    iget-object v0, p0, Lx1/a$b;->d:Lw1/n;

    if-eqz v0, :cond_0

    invoke-virtual {v7, v0}, Lw1/a;->c(Lw1/n;)V

    :cond_0
    return-object v7
.end method

.method public final c(Ljava/util/Map;)Lx1/a$b;
    .locals 1

    iget-object v0, p0, Lx1/a$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$b;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 1

    invoke-virtual {p0}, Lx1/a$b;->b()Lx1/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    invoke-virtual {p0}, Lx1/a$b;->b()Lx1/a;

    move-result-object v0

    return-object v0
.end method
