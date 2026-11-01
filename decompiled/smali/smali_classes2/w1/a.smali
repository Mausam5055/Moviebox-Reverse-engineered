.class public abstract Lw1/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/ArrayList;

.field private c:I

.field private d:Lw1/h;


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw1/a;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lw1/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final c(Lw1/n;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lw1/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lw1/a;->c:I

    :cond_0
    return-void
.end method

.method protected final d(I)V
    .locals 4

    iget-object v0, p0, Lw1/a;->d:Lw1/h;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/h;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lw1/a;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lw1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/n;

    iget-boolean v3, p0, Lw1/a;->a:Z

    invoke-interface {v2, p0, v0, v3, p1}, Lw1/n;->e(Landroidx/media3/datasource/a;Lw1/h;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 4

    iget-object v0, p0, Lw1/a;->d:Lw1/h;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/h;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lw1/a;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lw1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/n;

    iget-boolean v3, p0, Lw1/a;->a:Z

    invoke-interface {v2, p0, v0, v3}, Lw1/n;->f(Landroidx/media3/datasource/a;Lw1/h;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw1/a;->d:Lw1/h;

    return-void
.end method

.method protected final f(Lw1/h;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lw1/a;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lw1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/n;

    iget-boolean v2, p0, Lw1/a;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lw1/n;->g(Landroidx/media3/datasource/a;Lw1/h;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final g(Lw1/h;)V
    .locals 3

    iput-object p1, p0, Lw1/a;->d:Lw1/h;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lw1/a;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lw1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/n;

    iget-boolean v2, p0, Lw1/a;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lw1/n;->h(Landroidx/media3/datasource/a;Lw1/h;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lw1/e;->a(Landroidx/media3/datasource/a;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
