.class final Lcom/google/common/collect/MapMakerInternalMap$s$b;
.super Lcom/google/common/collect/MapMakerInternalMap$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/MapMakerInternalMap$s;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$s;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$s$b;->c:Lcom/google/common/collect/MapMakerInternalMap$s;

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/MapMakerInternalMap$s;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$s$b;->c:Lcom/google/common/collect/MapMakerInternalMap$s;

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$s$b;->e()Lcom/google/common/collect/MapMakerInternalMap$s;

    move-result-object v0

    return-object v0
.end method
