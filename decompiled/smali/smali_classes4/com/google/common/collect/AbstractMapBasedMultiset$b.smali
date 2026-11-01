.class Lcom/google/common/collect/AbstractMapBasedMultiset$b;
.super Lcom/google/common/collect/AbstractMapBasedMultiset$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$b;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$c;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$b;->c(I)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method

.method c(I)Lcom/google/common/collect/l3$a;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$b;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/o3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/o3;->g(I)Lcom/google/common/collect/l3$a;

    move-result-object p1

    return-object p1
.end method
