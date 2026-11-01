.class final Lcom/google/common/collect/MapMakerInternalMap$n$b;
.super Lcom/google/common/collect/MapMakerInternalMap$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final d:Lcom/google/common/collect/MapMakerInternalMap$n;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$n;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$n$b;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$n$b;->d:Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$n$b;->e()Lcom/google/common/collect/MapMakerInternalMap$n;

    move-result-object v0

    return-object v0
.end method
