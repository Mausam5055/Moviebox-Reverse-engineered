.class public abstract Lcom/google/common/collect/MultimapBuilder$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/MultimapBuilder$d;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$e;->b(I)Lcom/google/common/collect/MultimapBuilder$d;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/common/collect/MultimapBuilder$d;
    .locals 1

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$e$a;-><init>(Lcom/google/common/collect/MultimapBuilder$e;I)V

    return-object v0
.end method

.method abstract c()Ljava/util/Map;
.end method

.method public d()Lcom/google/common/collect/MultimapBuilder$f;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$e;->e(I)Lcom/google/common/collect/MultimapBuilder$f;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/google/common/collect/MultimapBuilder$f;
    .locals 1

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/MultimapBuilder$e$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$e$b;-><init>(Lcom/google/common/collect/MultimapBuilder$e;I)V

    return-object v0
.end method
