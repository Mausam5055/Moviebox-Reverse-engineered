.class public Ln4/m;
.super Ln4/a;


# instance fields
.field private final i:Lr4/i;

.field private final j:Landroid/graphics/Path;

.field private k:Landroid/graphics/Path;

.field private l:Landroid/graphics/Path;

.field private m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ln4/a;-><init>(Ljava/util/List;)V

    new-instance p1, Lr4/i;

    invoke-direct {p1}, Lr4/i;-><init>()V

    iput-object p1, p0, Ln4/m;->i:Lr4/i;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ln4/m;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Lw4/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln4/m;->q(Lw4/a;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public q(Lw4/a;F)Landroid/graphics/Path;
    .locals 10

    iget-object v0, p1, Lw4/a;->b:Ljava/lang/Object;

    check-cast v0, Lr4/i;

    iget-object v1, p1, Lw4/a;->c:Ljava/lang/Object;

    check-cast v1, Lr4/i;

    iget-object v2, p0, Ln4/m;->i:Lr4/i;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v0, v3, p2}, Lr4/i;->c(Lr4/i;Lr4/i;F)V

    iget-object v2, p0, Ln4/m;->i:Lr4/i;

    iget-object v3, p0, Ln4/m;->m:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v4, p0, Ln4/m;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm4/s;

    invoke-interface {v4, v2}, Lm4/s;->e(Lr4/i;)Lr4/i;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ln4/m;->j:Landroid/graphics/Path;

    invoke-static {v2, v3}, Lv4/k;->h(Lr4/i;Landroid/graphics/Path;)V

    iget-object v2, p0, Ln4/a;->e:Lw4/c;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ln4/m;->k:Landroid/graphics/Path;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Ln4/m;->k:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Ln4/m;->l:Landroid/graphics/Path;

    :cond_2
    iget-object v2, p0, Ln4/m;->k:Landroid/graphics/Path;

    invoke-static {v0, v2}, Lv4/k;->h(Lr4/i;Landroid/graphics/Path;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Ln4/m;->l:Landroid/graphics/Path;

    invoke-static {v1, v0}, Lv4/k;->h(Lr4/i;Landroid/graphics/Path;)V

    :cond_3
    iget-object v2, p0, Ln4/a;->e:Lw4/c;

    iget v3, p1, Lw4/a;->g:F

    iget-object p1, p1, Lw4/a;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Ln4/m;->k:Landroid/graphics/Path;

    if-nez v1, :cond_4

    move-object v6, v5

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ln4/m;->l:Landroid/graphics/Path;

    move-object v6, p1

    :goto_2
    invoke-virtual {p0}, Ln4/a;->e()F

    move-result v8

    invoke-virtual {p0}, Ln4/a;->f()F

    move-result v9

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lw4/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Path;

    return-object p1

    :cond_5
    iget-object p1, p0, Ln4/m;->j:Landroid/graphics/Path;

    return-object p1
.end method

.method public r(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ln4/m;->m:Ljava/util/List;

    return-void
.end method
