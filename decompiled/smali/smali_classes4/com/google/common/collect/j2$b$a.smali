.class Lcom/google/common/collect/j2$b$a;
.super Lcom/google/common/collect/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j2$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/j2$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j2$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/j2$b$a;->c:Lcom/google/common/collect/j2$b;

    invoke-direct {p0, p2}, Lcom/google/common/collect/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2$b$a;->b(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j2$b$a;->c:Lcom/google/common/collect/j2$b;

    iget-object v0, v0, Lcom/google/common/collect/j2$b;->b:[Ljava/lang/Iterable;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
