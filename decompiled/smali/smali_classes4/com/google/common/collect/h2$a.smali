.class Lcom/google/common/collect/h2$a;
.super Lcom/google/common/collect/h2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/h2;-><init>(Lcom/google/common/collect/h2$a;)V

    return-void
.end method


# virtual methods
.method public d(II)Lcom/google/common/collect/h2;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h2$a;->l(I)Lcom/google/common/collect/h2;

    move-result-object p1

    return-object p1
.end method

.method public e(JJ)Lcom/google/common/collect/h2;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h2$a;->l(I)Lcom/google/common/collect/h2;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/h2;
    .locals 0

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h2$a;->l(I)Lcom/google/common/collect/h2;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/h2;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h2$a;->l(I)Lcom/google/common/collect/h2;

    move-result-object p1

    return-object p1
.end method

.method public h(ZZ)Lcom/google/common/collect/h2;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h2$a;->l(I)Lcom/google/common/collect/h2;

    move-result-object p1

    return-object p1
.end method

.method public i(ZZ)Lcom/google/common/collect/h2;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h2$a;->l(I)Lcom/google/common/collect/h2;

    move-result-object p1

    return-object p1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method l(I)Lcom/google/common/collect/h2;
    .locals 0

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/h2;->a()Lcom/google/common/collect/h2;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcom/google/common/collect/h2;->b()Lcom/google/common/collect/h2;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/h2;->c()Lcom/google/common/collect/h2;

    move-result-object p1

    :goto_0
    return-object p1
.end method
