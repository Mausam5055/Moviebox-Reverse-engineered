.class public final Landroidx/palette/graphics/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/a$c;,
        Landroidx/palette/graphics/a$b;,
        Landroidx/palette/graphics/a$e;,
        Landroidx/palette/graphics/a$d;
    }
.end annotation


# static fields
.field static final f:Landroidx/palette/graphics/a$c;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/util/SparseBooleanArray;

.field private final e:Landroidx/palette/graphics/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/palette/graphics/a$a;

    invoke-direct {v0}, Landroidx/palette/graphics/a$a;-><init>()V

    sput-object v0, Landroidx/palette/graphics/a;->f:Landroidx/palette/graphics/a$c;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/a;->a:Ljava/util/List;

    iput-object p2, p0, Landroidx/palette/graphics/a;->b:Ljava/util/List;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/a;->d:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/collection/a;

    invoke-direct {p1}, Landroidx/collection/a;-><init>()V

    iput-object p1, p0, Landroidx/palette/graphics/a;->c:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/palette/graphics/a;->a()Landroidx/palette/graphics/a$e;

    move-result-object p1

    iput-object p1, p0, Landroidx/palette/graphics/a;->e:Landroidx/palette/graphics/a$e;

    return-void
.end method

.method private a()Landroidx/palette/graphics/a$e;
    .locals 6

    iget-object v0, p0, Landroidx/palette/graphics/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Landroidx/palette/graphics/a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/palette/graphics/a$e;

    invoke-virtual {v4}, Landroidx/palette/graphics/a$e;->d()I

    move-result v5

    if-le v5, v1, :cond_0

    invoke-virtual {v4}, Landroidx/palette/graphics/a$e;->d()I

    move-result v1

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/a$b;
    .locals 1

    new-instance v0, Landroidx/palette/graphics/a$b;

    invoke-direct {v0, p0}, Landroidx/palette/graphics/a$b;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private d(Landroidx/palette/graphics/a$e;Landroidx/palette/graphics/b;)F
    .locals 7

    invoke-virtual {p1}, Landroidx/palette/graphics/a$e;->c()[F

    move-result-object v0

    iget-object v1, p0, Landroidx/palette/graphics/a;->e:Landroidx/palette/graphics/a$e;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/palette/graphics/a$e;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Landroidx/palette/graphics/b;->g()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->g()F

    move-result v3

    aget v2, v0, v2

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->i()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v5, v2

    mul-float/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {p2}, Landroidx/palette/graphics/b;->a()F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->a()F

    move-result v2

    const/4 v6, 0x2

    aget v0, v0, v6

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->h()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v5, v0

    mul-float/2addr v2, v5

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {p2}, Landroidx/palette/graphics/b;->f()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->f()F

    move-result p2

    invoke-virtual {p1}, Landroidx/palette/graphics/a$e;->d()I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    mul-float v4, p2, p1

    :cond_3
    add-float/2addr v3, v2

    add-float/2addr v3, v4

    return v3
.end method

.method private e(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;
    .locals 3

    invoke-direct {p0, p1}, Landroidx/palette/graphics/a;->l(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/palette/graphics/b;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/palette/graphics/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroidx/palette/graphics/a$e;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_0
    return-object v0
.end method

.method private l(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;
    .locals 7

    iget-object v0, p0, Landroidx/palette/graphics/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/palette/graphics/a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/palette/graphics/a$e;

    invoke-direct {p0, v4, p1}, Landroidx/palette/graphics/a;->p(Landroidx/palette/graphics/a$e;Landroidx/palette/graphics/b;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, p1}, Landroidx/palette/graphics/a;->d(Landroidx/palette/graphics/a$e;Landroidx/palette/graphics/b;)F

    move-result v5

    if-eqz v2, :cond_0

    cmpl-float v6, v5, v1

    if-lez v6, :cond_1

    :cond_0
    move-object v2, v4

    move v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private p(Landroidx/palette/graphics/a$e;Landroidx/palette/graphics/b;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/palette/graphics/a$e;->c()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->e()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->c()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x2

    aget v3, v0, v2

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->d()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    aget v0, v0, v2

    invoke-virtual {p2}, Landroidx/palette/graphics/b;->b()F

    move-result p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    iget-object p2, p0, Landroidx/palette/graphics/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroidx/palette/graphics/a$e;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method c()V
    .locals 5

    iget-object v0, p0, Landroidx/palette/graphics/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/palette/graphics/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/palette/graphics/b;

    invoke-virtual {v2}, Landroidx/palette/graphics/b;->k()V

    iget-object v3, p0, Landroidx/palette/graphics/a;->c:Ljava/util/Map;

    invoke-direct {p0, v2}, Landroidx/palette/graphics/a;->e(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/palette/graphics/a;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public f()Landroidx/palette/graphics/a$e;
    .locals 1

    sget-object v0, Landroidx/palette/graphics/b;->j:Landroidx/palette/graphics/b;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/a;->n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroidx/palette/graphics/a$e;
    .locals 1

    sget-object v0, Landroidx/palette/graphics/b;->g:Landroidx/palette/graphics/b;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/a;->n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    return-object v0
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Landroidx/palette/graphics/a;->e:Landroidx/palette/graphics/a$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/palette/graphics/a$e;->e()I

    move-result p1

    :cond_0
    return p1
.end method

.method public i()Landroidx/palette/graphics/a$e;
    .locals 1

    iget-object v0, p0, Landroidx/palette/graphics/a;->e:Landroidx/palette/graphics/a$e;

    return-object v0
.end method

.method public j()Landroidx/palette/graphics/a$e;
    .locals 1

    sget-object v0, Landroidx/palette/graphics/b;->h:Landroidx/palette/graphics/b;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/a;->n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/palette/graphics/a$e;
    .locals 1

    sget-object v0, Landroidx/palette/graphics/b;->e:Landroidx/palette/graphics/b;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/a;->n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroidx/palette/graphics/a$e;
    .locals 1

    sget-object v0, Landroidx/palette/graphics/b;->i:Landroidx/palette/graphics/b;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/a;->n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;
    .locals 1

    iget-object v0, p0, Landroidx/palette/graphics/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/palette/graphics/a$e;

    return-object p1
.end method

.method public o()Landroidx/palette/graphics/a$e;
    .locals 1

    sget-object v0, Landroidx/palette/graphics/b;->f:Landroidx/palette/graphics/b;

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/a;->n(Landroidx/palette/graphics/b;)Landroidx/palette/graphics/a$e;

    move-result-object v0

    return-object v0
.end method
