.class public final synthetic Lcom/google/common/collect/n1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$a;

    check-cast p2, Lcom/google/common/collect/ImmutableSortedSet$a;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedSet$a;->v(Lcom/google/common/collect/ImmutableSet$a;)Lcom/google/common/collect/ImmutableSortedSet$a;

    move-result-object p1

    return-object p1
.end method
