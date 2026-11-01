.class public final Landroidx/media3/datasource/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/HttpDataSource$b;

.field private b:Lw1/n;

.field private c:Lcom/google/common/base/n;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$b;

    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$b;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/c$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    const/16 v0, 0x1f40

    iput v0, p0, Landroidx/media3/datasource/c$b;->e:I

    iput v0, p0, Landroidx/media3/datasource/c$b;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/c$b;->c(Ljava/util/Map;)Landroidx/media3/datasource/c$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroidx/media3/datasource/c;
    .locals 11

    new-instance v10, Landroidx/media3/datasource/c;

    iget-object v1, p0, Landroidx/media3/datasource/c$b;->d:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/datasource/c$b;->e:I

    iget v3, p0, Landroidx/media3/datasource/c$b;->f:I

    iget-boolean v4, p0, Landroidx/media3/datasource/c$b;->g:Z

    iget-boolean v5, p0, Landroidx/media3/datasource/c$b;->h:Z

    iget-object v6, p0, Landroidx/media3/datasource/c$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    iget-object v7, p0, Landroidx/media3/datasource/c$b;->c:Lcom/google/common/base/n;

    iget-boolean v8, p0, Landroidx/media3/datasource/c$b;->i:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/media3/datasource/c;-><init>(Ljava/lang/String;IIZZLandroidx/media3/datasource/HttpDataSource$b;Lcom/google/common/base/n;ZLandroidx/media3/datasource/c$a;)V

    iget-object v0, p0, Landroidx/media3/datasource/c$b;->b:Lw1/n;

    if-eqz v0, :cond_0

    invoke-virtual {v10, v0}, Lw1/a;->c(Lw1/n;)V

    :cond_0
    return-object v10
.end method

.method public c(Ljava/util/Map;)Landroidx/media3/datasource/c$b;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/c$b;->a:Landroidx/media3/datasource/HttpDataSource$b;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$b;->a(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/datasource/c$b;->b()Landroidx/media3/datasource/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/a;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/datasource/c$b;->b()Landroidx/media3/datasource/c;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Landroidx/media3/datasource/c$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/c$b;->d:Ljava/lang/String;

    return-object p0
.end method
