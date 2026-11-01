.class public final Lcom/google/common/collect/ImmutableList$a;
.super Lcom/google/common/collect/ImmutableCollection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public varargs k([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public m(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public n()Lcom/google/common/collect/ImmutableList;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method o(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableList;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method p(Lcom/google/common/collect/ImmutableList$a;)Lcom/google/common/collect/ImmutableList$a;
    .locals 1

    iget-object v0, p1, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->h([Ljava/lang/Object;I)V

    return-object p0
.end method
