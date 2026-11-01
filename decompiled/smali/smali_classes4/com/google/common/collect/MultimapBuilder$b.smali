.class Lcom/google/common/collect/MultimapBuilder$b;
.super Lcom/google/common/collect/MultimapBuilder$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder;->d(I)Lcom/google/common/collect/MultimapBuilder$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/MultimapBuilder$b;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$e;-><init>()V

    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/MultimapBuilder$b;->a:I

    invoke-static {v0}, Lcom/google/common/collect/r3;->f(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
