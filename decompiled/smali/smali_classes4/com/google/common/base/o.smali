.class public final Lcom/google/common/base/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/o$d;,
        Lcom/google/common/base/o$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/b;

.field private final b:Z

.field private final c:Lcom/google/common/base/o$d;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/o$d;)V
    .locals 3

    invoke-static {}, Lcom/google/common/base/b;->i()Lcom/google/common/base/b;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    iput-boolean p2, p0, Lcom/google/common/base/o;->b:Z

    iput-object p3, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/b;

    iput p4, p0, Lcom/google/common/base/o;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/base/o;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/base/o;)Lcom/google/common/base/b;
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/b;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/base/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/common/base/o;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/google/common/base/o;)I
    .locals 0

    iget p0, p0, Lcom/google/common/base/o;->d:I

    return p0
.end method

.method public static f(C)Lcom/google/common/base/o;
    .locals 0

    invoke-static {p0}, Lcom/google/common/base/b;->f(C)Lcom/google/common/base/b;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/o;->g(Lcom/google/common/base/b;)Lcom/google/common/base/o;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/common/base/b;)Lcom/google/common/base/o;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/o;

    new-instance v1, Lcom/google/common/base/o$a;

    invoke-direct {v1, p0}, Lcom/google/common/base/o$a;-><init>(Lcom/google/common/base/b;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;)V

    return-object v0
.end method

.method private j(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/o$d;->a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public e()Lcom/google/common/base/o;
    .locals 5

    new-instance v0, Lcom/google/common/base/o;

    iget-object v1, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    iget-object v2, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/b;

    iget v3, p0, Lcom/google/common/base/o;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/o$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/o$b;-><init>(Lcom/google/common/base/o;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public i(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/base/o;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/google/common/base/o;
    .locals 1

    invoke-static {}, Lcom/google/common/base/b;->k()Lcom/google/common/base/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/o;->l(Lcom/google/common/base/b;)Lcom/google/common/base/o;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/b;)Lcom/google/common/base/o;
    .locals 4

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/o;

    iget-object v1, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    iget-boolean v2, p0, Lcom/google/common/base/o;->b:Z

    iget v3, p0, Lcom/google/common/base/o;->d:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V

    return-object v0
.end method
