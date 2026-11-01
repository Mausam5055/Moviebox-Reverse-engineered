.class Lcom/google/common/collect/StandardTable$h$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$h$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$h$a$a;->a:Lcom/google/common/collect/StandardTable$h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$h$a$a;->a:Lcom/google/common/collect/StandardTable$h$a;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$h$a;->b:Lcom/google/common/collect/StandardTable$h;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$h;->d:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$h$a$a;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
