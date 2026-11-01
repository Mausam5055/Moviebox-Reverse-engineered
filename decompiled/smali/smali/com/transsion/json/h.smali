.class public Lcom/transsion/json/h;
.super Ljava/lang/Object;


# static fields
.field private static final n:Ljava/lang/ThreadLocal;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/transsion/json/p;

.field private c:Z

.field private final d:Ljava/util/Stack;

.field private e:I

.field private f:Lcom/transsion/json/b/p;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/List;

.field private i:Lcom/transsion/json/t;

.field private j:Lcom/transsion/json/f;

.field private final k:Ljava/util/LinkedList;

.field private final l:Lcom/transsion/json/q;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/json/h$a;

    invoke-direct {v0}, Lcom/transsion/json/h$a;-><init>()V

    sput-object v0, Lcom/transsion/json/h;->n:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/transsion/json/h;->d:Ljava/util/Stack;

    iput v0, p0, Lcom/transsion/json/h;->e:I

    sget-object v0, Lcom/transsion/json/t;->b:Lcom/transsion/json/t;

    iput-object v0, p0, Lcom/transsion/json/h;->i:Lcom/transsion/json/t;

    new-instance v0, Lcom/transsion/json/f;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/transsion/json/f;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/transsion/json/h;->j:Lcom/transsion/json/f;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/h;->k:Ljava/util/LinkedList;

    new-instance v0, Lcom/transsion/json/q;

    invoke-direct {v0}, Lcom/transsion/json/q;-><init>()V

    iput-object v0, p0, Lcom/transsion/json/h;->l:Lcom/transsion/json/q;

    return-void
.end method

.method private I()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/json/h;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, ","

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/json/h;->m:Z

    :cond_1
    return-void
.end method

.method private J()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/json/h;->m:Z

    return-void
.end method

