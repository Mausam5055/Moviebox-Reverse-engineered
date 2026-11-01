.class public abstract Lz1/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(La2/j;Ljava/lang/String;La2/i;ILjava/util/Map;)Lw1/h;
    .locals 2

    new-instance v0, Lw1/h$b;

    invoke-direct {v0}, Lw1/h$b;-><init>()V

    invoke-virtual {p2, p1}, La2/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object p1

    iget-wide v0, p2, La2/i;->a:J

    invoke-virtual {p1, v0, v1}, Lw1/h$b;->h(J)Lw1/h$b;

    move-result-object p1

    iget-wide v0, p2, La2/i;->b:J

    invoke-virtual {p1, v0, v1}, Lw1/h$b;->g(J)Lw1/h$b;

    move-result-object p1

    invoke-static {p0, p2}, Lz1/f;->g(La2/j;La2/i;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    move-result-object p0

    invoke-virtual {p0, p3}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p0

    invoke-virtual {p0, p4}, Lw1/h$b;->e(Ljava/util/Map;)Lw1/h$b;

    move-result-object p0

    invoke-virtual {p0}, Lw1/h$b;->a()Lw1/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/media3/datasource/a;ILa2/j;)Ll2/h;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lz1/f;->c(Landroidx/media3/datasource/a;ILa2/j;I)Ll2/h;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/media3/datasource/a;ILa2/j;I)Ll2/h;
    .locals 1

    invoke-virtual {p2}, La2/j;->m()La2/i;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p2, La2/j;->b:Landroidx/media3/common/r;

    invoke-static {p1, v0}, Lz1/f;->f(ILandroidx/media3/common/r;)Lh2/f;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, p0, p2, p3, v0}, Lz1/f;->e(Lh2/f;Landroidx/media3/datasource/a;La2/j;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lh2/f;->release()V

    invoke-interface {p1}, Lh2/f;->b()Ll2/h;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lh2/f;->release()V

    throw p0
.end method

.method private static d(Landroidx/media3/datasource/a;La2/j;ILh2/f;La2/i;)V
    .locals 9

    iget-object v0, p1, La2/j;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/b;

    iget-object p2, p2, La2/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {p1, p2, p4, v0, v1}, Lz1/f;->a(La2/j;Ljava/lang/String;La2/i;ILjava/util/Map;)Lw1/h;

    move-result-object v4

    new-instance p2, Lh2/l;

    iget-object v5, p1, La2/j;->b:Landroidx/media3/common/r;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p0

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lh2/l;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;Lh2/f;)V

    invoke-virtual {p2}, Lh2/l;->load()V

    return-void
.end method

.method private static e(Lh2/f;Landroidx/media3/datasource/a;La2/j;IZ)V
    .locals 2

    invoke-virtual {p2}, La2/j;->m()La2/i;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/i;

    if-eqz p4, :cond_2

    invoke-virtual {p2}, La2/j;->l()La2/i;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v1, p2, La2/j;->c:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/b;

    iget-object v1, v1, La2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p4, v1}, La2/i;->a(La2/i;Ljava/lang/String;)La2/i;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1, p2, p3, p0, v0}, Lz1/f;->d(Landroidx/media3/datasource/a;La2/j;ILh2/f;La2/i;)V

    move-object v0, p4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    invoke-static {p1, p2, p3, p0, v0}, Lz1/f;->d(Landroidx/media3/datasource/a;La2/j;ILh2/f;La2/i;)V

    return-void
.end method

.method private static f(ILandroidx/media3/common/r;)Lh2/f;
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/r;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "video/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/webm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ld3/e;

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ld3/e;-><init>(Li3/s$a;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lf3/h;

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lf3/h;-><init>(Li3/s$a;I)V

    :goto_0
    new-instance v1, Lh2/d;

    invoke-direct {v1, v0, p0, p1}, Lh2/d;-><init>(Ll2/r;ILandroidx/media3/common/r;)V

    return-object v1
.end method

.method public static g(La2/j;La2/i;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La2/j;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La2/j;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La2/b;

    iget-object p0, p0, La2/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, La2/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
