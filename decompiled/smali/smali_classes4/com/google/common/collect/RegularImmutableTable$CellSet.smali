.class final Lcom/google/common/collect/RegularImmutableTable$CellSet;
.super Lcom/google/common/collect/IndexedImmutableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "Lcom/google/common/collect/c4$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable;Lcom/google/common/collect/RegularImmutableTable$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/common/collect/c4$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/c4$a;

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/c4$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method get(I)Lcom/google/common/collect/c4$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/c4$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableTable;->getCell(I)Lcom/google/common/collect/c4$a;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet;->get(I)Lcom/google/common/collect/c4$a;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/IndexedImmutableSet;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
