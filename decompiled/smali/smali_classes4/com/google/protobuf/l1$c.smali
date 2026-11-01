.class Lcom/google/protobuf/l1$c;
.super Lcom/google/protobuf/l1$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/l1;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/l1;)V
    .locals 1

    iput-object p1, p0, Lcom/google/protobuf/l1$c;->this$0:Lcom/google/protobuf/l1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/l1$g;-><init>(Lcom/google/protobuf/l1;Lcom/google/protobuf/l1$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/l1;Lcom/google/protobuf/l1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/l1$c;-><init>(Lcom/google/protobuf/l1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/l1$b;

    iget-object v1, p0, Lcom/google/protobuf/l1$c;->this$0:Lcom/google/protobuf/l1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/l1$b;-><init>(Lcom/google/protobuf/l1;Lcom/google/protobuf/l1$a;)V

    return-object v0
.end method
