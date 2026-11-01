.class public abstract Landroidx/compose/animation/core/b0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/animation/core/z;

.field private static final b:Landroidx/compose/animation/core/z;

.field private static final c:Landroidx/compose/animation/core/z;

.field private static final d:Landroidx/compose/animation/core/z;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/animation/core/u;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/u;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/b0;->a:Landroidx/compose/animation/core/z;

    new-instance v0, Landroidx/compose/animation/core/u;

    invoke-direct {v0, v2, v2, v3, v4}, Landroidx/compose/animation/core/u;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/b0;->b:Landroidx/compose/animation/core/z;

    new-instance v0, Landroidx/compose/animation/core/u;

    invoke-direct {v0, v1, v2, v4, v4}, Landroidx/compose/animation/core/u;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/animation/core/b0;->c:Landroidx/compose/animation/core/z;

    new-instance v0, Landroidx/compose/animation/core/a0;

    invoke-direct {v0}, Landroidx/compose/animation/core/a0;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/b0;->d:Landroidx/compose/animation/core/z;

    return-void
.end method

.method public static synthetic a(F)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/animation/core/b0;->b(F)F

    move-result p0

    return p0
.end method

.method private static final b(F)F
    .locals 0

    return p0
.end method

.method public static final c()Landroidx/compose/animation/core/z;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/b0;->a:Landroidx/compose/animation/core/z;

    return-object v0
.end method

.method public static final d()Landroidx/compose/animation/core/z;
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/b0;->d:Landroidx/compose/animation/core/z;

    return-object v0
.end method
