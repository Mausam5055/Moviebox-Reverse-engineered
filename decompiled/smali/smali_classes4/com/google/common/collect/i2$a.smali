.class Lcom/google/common/collect/i2$a;
.super Lcom/google/common/collect/Multisets$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i2;->m()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/i2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$d;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/l3;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    invoke-virtual {v0}, Lcom/google/common/collect/i2;->n()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i2$a;->a:Lcom/google/common/collect/i2;

    invoke-virtual {v0}, Lcom/google/common/collect/i2;->o()Lcom/google/common/collect/a4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/a4;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
