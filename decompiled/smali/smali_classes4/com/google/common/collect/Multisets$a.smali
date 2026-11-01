.class Lcom/google/common/collect/Multisets$a;
.super Lcom/google/common/collect/o4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->e(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/o4;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/l3$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$a;->b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/common/collect/l3$a;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
