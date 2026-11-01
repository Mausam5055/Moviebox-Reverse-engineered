.class final Landroidx/compose/ui/text/input/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/text/input/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/g;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/g;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/g;->a:Landroidx/compose/ui/text/input/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Ly/i;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroidx/compose/ui/text/input/b;->a()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v0

    invoke-static {p1}, Landroidx/compose/ui/graphics/u4;->c(Ly/i;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/c;->a(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v0

    invoke-static {p1}, Landroidx/compose/ui/graphics/u4;->c(Ly/i;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/compose/ui/text/input/d;->a(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/input/e;->a(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/f;->a(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object p0

    return-object p0
.end method
