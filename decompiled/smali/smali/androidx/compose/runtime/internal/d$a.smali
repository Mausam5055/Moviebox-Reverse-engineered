.class public final Landroidx/compose/runtime/internal/d$a;
.super Lu/f;

# interfaces
.implements Landroidx/compose/runtime/n1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private g:Landroidx/compose/runtime/internal/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/internal/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/f;-><init>(Lu/d;)V

    iput-object p1, p0, Landroidx/compose/runtime/internal/d$a;->g:Landroidx/compose/runtime/internal/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/compose/runtime/n1;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/d$a;->q()Landroidx/compose/runtime/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lt/g;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/d$a;->q()Landroidx/compose/runtime/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/q;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d$a;->r(Landroidx/compose/runtime/q;)Z

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

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d$a;->s(Landroidx/compose/runtime/g3;)Z

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

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d$a;->t(Landroidx/compose/runtime/q;)Landroidx/compose/runtime/g3;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/d$a;->u(Landroidx/compose/runtime/q;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h()Lu/d;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/d$a;->q()Landroidx/compose/runtime/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public q()Landroidx/compose/runtime/internal/d;
    .locals 3

    invoke-virtual {p0}, Lu/f;->j()Lu/t;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/internal/d$a;->g:Landroidx/compose/runtime/internal/d;

    invoke-virtual {v1}, Lu/d;->u()Lu/t;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/internal/d$a;->g:Landroidx/compose/runtime/internal/d;

    goto :goto_0

    :cond_0
    new-instance v0, Lw/e;

    invoke-direct {v0}, Lw/e;-><init>()V

    invoke-virtual {p0, v0}, Lu/f;->o(Lw/e;)V

    new-instance v0, Landroidx/compose/runtime/internal/d;

    invoke-virtual {p0}, Lu/f;->j()Lu/t;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/internal/d;-><init>(Lu/t;I)V

    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/internal/d$a;->g:Landroidx/compose/runtime/internal/d;

    return-object v0
.end method

.method public bridge r(Landroidx/compose/runtime/q;)Z
    .locals 0

    invoke-super {p0, p1}, Lu/f;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/q;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/internal/d$a;->v(Landroidx/compose/runtime/q;)Landroidx/compose/runtime/g3;

    move-result-object p1

    return-object p1
.end method

.method public bridge s(Landroidx/compose/runtime/g3;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge t(Landroidx/compose/runtime/q;)Landroidx/compose/runtime/g3;
    .locals 0

    invoke-super {p0, p1}, Lu/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/g3;

    return-object p1
.end method

.method public bridge u(Landroidx/compose/runtime/q;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/g3;

    return-object p1
.end method

.method public bridge v(Landroidx/compose/runtime/q;)Landroidx/compose/runtime/g3;
    .locals 0

    invoke-super {p0, p1}, Lu/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/g3;

    return-object p1
.end method
