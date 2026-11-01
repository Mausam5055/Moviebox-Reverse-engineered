.class public final Landroidx/compose/ui/input/pointer/a0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Landroidx/compose/ui/input/pointer/f;

.field private final c:Landroidx/compose/ui/input/pointer/x;

.field private final d:Landroidx/compose/ui/node/q;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/a0;->a:Landroidx/compose/ui/node/LayoutNode;

    new-instance v0, Landroidx/compose/ui/input/pointer/f;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->o()Landroidx/compose/ui/layout/l;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/f;-><init>(Landroidx/compose/ui/layout/l;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/a0;->b:Landroidx/compose/ui/input/pointer/f;

    new-instance p1, Landroidx/compose/ui/input/pointer/x;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/x;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/a0;->c:Landroidx/compose/ui/input/pointer/x;

    new-instance p1, Landroidx/compose/ui/node/q;

    invoke-direct {p1}, Landroidx/compose/ui/node/q;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/a0;->d:Landroidx/compose/ui/node/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/a0;->b:Landroidx/compose/ui/input/pointer/f;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/f;->b()V

    return-void
.end method

.method public final b(Landroidx/compose/ui/input/pointer/y;Landroidx/compose/ui/input/pointer/i0;Z)I
    .locals 18

    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroidx/compose/ui/input/pointer/a0;->e:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2, v2}, Landroidx/compose/ui/input/pointer/b0;->a(ZZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Landroidx/compose/ui/input/pointer/a0;->e:Z

    iget-object v3, v1, Landroidx/compose/ui/input/pointer/a0;->c:Landroidx/compose/ui/input/pointer/x;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/input/pointer/x;->b(Landroidx/compose/ui/input/pointer/y;Landroidx/compose/ui/input/pointer/i0;)Landroidx/compose/ui/input/pointer/g;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->b()Landroidx/collection/x;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/collection/x;->n()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->b()Landroidx/collection/x;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/w;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->i()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/w;->l()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    :goto_1
    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->b()Landroidx/collection/x;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/collection/x;->n()I

    move-result v5

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_6

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->b()Landroidx/collection/x;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/w;

    if-nez v4, :cond_4

    invoke-static {v7}, Landroidx/compose/ui/input/pointer/p;->b(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->n()I

    move-result v8

    sget-object v9, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/h0$a;->d()I

    move-result v9

    invoke-static {v8, v9}, Landroidx/compose/ui/input/pointer/h0;->g(II)Z

    move-result v14

    iget-object v10, v1, Landroidx/compose/ui/input/pointer/a0;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v11

    iget-object v13, v1, Landroidx/compose/ui/input/pointer/a0;->d:Landroidx/compose/ui/node/q;

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/node/LayoutNode;->r0(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZILjava/lang/Object;)V

    iget-object v8, v1, Landroidx/compose/ui/input/pointer/a0;->d:Landroidx/compose/ui/node/q;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v1, Landroidx/compose/ui/input/pointer/a0;->b:Landroidx/compose/ui/input/pointer/f;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->f()J

    move-result-wide v9

    iget-object v11, v1, Landroidx/compose/ui/input/pointer/a0;->d:Landroidx/compose/ui/node/q;

    invoke-static {v7}, Landroidx/compose/ui/input/pointer/p;->b(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v7

    invoke-virtual {v8, v9, v10, v11, v7}, Landroidx/compose/ui/input/pointer/f;->a(JLjava/util/List;Z)V

    iget-object v7, v1, Landroidx/compose/ui/input/pointer/a0;->d:Landroidx/compose/ui/node/q;

    invoke-virtual {v7}, Landroidx/compose/ui/node/q;->clear()V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, v1, Landroidx/compose/ui/input/pointer/a0;->b:Landroidx/compose/ui/input/pointer/f;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/f;->e()V

    iget-object v4, v1, Landroidx/compose/ui/input/pointer/a0;->b:Landroidx/compose/ui/input/pointer/f;

    move/from16 v5, p3

    invoke-virtual {v4, v3, v5}, Landroidx/compose/ui/input/pointer/f;->c(Landroidx/compose/ui/input/pointer/g;Z)Z

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->b()Landroidx/collection/x;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/collection/x;->n()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_7

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/g;->b()Landroidx/collection/x;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/w;

    invoke-static {v7}, Landroidx/compose/ui/input/pointer/p;->j(Landroidx/compose/ui/input/pointer/w;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/w;->p()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :goto_5
    invoke-static {v4, v0}, Landroidx/compose/ui/input/pointer/b0;->a(ZZ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v1, Landroidx/compose/ui/input/pointer/a0;->e:Z

    return v0

    :goto_6
    iput-boolean v2, v1, Landroidx/compose/ui/input/pointer/a0;->e:Z

    throw v0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/a0;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/a0;->c:Landroidx/compose/ui/input/pointer/x;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/x;->a()V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/a0;->b:Landroidx/compose/ui/input/pointer/f;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/f;->d()V

    :cond_0
    return-void
.end method
