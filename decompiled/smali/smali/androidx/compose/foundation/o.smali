.class public final Landroidx/compose/foundation/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/foundation/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/o;

    invoke-direct {v0}, Landroidx/compose/foundation/o;-><init>()V

    sput-object v0, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/widget/EdgeEffect;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/foundation/b;->a:Landroidx/compose/foundation/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/u;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/u;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final b(Landroid/widget/EdgeEffect;)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/foundation/b;->a:Landroidx/compose/foundation/b;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/b;->b(Landroid/widget/EdgeEffect;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Landroid/widget/EdgeEffect;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    return-void
.end method

.method public final d(Landroid/widget/EdgeEffect;FF)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/foundation/b;->a:Landroidx/compose/foundation/b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/foundation/b;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return p2
.end method

.method public final e(Landroid/widget/EdgeEffect;F)V
    .locals 1

    instance-of v0, p1, Landroidx/compose/foundation/u;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/u;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/u;->a(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :goto_0
    return-void
.end method
