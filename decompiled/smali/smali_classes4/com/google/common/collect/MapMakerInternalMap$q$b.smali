.class final Lcom/google/common/collect/MapMakerInternalMap$q$b;
.super Lcom/google/common/collect/MapMakerInternalMap$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/google/common/collect/MapMakerInternalMap$q;


# direct methods
.method private constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$q;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$q$b;->b:Lcom/google/common/collect/MapMakerInternalMap$q;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$q$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)V

    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/collect/MapMakerInternalMap$q;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$q$b;->b:Lcom/google/common/collect/MapMakerInternalMap$q;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/MapMakerInternalMap$q;->c()Lcom/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$q$b;->d()Lcom/google/common/collect/MapMakerInternalMap$q;

    move-result-object v0

    return-object v0
.end method
