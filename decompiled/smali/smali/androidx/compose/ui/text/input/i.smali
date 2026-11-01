.class final Landroidx/compose/ui/text/input/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/text/input/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/i;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/i;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/i;->a:Landroidx/compose/ui/text/input/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/z;Ly/i;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p2}, Ly/i;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ly/i;->i()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/z;->q(F)I

    move-result v0

    invoke-virtual {p2}, Ly/i;->c()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/z;->q(F)I

    move-result p2

    if-gt v0, p2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/z;->r(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/z;->u(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/z;->s(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/z;->l(I)F

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/compose/ui/text/input/h;->a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-eq v0, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
