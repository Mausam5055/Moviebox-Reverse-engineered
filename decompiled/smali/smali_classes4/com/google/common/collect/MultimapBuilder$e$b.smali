.class Lcom/google/common/collect/MultimapBuilder$e$b;
.super Lcom/google/common/collect/MultimapBuilder$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$e;->e(I)Lcom/google/common/collect/MultimapBuilder$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/MultimapBuilder$e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$e;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->a:I

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$f;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/collect/x3;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$e;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;

    iget v2, p0, Lcom/google/common/collect/MultimapBuilder$e$b;->a:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->c(Ljava/util/Map;Lcom/google/common/base/q;)Lcom/google/common/collect/x3;

    move-result-object v0

    return-object v0
.end method
