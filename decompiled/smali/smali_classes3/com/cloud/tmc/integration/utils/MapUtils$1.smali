.class Lcom/cloud/tmc/integration/utils/MapUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/MapUtils$Closure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/MapUtils;->transform(Ljava/util/Map;Lcom/cloud/tmc/integration/utils/MapUtils$Transformer;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/integration/utils/MapUtils$Closure<",
        "TK1;TV1;>;"
    }
.end annotation


# instance fields
.field final synthetic val$transMap:Ljava/util/Map;

.field final synthetic val$transformer:Lcom/cloud/tmc/integration/utils/MapUtils$Transformer;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/utils/MapUtils$Transformer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/MapUtils$1;->val$transformer:Lcom/cloud/tmc/integration/utils/MapUtils$Transformer;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/MapUtils$1;->val$transMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TV1;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/MapUtils$1;->val$transformer:Lcom/cloud/tmc/integration/utils/MapUtils$Transformer;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/utils/MapUtils$Transformer;->transform(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/utils/MapUtils$1;->val$transMap:Ljava/util/Map;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
