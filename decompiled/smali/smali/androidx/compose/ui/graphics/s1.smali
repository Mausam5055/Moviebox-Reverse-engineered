.class final Landroidx/compose/ui/graphics/s1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/s1;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/s1;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/s1;->a:Landroidx/compose/ui/graphics/s1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/graphics/q1;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/graphics/r1;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
