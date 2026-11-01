.class final Lcom/google/common/collect/MapMakerInternalMap$q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/MapMakerInternalMap$q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$q$a;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$q$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$q$a;->a:Lcom/google/common/collect/MapMakerInternalMap$q$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/MapMakerInternalMap$q$a;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$q$a;->a:Lcom/google/common/collect/MapMakerInternalMap$q$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$q$a;->j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$q;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$q$a;->g(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMakerInternalMap$q;)Lcom/google/common/collect/MapMakerInternalMap$q;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$q;

    check-cast p3, Lcom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$q$a;->k(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$q;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$q$a;->i(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)Lcom/google/common/collect/MapMakerInternalMap$q;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMakerInternalMap$q;)Lcom/google/common/collect/MapMakerInternalMap$q;
    .locals 1

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$c;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p2, p2, Lcom/google/common/collect/MapMakerInternalMap$c;->a:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$q$a;->i(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)Lcom/google/common/collect/MapMakerInternalMap$q;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;)Lcom/google/common/collect/MapMakerInternalMap$q;
    .locals 7

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/common/collect/MapMakerInternalMap$q;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$800(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/google/common/collect/MapMakerInternalMap$q;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$q$b;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$800(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/MapMakerInternalMap$q$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMakerInternalMap$a;)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$q;Lcom/google/common/collect/MapMaker$Dummy;)V
    .locals 0

    return-void
.end method
