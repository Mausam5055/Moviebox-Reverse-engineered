.class Lcom/google/common/collect/LinkedListMultimap$d;
.super Ljava/util/AbstractSequentialList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->createValues()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$h;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/LinkedListMultimap$h;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    new-instance p1, Lcom/google/common/collect/LinkedListMultimap$d$a;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/common/collect/LinkedListMultimap$d$a;-><init>(Lcom/google/common/collect/LinkedListMultimap$d;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$h;)V

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$800(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
