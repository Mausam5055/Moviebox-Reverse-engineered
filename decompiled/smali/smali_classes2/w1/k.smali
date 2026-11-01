.class public final Lw1/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a;


# instance fields
.field private final a:Landroidx/media3/datasource/a;

.field private final b:Landroidx/media3/common/PriorityTaskManager;

.field private final c:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Landroidx/media3/common/PriorityTaskManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/a;

    iput-object p1, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/PriorityTaskManager;

    iput-object p1, p0, Lw1/k;->b:Landroidx/media3/common/PriorityTaskManager;

    iput p3, p0, Lw1/k;->c:I

    return-void
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 2

    iget-object v0, p0, Lw1/k;->b:Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Lw1/k;->c:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->c(I)V

    iget-object v0, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->a(Lw1/h;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lw1/n;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->close()V

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0}, Landroidx/media3/datasource/a;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lw1/k;->b:Landroidx/media3/common/PriorityTaskManager;

    iget v1, p0, Lw1/k;->c:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->c(I)V

    iget-object v0, p0, Lw1/k;->a:Landroidx/media3/datasource/a;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/j;->read([BII)I

    move-result p1

    return p1
.end method
