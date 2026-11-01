.class abstract Lcom/google/common/collect/Maps$k;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/Iterator;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$k;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->d(Ljava/util/Iterator;)V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Maps$k$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$k$a;-><init>(Lcom/google/common/collect/Maps$k;)V

    return-object v0
.end method
