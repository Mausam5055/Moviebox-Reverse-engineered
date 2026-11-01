.class Lcom/google/common/collect/Maps$k$a;
.super Lcom/google/common/collect/Maps$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$k;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$k$a;->a:Lcom/google/common/collect/Maps$k;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$i;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Maps$k$a;->a:Lcom/google/common/collect/Maps$k;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Maps$k$a;->a:Lcom/google/common/collect/Maps$k;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$k;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
