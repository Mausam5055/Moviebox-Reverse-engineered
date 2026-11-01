.class public final synthetic Lcom/google/common/collect/g4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/l4$b;

    invoke-static {p1}, Lcom/google/common/collect/l4;->b(Lcom/google/common/collect/l4$b;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p1

    return-object p1
.end method
