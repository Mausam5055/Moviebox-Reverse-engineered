.class Lcom/google/common/collect/MultimapBuilder$e$a;
.super Lcom/google/common/collect/MultimapBuilder$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$e;->b(I)Lcom/google/common/collect/MultimapBuilder$d;
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

    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->a:I

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$d;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lcom/google/common/collect/i3;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->b:Lcom/google/common/collect/MultimapBuilder$e;

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$e;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    iget v2, p0, Lcom/google/common/collect/MultimapBuilder$e$a;->a:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Map;Lcom/google/common/base/q;)Lcom/google/common/collect/i3;

    move-result-object v0

    return-object v0
.end method
