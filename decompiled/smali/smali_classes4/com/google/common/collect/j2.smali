.class public abstract Lcom/google/common/collect/j2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Lcom/google/common/base/Optional;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/j2;->a:Lcom/google/common/base/Optional;

    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/j2;->a:Lcom/google/common/base/Optional;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lcom/google/common/collect/j2;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/common/collect/j2;->b([Ljava/lang/Iterable;)Lcom/google/common/collect/j2;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b([Ljava/lang/Iterable;)Lcom/google/common/collect/j2;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/j2$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j2$b;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Iterable;)Lcom/google/common/collect/j2;
    .locals 1

    instance-of v0, p0, Lcom/google/common/collect/j2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/j2;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/j2$a;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/j2$a;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private f()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j2;->a:Lcom/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/common/base/n;)Lcom/google/common/collect/j2;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/j2;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/g3;->e(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/j2;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/j2;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/j2;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g3;->r(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
