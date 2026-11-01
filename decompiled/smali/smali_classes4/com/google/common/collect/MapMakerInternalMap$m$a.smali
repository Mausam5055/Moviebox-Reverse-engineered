.class final Lcom/google/common/collect/MapMakerInternalMap$m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/MapMakerInternalMap$m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$m$a;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$m$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$m$a;->a:Lcom/google/common/collect/MapMakerInternalMap$m$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/MapMakerInternalMap$m$a;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$m$a;->a:Lcom/google/common/collect/MapMakerInternalMap$m$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$h;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$m;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$m;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Lcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;

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

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$m;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 0

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$m;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public g(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Lcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;
    .locals 2

    iget-object v0, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Ljava/lang/Object;

    iget v1, p2, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$m$a;->i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$m;->c(Lcom/google/common/collect/MapMakerInternalMap$m;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$m;->d(Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public i(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)Lcom/google/common/collect/MapMakerInternalMap$m;
    .locals 0

    if-nez p4, :cond_0

    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$m;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$m;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/collect/MapMakerInternalMap$m$b;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$m$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$m;)V

    :goto_0
    return-object p1
.end method

.method public j(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .locals 1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$m;->d(Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
