.class Lcom/google/common/collect/LinkedHashMultimap$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/google/common/collect/LinkedHashMultimap$c;

.field b:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

.field c:I

.field final synthetic d:Lcom/google/common/collect/LinkedHashMultimap$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->a(Lcom/google/common/collect/LinkedHashMultimap$b;)Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->b(Lcom/google/common/collect/LinkedHashMultimap$b;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->b(Lcom/google/common/collect/LinkedHashMultimap$b;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$b$a;->a()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->b(Lcom/google/common/collect/LinkedHashMultimap$b;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b$a;->b:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method
