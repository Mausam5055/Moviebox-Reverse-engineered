.class final Lcom/google/common/collect/MapMakerInternalMap$l$b;
.super Lcom/google/common/collect/MapMakerInternalMap$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/MapMakerInternalMap$l;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$l;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$l$b;->c:Lcom/google/common/collect/MapMakerInternalMap$l;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$l$b;->c:Lcom/google/common/collect/MapMakerInternalMap$l;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/MapMakerInternalMap$l;->c()Lcom/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$l$b;->d()Lcom/google/common/collect/MapMakerInternalMap$l;

    move-result-object v0

    return-object v0
.end method
