.class Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/i2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->createDescendingMultiset()Lcom/google/common/collect/a4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    invoke-direct {p0}, Lcom/google/common/collect/i2;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    invoke-virtual {v0}, Lcom/google/common/collect/h;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    invoke-virtual {v0}, Lcom/google/common/collect/h;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method o()Lcom/google/common/collect/a4;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h$a;->d:Lcom/google/common/collect/h;

    return-object v0
.end method
