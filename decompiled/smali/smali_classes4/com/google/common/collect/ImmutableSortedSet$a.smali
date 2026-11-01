.class public final Lcom/google/common/collect/ImmutableSortedSet$a;
.super Lcom/google/common/collect/ImmutableSet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final f:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$a;->f:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/collect/ImmutableSet$a;-><init>(IZ)V

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet$a;->f:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;->q(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$a;->u()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;->q(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;->r([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;->t(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet$a;->u()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic p(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSet$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$a;->v(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-object p0
.end method

.method public varargs r([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-object p0
.end method

.method public s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;

    return-object p0
.end method

.method public t(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->m(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$a;

    return-object p0
.end method

.method public u()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$a;->f:Ljava/util/Comparator;

    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    return-object v0
.end method

.method v(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSortedSet$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$a;->p(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSet$a;

    return-object p0
.end method
