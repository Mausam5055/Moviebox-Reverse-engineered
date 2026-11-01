.class final Landroidx/compose/ui/input/pointer/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/input/pointer/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/pointer/k;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/k;-><init>()V

    sput-object v0, Landroidx/compose/ui/input/pointer/k;->a:Landroidx/compose/ui/input/pointer/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)J
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/i;->a(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/j;->a(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-static {v0, p1}, Ly/h;->a(FF)J

    move-result-wide p1

    return-wide p1
.end method
