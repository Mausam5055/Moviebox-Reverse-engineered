.class Lcom/google/common/collect/c$a;
.super Lcom/google/common/collect/Multimaps$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/c$a;->a:Lcom/google/common/collect/c;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$b;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/j3;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/c$a;->a:Lcom/google/common/collect/c;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/c$a;->a:Lcom/google/common/collect/c;

    invoke-virtual {v0}, Lcom/google/common/collect/c;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
