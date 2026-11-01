.class public final Landroidx/compose/runtime/internal/d;
.super Lu/d;

# interfaces
.implements Landroidx/compose/runtime/n1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/internal/d$a;,
        Landroidx/compose/runtime/internal/d$b;
    }
.end annotation


# static fields
.field public static final i:Landroidx/compose/runtime/internal/d$b;

.field private static final j:Landroidx/compose/runtime/internal/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/internal/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/internal/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/internal/d;->i:Landroidx/compose/runtime/internal/d$b;

    new-instance v0, Landroidx/compose/runtime/internal/d;

    sget-object v1, Lu/t;->e:Lu/t$a;

    invoke-virtual {v1}, Lu/t$a;->a()Lu/t;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.ValueHolder<kotlin.Any?>>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/internal/d;-><init>(Lu/t;I)V

    sput-object v0, Landroidx/compose/runtime/internal/d;->j:Landroidx/compose/runtime/internal/d;

    return-void
.end method

.method public constructor <init>(Lu/t;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu/d;-><init>(Lu/t;I)V

    return-void
.end method

.method public static final synthetic y()Landroidx/compose/runtime/internal/d;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/internal/d;->j:Landroidx/compose/runtime/internal/d;

    return-object v0
.end method


# virtual methods
.method public bridge A(Landroidx/compose/runtime/q;)Z
    .locals 0

    invoke-super {p0, p1}, Lu/d;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge B(Landroidx/compose/runtime/g3;)Z
    .locals 0

    invoke-super {p0, p1}, Lkotlin/collections/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge C(Landroidx/compose/runtime/q;)Landroidx/compose/runtime/g3;
    .locals 0

    invoke-super {p0, p1}, Lu/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/g3;

    return-object p1
.end method

.method public bridge D(Landroidx/compose/runtime/q;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/g3;

    return-object p1
.end method

.method public a(Landroidx/compose/runtime/q;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/t;->b(Landroidx/compose/runtime/n1;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/compose/runtime/q;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/n1;
    .locals 3

    invoke-virtual {p0}, Lu/d;->u()Lu/t;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lu/t;->P(ILjava/lang/Object;Ljava/lang/Object;I)Lu/t$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Landroidx/compose/runtime/internal/d;

    invoke-virtual {p1}, Lu/t$b;->a()Lu/t;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->size()I

    move-result v1

    invoke-virtual {p1}, Lu/t$b;->b()I

    move-result p1

    add-int/2addr v1, p1

    invoke-direct {p2, v0, v1}, Landroidx/compose/runtime/internal/d;-><init>(Lu/t;I)V

    return-object p2
.end method

.method public bridge synthetic builder()Landroidx/compose/runtime/n1$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/d;->z()Landroidx/compose/runtime/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic builder()Lt/g$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/d;->z()Landroidx/compose/runtime/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Landroidx/compose/runtime/q;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/m1;->a(Landroidx/compose/runtime/n1;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/q;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d;->A(Landroidx/compose/runtime/q;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/g3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/g3;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d;->B(Landroidx/compose/runtime/g3;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/q;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d;->C(Landroidx/compose/runtime/q;)Landroidx/compose/runtime/g3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/q;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Landroidx/compose/runtime/q;

    check-cast p2, Landroidx/compose/runtime/g3;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/d;->D(Landroidx/compose/runtime/q;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r()Lu/f;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/d;->z()Landroidx/compose/runtime/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public z()Landroidx/compose/runtime/internal/d$a;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/internal/d$a;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/internal/d$a;-><init>(Landroidx/compose/runtime/internal/d;)V

    return-object v0
.end method
