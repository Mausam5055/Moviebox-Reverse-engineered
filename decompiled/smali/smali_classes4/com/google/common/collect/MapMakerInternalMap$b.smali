.class abstract Lcom/google/common/collect/MapMakerInternalMap$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Lcom/google/common/collect/MapMakerInternalMap$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
