.class final Landroidx/compose/ui/graphics/layer/j0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/layer/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/layer/j0;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/j0;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/j0;->a:Landroidx/compose/ui/graphics/layer/j0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    const/4 p1, 0x1

    return p1
.end method
