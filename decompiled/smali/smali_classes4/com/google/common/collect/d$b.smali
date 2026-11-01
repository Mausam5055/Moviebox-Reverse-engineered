.class Lcom/google/common/collect/d$b;
.super Lcom/google/common/collect/Multisets$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d$b;->a:Lcom/google/common/collect/d;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$d;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/l3;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d$b;->a:Lcom/google/common/collect/d;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d$b;->a:Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d$b;->a:Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->distinctElements()I

    move-result v0

    return v0
.end method
