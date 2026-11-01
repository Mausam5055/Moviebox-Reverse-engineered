.class final Landroidx/compose/ui/graphics/i1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/i1;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/i1;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/i1;->a:Landroidx/compose/ui/graphics/i1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)Landroid/graphics/BlendModeColorFilter;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/graphics/f1;->a()V

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-static {p3}, Landroidx/compose/ui/graphics/f0;->a(I)Landroid/graphics/BlendMode;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/e1;->a(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/BlendModeColorFilter;)Landroidx/compose/ui/graphics/d1;
    .locals 7

    new-instance v6, Landroidx/compose/ui/graphics/d1;

    invoke-static {p1}, Landroidx/compose/ui/graphics/g1;->a(Landroid/graphics/BlendModeColorFilter;)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/w1;->b(I)J

    move-result-wide v1

    invoke-static {p1}, Landroidx/compose/ui/graphics/h1;->a(Landroid/graphics/BlendModeColorFilter;)Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/f0;->b(Landroid/graphics/BlendMode;)I

    move-result v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/d1;-><init>(JILandroid/graphics/ColorFilter;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
