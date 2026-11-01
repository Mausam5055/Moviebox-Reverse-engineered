.class Lcom/google/common/collect/g3$b;
.super Lcom/google/common/collect/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g3;->s(Ljava/lang/Iterable;Lcom/google/common/base/f;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Iterable;

.field final synthetic c:Lcom/google/common/base/f;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g3$b;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/g3$b;->c:Lcom/google/common/base/f;

    invoke-direct {p0}, Lcom/google/common/collect/j2;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/g3$b;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/g3$b;->c:Lcom/google/common/base/f;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->A(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
