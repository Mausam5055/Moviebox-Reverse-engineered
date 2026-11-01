.class public Lcom/google/common/collect/ImmutableMultiset$b;
.super Lcom/google/common/collect/ImmutableCollection$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/google/common/collect/o3;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Z

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    invoke-static {p1}, Lcom/google/common/collect/o3;->c(I)Lcom/google/common/collect/o3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Z

    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    return-void
.end method

.method static m(Ljava/lang/Iterable;)Lcom/google/common/collect/o3;
    .locals 1

    instance-of v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/RegularImmutableMultiset;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->contents:Lcom/google/common/collect/o3;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$b;->l()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultiset$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs h([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public i(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/l3;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/l3;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset$b;->m(Ljava/lang/Iterable;)Lcom/google/common/collect/o3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-virtual {p1}, Lcom/google/common/collect/o3;->C()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/o3;->C()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/o3;->d(I)V

    invoke-virtual {v0}, Lcom/google/common/collect/o3;->e()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o3;->i(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o3;->k(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ImmutableMultiset$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o3;->s(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-virtual {v1}, Lcom/google/common/collect/o3;->C()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/o3;->d(I)V

    invoke-interface {p1}, Lcom/google/common/collect/l3;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l3$a;

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultiset$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    :cond_2
    return-object p0
.end method

.method public j(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public k(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/o3;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-direct {v0, v2}, Lcom/google/common/collect/o3;-><init>(Lcom/google/common/collect/o3;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    :cond_1
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Z

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o3;->f(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/o3;->u(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public l()Lcom/google/common/collect/ImmutableMultiset;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-virtual {v0}, Lcom/google/common/collect/o3;->C()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/o3;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/o3;-><init>(Lcom/google/common/collect/o3;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->c:Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->b:Z

    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/o3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/o3;)V

    return-object v0
.end method
