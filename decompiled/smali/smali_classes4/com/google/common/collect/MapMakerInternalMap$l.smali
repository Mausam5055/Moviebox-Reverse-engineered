.class Lcom/google/common/collect/MapMakerInternalMap$l;
.super Lcom/google/common/collect/MapMakerInternalMap$b;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$l$a;,
        Lcom/google/common/collect/MapMakerInternalMap$l$b;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$b;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$l;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/common/collect/MapMaker$Dummy;
    .locals 1

    sget-object v0, Lcom/google/common/collect/MapMaker$Dummy;->VALUE:Lcom/google/common/collect/MapMaker$Dummy;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$l;->c()Lcom/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method
