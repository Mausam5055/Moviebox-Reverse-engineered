.class final Lcom/google/common/collect/TreeRangeSet$b;
.super Lcom/google/common/collect/k2;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$b;->b:Lcom/google/common/collect/TreeRangeSet;

    invoke-direct {p0}, Lcom/google/common/collect/k2;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$b;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$b;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$b;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
