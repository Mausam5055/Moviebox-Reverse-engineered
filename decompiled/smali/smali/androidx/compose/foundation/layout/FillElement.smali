.class final Landroidx/compose/foundation/layout/FillElement;
.super Landroidx/compose/ui/node/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/FillElement$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/l0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u0000 \u001f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FillElement;",
        "Landroidx/compose/ui/node/l0;",
        "Landroidx/compose/foundation/layout/FillNode;",
        "Landroidx/compose/foundation/layout/Direction;",
        "direction",
        "",
        "fraction",
        "",
        "inspectorName",
        "<init>",
        "(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V",
        "j",
        "()Landroidx/compose/foundation/layout/FillNode;",
        "node",
        "",
        "k",
        "(Landroidx/compose/foundation/layout/FillNode;)V",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "b",
        "Landroidx/compose/foundation/layout/Direction;",
        "c",
        "F",
        "d",
        "Ljava/lang/String;",
        "e",
        "a",
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


# static fields
.field public static final e:Landroidx/compose/foundation/layout/FillElement$a;


# instance fields
.field private final b:Landroidx/compose/foundation/layout/Direction;

.field private final c:F

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/FillElement$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/l0;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    iput p2, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    iput-object p3, p0, Landroidx/compose/foundation/layout/FillElement;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FillElement;->j()Landroidx/compose/foundation/layout/FillNode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FillElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    check-cast p1, Landroidx/compose/foundation/layout/FillElement;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    iget p1, p1, Landroidx/compose/foundation/layout/FillElement;->c:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Landroidx/compose/ui/f$c;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/FillNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FillElement;->k(Landroidx/compose/foundation/layout/FillNode;)V

    return-void
.end method

.method public j()Landroidx/compose/foundation/layout/FillNode;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/FillNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    iget v2, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/FillNode;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    return-object v0
.end method

.method public k(Landroidx/compose/foundation/layout/FillNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FillElement;->b:Landroidx/compose/foundation/layout/Direction;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/FillNode;->D1(Landroidx/compose/foundation/layout/Direction;)V

    iget v0, p0, Landroidx/compose/foundation/layout/FillElement;->c:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/FillNode;->E1(F)V

    return-void
.end method
