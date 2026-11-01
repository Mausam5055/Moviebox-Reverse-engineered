.class public Lhb/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lic/b;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lic/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhb/b;->a:Lic/b;

    iput-object p3, p0, Lhb/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lhb/b;->c:Ljava/lang/Integer;

    return-void
.end method

.method private a(Lkb/a$c;)V
    .locals 1

    iget-object v0, p0, Lhb/b;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb/a;

    invoke-interface {v0, p1}, Lkb/a;->d(Lkb/a$c;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Lhb/b;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lhb/b;->i()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhb/a;

    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkb/a$c;

    iget-object v3, v3, Lkb/a$c;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lhb/b;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lhb/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhb/a;->f(Ljava/lang/String;)Lkb/a$c;

    move-result-object v2

    invoke-direct {p0, v2}, Lhb/b;->a(Lkb/a$c;)V

    invoke-interface {v0, v2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lhb/a;->b(Ljava/util/Map;)Lhb/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d(Ljava/util/List;Lhb/a;)Z
    .locals 3

    invoke-virtual {p2}, Lhb/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lhb/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhb/a;

    invoke-virtual {v1}, Lhb/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lhb/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lhb/b;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb/a;

    iget-object v1, p0, Lhb/b;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkb/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhb/a;

    invoke-direct {p0, p2, v1}, Lhb/b;->d(Ljava/util/List;Lhb/a;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private h(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhb/a;

    invoke-direct {p0, p2, v1}, Lhb/b;->d(Ljava/util/List;Lhb/a;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lhb/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhb/a;->f(Ljava/lang/String;)Lkb/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private i()I
    .locals 2

    iget-object v0, p0, Lhb/b;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhb/b;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb/a;

    iget-object v1, p0, Lhb/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkb/a;->f(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhb/b;->c:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lhb/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lhb/b;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lkb/a;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private l(Ljava/util/Collection;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb/a$c;

    iget-object v0, v0, Lkb/a$c;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhb/b;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhb/b;->j()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lhb/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lhb/b;->h(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lhb/b;->l(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lhb/b;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lhb/b;->b(Ljava/util/List;)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lhb/b;->a:Lic/b;

    invoke-interface {v0}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e()Ljava/util/List;
    .locals 3

    invoke-direct {p0}, Lhb/b;->o()V

    invoke-direct {p0}, Lhb/b;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkb/a$c;

    invoke-static {v2}, Lhb/a;->a(Lkb/a$c;)Lhb/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public j()V
    .locals 1

    invoke-direct {p0}, Lhb/b;->o()V

    invoke-direct {p0}, Lhb/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lhb/b;->l(Ljava/util/Collection;)V

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lhb/b;->o()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lhb/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lhb/b;->n(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The replacementExperiments list is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
