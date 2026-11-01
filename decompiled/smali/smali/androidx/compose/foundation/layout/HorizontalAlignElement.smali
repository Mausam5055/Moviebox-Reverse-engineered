.class public final Landroidx/compose/foundation/layout/HorizontalAlignElement;
.super Landroidx/compose/ui/node/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/l0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0096\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/HorizontalAlignElement;",
        "Landroidx/compose/ui/node/l0;",
        "Landroidx/compose/foundation/layout/q;",
        "Landroidx/compose/ui/b$b;",
        "horizontal",
        "<init>",
        "(Landroidx/compose/ui/b$b;)V",
        "j",
        "()Landroidx/compose/foundation/layout/q;",
        "node",
        "",
        "k",
        "(Landroidx/compose/foundation/layout/q;)V",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "b",
        "Landroidx/compose/ui/b$b;",
        "getHorizontal",
        "()Landroidx/compose/ui/b$b;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Landroidx/compose/ui/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/b$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/l0;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->b:Landroidx/compose/ui/b$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/HorizontalAlignElement;->j()Landroidx/compose/foundation/layout/q;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->b:Landroidx/compose/ui/b$b;

    iget-object p1, p1, Landroidx/compose/foundation/layout/HorizontalAlignElement;->b:Landroidx/compose/ui/b$b;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->b:Landroidx/compose/ui/b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Landroidx/compose/ui/f$c;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/q;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/HorizontalAlignElement;->k(Landroidx/compose/foundation/layout/q;)V

    return-void
.end method

.method public j()Landroidx/compose/foundation/layout/q;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/q;

    iget-object v1, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->b:Landroidx/compose/ui/b$b;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/q;-><init>(Landroidx/compose/ui/b$b;)V

    return-object v0
.end method

.method public k(Landroidx/compose/foundation/layout/q;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->b:Landroidx/compose/ui/b$b;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/q;->E1(Landroidx/compose/ui/b$b;)V

    return-void
.end method
