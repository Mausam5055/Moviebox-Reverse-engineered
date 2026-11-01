.class public final Landroidx/compose/ui/graphics/layer/l0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/layer/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/layer/l0;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/l0;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/l0;->a:Landroidx/compose/ui/graphics/layer/l0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V
    .locals 1

    instance-of v0, p2, Landroidx/compose/ui/graphics/u0;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/compose/ui/graphics/u0;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/u0;->p()Landroid/graphics/Path;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/layer/k0;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unable to obtain android.graphics.Path"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