.method private K()Lcom/transsion/json/b/n;
    .locals 2

    iget-object v0, p0, Lcom/transsion/json/h;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/json/h;->l:Lcom/transsion/json/q;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/b/n;

    return-object v0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/transsion/json/h;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private d(C)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "\\u"

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const v2, 0xf000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0xc

    iget-object v3, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    sget-object v4, Lcom/transsion/json/j;->f:[C

    aget-char v2, v4, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    shl-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private p(Ljava/lang/Object;)Lcom/transsion/json/b/n;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->f:Lcom/transsion/json/b/p;

    invoke-virtual {v0, p1}, Lcom/transsion/json/b/p;->a(Ljava/lang/Object;)Lcom/transsion/json/b/n;

    move-result-object p1

    return-object p1
.end method

.method public static q()Lcom/transsion/json/h;
    .locals 1

    sget-object v0, Lcom/transsion/json/h;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/h;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/transsion/json/u;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/h;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/u;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public C()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/json/h;->J()V

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    iget v0, p0, Lcom/transsion/json/h;->e:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/transsion/json/h;->e:I

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "]"

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    invoke-virtual {p0}, Lcom/transsion/json/h;->B()V

    return-void
.end method

.method public D()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/json/h;->J()V

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    iget v0, p0, Lcom/transsion/json/h;->e:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/transsion/json/h;->e:I

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "}"

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    invoke-virtual {p0}, Lcom/transsion/json/h;->B()V

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/json/h;->m:Z

    return-void
.end method

.method public F()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/transsion/json/h;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v2, " "

    invoke-interface {v1, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G()Lcom/transsion/json/u;
    .locals 3

    invoke-direct {p0}, Lcom/transsion/json/h;->I()V

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->A()Lcom/transsion/json/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/json/u;->c()Lcom/transsion/json/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/json/a;->b:Lcom/transsion/json/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    new-instance v0, Lcom/transsion/json/u;

    sget-object v1, Lcom/transsion/json/a;->b:Lcom/transsion/json/a;

    invoke-direct {v0, v1}, Lcom/transsion/json/u;-><init>(Lcom/transsion/json/a;)V

    invoke-virtual {p0, v0}, Lcom/transsion/json/h;->i(Lcom/transsion/json/u;)V

    iget-object v1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v2, "["

    invoke-interface {v1, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    iget-boolean v1, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/json/h;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/transsion/json/h;->e:I

    iget-object v1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    :cond_1
    return-object v0
.end method

.method public H()Lcom/transsion/json/u;
    .locals 3

    invoke-direct {p0}, Lcom/transsion/json/h;->I()V

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->A()Lcom/transsion/json/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/json/u;->c()Lcom/transsion/json/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/json/a;->b:Lcom/transsion/json/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    new-instance v0, Lcom/transsion/json/u;

    sget-object v1, Lcom/transsion/json/a;->a:Lcom/transsion/json/a;

    invoke-direct {v0, v1}, Lcom/transsion/json/u;-><init>(Lcom/transsion/json/a;)V

    invoke-virtual {p0, v0}, Lcom/transsion/json/h;->i(Lcom/transsion/json/u;)V

    iget-object v1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v2, "{"

    invoke-interface {v1, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    iget-boolean v1, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/json/h;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/transsion/json/h;->e:I

    iget-object v1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    :cond_1
    return-object v0
.end method

.method public a(Lcom/transsion/json/d;Ljava/lang/Object;)Lcom/transsion/json/b/n;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/json/h;->K()Lcom/transsion/json/b/n;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/json/d;->j()Lcom/transsion/json/b/n;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/transsion/json/h;->p(Ljava/lang/Object;)Lcom/transsion/json/b/n;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected b(Ljava/util/List;)Lcom/transsion/json/r;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/json/r;

    iget-object v1, p0, Lcom/transsion/json/h;->l:Lcom/transsion/json/q;

    invoke-virtual {v0, v1}, Lcom/transsion/json/r;->b(Lcom/transsion/json/q;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/transsion/json/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->f:Lcom/transsion/json/b/p;

    return-void
.end method

.method public f(Lcom/transsion/json/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->j:Lcom/transsion/json/f;

    return-void
.end method

.method public g(Lcom/transsion/json/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    return-void
.end method

.method public h(Lcom/transsion/json/t;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->i:Lcom/transsion/json/t;

    return-void
.end method

.method public i(Lcom/transsion/json/u;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/json/h;->K()Lcom/transsion/json/b/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/json/h;->p(Ljava/lang/Object;)Lcom/transsion/json/b/n;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/json/b/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->a:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->g:Ljava/util/Map;

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/json/h;->c:Z

    return-void
.end method

.method public n(Lcom/transsion/json/d;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/json/h;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/transsion/json/h;->b(Ljava/util/List;)Lcom/transsion/json/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/json/r;->a()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/json/d;->l()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/json/d;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/transsion/json/h;->i:Lcom/transsion/json/t;

    sget-object v2, Lcom/transsion/json/t;->b:Lcom/transsion/json/t;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/json/d;->h()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    move v1, v3

    :cond_3
    return v1

    :cond_4
    return v3
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/json/h;->h:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/json/h;->b(Ljava/util/List;)Lcom/transsion/json/r;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/json/r;->a()Z

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lcom/transsion/json/h;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/json/h;

    invoke-virtual {p1}, Lcom/transsion/json/h;->y()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/transsion/json/h;->i:Lcom/transsion/json/t;

    sget-object v2, Lcom/transsion/json/t;->b:Lcom/transsion/json/t;

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/transsion/json/h;->l:Lcom/transsion/json/q;

    invoke-virtual {v1}, Lcom/transsion/json/q;->c()I

    move-result v1

    if-gt v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/transsion/json/h;->i:Lcom/transsion/json/t;

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-nez p2, :cond_3

    const-class p2, Ljava/lang/Iterable;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/json/h;->I()V

    invoke-virtual {p0}, Lcom/transsion/json/h;->A()Lcom/transsion/json/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/json/u;->c()Lcom/transsion/json/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/json/a;->b:Lcom/transsion/json/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    invoke-interface {v0, p1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/h;->h:Ljava/util/List;

    return-void
.end method

.method public t()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->k:Ljava/util/LinkedList;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/json/h;->I()V

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/json/h;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "null"

    invoke-virtual {p0, p1}, Lcom/transsion/json/h;->r(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v0, ":"

    invoke-interface {p1, v0}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    iget-boolean p1, p0, Lcom/transsion/json/h;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v0, " "

    invoke-interface {p1, v0}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    :cond_2
    return-void
.end method

.method public v()Lcom/transsion/json/p;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/json/h;->I()V

    iget-boolean v0, p0, Lcom/transsion/json/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->A()Lcom/transsion/json/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/json/u;->c()Lcom/transsion/json/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/json/a;->b:Lcom/transsion/json/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/json/h;->F()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v1, "\""

    invoke-interface {v0, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\u0022"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    const/16 v5, 0x26

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\u0026"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :cond_2
    const/16 v5, 0x27

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\u0027"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x3c

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\u003c"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0x3e

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\u003e"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_5
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\\\"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_6
    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\b"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_7
    const/16 v5, 0xc

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\f"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_8
    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\n"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_9
    const/16 v5, 0xd

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\r"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_a
    const/16 v5, 0x9

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    const-string v5, "\\t"

    invoke-interface {v4, p1, v3, v2, v5}, Lcom/transsion/json/p;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_b
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    invoke-interface {v5, p1, v3, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v4}, Lcom/transsion/json/h;->d(C)V

    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_e

    iget-object v0, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v3, v2}, Lcom/transsion/json/p;->a(Ljava/lang/String;II)I

    :cond_e
    iget-object p1, p0, Lcom/transsion/json/h;->b:Lcom/transsion/json/p;

    invoke-interface {p1, v1}, Lcom/transsion/json/p;->a(Ljava/lang/String;)Lcom/transsion/json/p;

    return-void
.end method

.method public x()Lcom/transsion/json/q;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->l:Lcom/transsion/json/q;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public z()Lcom/transsion/json/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/h;->j:Lcom/transsion/json/f;

    return-object v0
.end method
