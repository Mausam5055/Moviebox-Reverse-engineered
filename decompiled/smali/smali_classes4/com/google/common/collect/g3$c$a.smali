.class Lcom/google/common/collect/g3$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g3$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/g3$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/g3$c;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/g3$c$a;->c:Lcom/google/common/collect/g3$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/common/collect/g3$c$a;->a:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/g3$c$a;->a:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/g3$c$a;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/collect/e2;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/g3$c$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
