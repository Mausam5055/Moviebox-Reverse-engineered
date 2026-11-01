.class public Lq7/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Lu7/b;

.field private i:Lx7/b;

.field private j:Lw7/b;

.field private k:Lz7/b;

.field private l:Ly7/b;

.field private m:Lt7/a;

.field private n:Ljava/util/Map;

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lq7/a$a;->a:I

    const-string v0, "X-LOG"

    iput-object v0, p0, Lq7/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq7/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lq7/a$a;->a:I

    const-string v0, "X-LOG"

    iput-object v0, p0, Lq7/a$a;->b:Ljava/lang/String;

    iget v0, p1, Lq7/a;->a:I

    iput v0, p0, Lq7/a$a;->a:I

    iget-object v0, p1, Lq7/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lq7/a$a;->b:Ljava/lang/String;

    iget-boolean v0, p1, Lq7/a;->c:Z

    iput-boolean v0, p0, Lq7/a$a;->c:Z

    iget-boolean v0, p1, Lq7/a;->d:Z

    iput-boolean v0, p0, Lq7/a$a;->d:Z

    iget-object v0, p1, Lq7/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lq7/a$a;->e:Ljava/lang/String;

    iget v0, p1, Lq7/a;->f:I

    iput v0, p0, Lq7/a$a;->f:I

    iget-boolean v0, p1, Lq7/a;->g:Z

    iput-boolean v0, p0, Lq7/a$a;->g:Z

    iget-object v0, p1, Lq7/a;->h:Lu7/b;

    iput-object v0, p0, Lq7/a$a;->h:Lu7/b;

    iget-object v0, p1, Lq7/a;->i:Lx7/b;

    iput-object v0, p0, Lq7/a$a;->i:Lx7/b;

    iget-object v0, p1, Lq7/a;->j:Lw7/b;

    iput-object v0, p0, Lq7/a$a;->j:Lw7/b;

    iget-object v0, p1, Lq7/a;->k:Lz7/b;

    iput-object v0, p0, Lq7/a$a;->k:Lz7/b;

    iget-object v0, p1, Lq7/a;->l:Ly7/b;

    iput-object v0, p0, Lq7/a$a;->l:Ly7/b;

    iget-object v0, p1, Lq7/a;->m:Lt7/a;

    iput-object v0, p0, Lq7/a$a;->m:Lt7/a;

    invoke-static {p1}, Lq7/a;->a(Lq7/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lq7/a;->a(Lq7/a;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lq7/a$a;->n:Ljava/util/Map;

    :cond_0
    iget-object v0, p1, Lq7/a;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lq7/a;->o:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq7/a$a;->o:Ljava/util/List;

    :cond_1
    return-void
.end method

.method static synthetic a(Lq7/a$a;)I
    .locals 0

    iget p0, p0, Lq7/a$a;->a:I

    return p0
.end method

.method static synthetic b(Lq7/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lq7/a$a;)Lz7/b;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->k:Lz7/b;

    return-object p0
.end method

.method static synthetic d(Lq7/a$a;)Ly7/b;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->l:Ly7/b;

    return-object p0
.end method

.method static synthetic e(Lq7/a$a;)Lt7/a;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->m:Lt7/a;

    return-object p0
.end method

.method static synthetic f(Lq7/a$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->n:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lq7/a$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lq7/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lq7/a$a;->c:Z

    return p0
.end method

.method static synthetic i(Lq7/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lq7/a$a;->d:Z

    return p0
.end method

.method static synthetic j(Lq7/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lq7/a$a;)I
    .locals 0

    iget p0, p0, Lq7/a$a;->f:I

    return p0
.end method

.method static synthetic l(Lq7/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lq7/a$a;->g:Z

    return p0
.end method

.method static synthetic m(Lq7/a$a;)Lu7/b;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->h:Lu7/b;

    return-object p0
.end method

.method static synthetic n(Lq7/a$a;)Lx7/b;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->i:Lx7/b;

    return-object p0
.end method

.method static synthetic o(Lq7/a$a;)Lw7/b;
    .locals 0

    iget-object p0, p0, Lq7/a$a;->j:Lw7/b;

    return-object p0
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lq7/a$a;->h:Lu7/b;

    if-nez v0, :cond_0

    invoke-static {}, Lb8/a;->h()Lu7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a$a;->h:Lu7/b;

    :cond_0
    iget-object v0, p0, Lq7/a$a;->i:Lx7/b;

    if-nez v0, :cond_1

    invoke-static {}, Lb8/a;->n()Lx7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a$a;->i:Lx7/b;

    :cond_1
    iget-object v0, p0, Lq7/a$a;->j:Lw7/b;

    if-nez v0, :cond_2

    invoke-static {}, Lb8/a;->l()Lw7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a$a;->j:Lw7/b;

    :cond_2
    iget-object v0, p0, Lq7/a$a;->k:Lz7/b;

    if-nez v0, :cond_3

    invoke-static {}, Lb8/a;->k()Lz7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a$a;->k:Lz7/b;

    :cond_3
    iget-object v0, p0, Lq7/a$a;->l:Ly7/b;

    if-nez v0, :cond_4

    invoke-static {}, Lb8/a;->j()Ly7/b;

    move-result-object v0

    iput-object v0, p0, Lq7/a$a;->l:Ly7/b;

    :cond_4
    iget-object v0, p0, Lq7/a$a;->m:Lt7/a;

    if-nez v0, :cond_5

    invoke-static {}, Lb8/a;->c()Lt7/a;

    move-result-object v0

    iput-object v0, p0, Lq7/a$a;->m:Lt7/a;

    :cond_5
    iget-object v0, p0, Lq7/a$a;->n:Ljava/util/Map;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lb8/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lq7/a$a;->n:Ljava/util/Map;

    :cond_6
    return-void
.end method


# virtual methods
.method public A(Lu7/b;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->h:Lu7/b;

    return-object p0
.end method

.method public B(I)Lq7/a$a;
    .locals 0

    iput p1, p0, Lq7/a$a;->a:I

    return-object p0
.end method

.method C(Ljava/util/Map;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->n:Ljava/util/Map;

    return-object p0
.end method

.method public D(Ly7/b;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->l:Ly7/b;

    return-object p0
.end method

.method public E(Ljava/lang/String;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public F(Lz7/b;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->k:Lz7/b;

    return-object p0
.end method

.method public G(Lw7/b;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->j:Lw7/b;

    return-object p0
.end method

.method public H(Lx7/b;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->i:Lx7/b;

    return-object p0
.end method

.method public p(La8/a;)Lq7/a$a;
    .locals 1

    iget-object v0, p0, Lq7/a$a;->o:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq7/a$a;->o:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lq7/a$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public q(Lt7/a;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->m:Lt7/a;

    return-object p0
.end method

.method public r()Lq7/a;
    .locals 1

    invoke-direct {p0}, Lq7/a$a;->y()V

    new-instance v0, Lq7/a;

    invoke-direct {v0, p0}, Lq7/a;-><init>(Lq7/a$a;)V

    return-object v0
.end method

.method public s()Lq7/a$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq7/a$a;->g:Z

    return-object p0
.end method

.method public t()Lq7/a$a;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq7/a$a;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lq7/a$a;->e:Ljava/lang/String;

    iput v0, p0, Lq7/a$a;->f:I

    return-object p0
.end method

.method public u()Lq7/a$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq7/a$a;->c:Z

    return-object p0
.end method

.method public v()Lq7/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq7/a$a;->g:Z

    return-object p0
.end method

.method public w(Ljava/lang/String;I)Lq7/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq7/a$a;->d:Z

    iput-object p1, p0, Lq7/a$a;->e:Ljava/lang/String;

    iput p2, p0, Lq7/a$a;->f:I

    return-object p0
.end method

.method public x()Lq7/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq7/a$a;->c:Z

    return-object p0
.end method

.method z(Ljava/util/List;)Lq7/a$a;
    .locals 0

    iput-object p1, p0, Lq7/a$a;->o:Ljava/util/List;

    return-object p0
.end method
