.class Lcom/google/common/collect/MapMakerInternalMap$m;
.super Lcom/google/common/collect/MapMakerInternalMap$b;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$m$a;,
        Lcom/google/common/collect/MapMakerInternalMap$m$b;
    }
.end annotation


# instance fields
.field private volatile c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$b;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$m;->c:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$m;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/MapMakerInternalMap$m;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$m;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/MapMakerInternalMap$m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$m;->c:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$m;->c:Ljava/lang/Object;

    return-object v0
.end method
