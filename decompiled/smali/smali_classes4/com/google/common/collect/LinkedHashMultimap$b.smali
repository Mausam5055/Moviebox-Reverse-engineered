.class final Lcom/google/common/collect/LinkedHashMultimap$b;
.super Lcom/google/common/collect/Sets$e;

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

.field private c:I

.field private d:I

.field private e:Lcom/google/common/collect/LinkedHashMultimap$c;

.field private f:Lcom/google/common/collect/LinkedHashMultimap$c;

.field final synthetic g:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$e;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->a:Ljava/lang/Object;

    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, p1, p2}, Lcom/google/common/collect/v2;->a(ID)I

    move-result p1

    new-array p1, p1, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$b;)Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/LinkedHashMultimap$b;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    return p0
.end method

.method private c()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private e()V
    .locals 6

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/v2;->b(IID)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    :goto_0
    if-eq v2, p0, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget v4, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    and-int/2addr v4, v0

    aget-object v5, v1, v4

    iput-object v5, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v3, v1, v4

    invoke-interface {v2}, Lcom/google/common/collect/LinkedHashMultimap$c;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Lcom/google/common/collect/v2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->c()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v3, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->a:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V

    invoke-static {v3, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v3, p1, v1

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->e()V

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    :goto_0
    if-eq v0, p0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, Lcom/google/common/collect/v2;->d(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->c()I

    move-result v2

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$b$a;-><init>(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    invoke-static {p1}, Lcom/google/common/collect/v2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->c()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v0, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v0, p1, v1

    goto :goto_1

    :cond_0
    iget-object p1, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object p1, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    :goto_1
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    return v0

    :cond_1
    iget-object v3, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    return v0
.end method
