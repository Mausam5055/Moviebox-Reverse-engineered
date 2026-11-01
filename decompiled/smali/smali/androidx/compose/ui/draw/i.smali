.class final Landroidx/compose/ui/draw/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/draw/a;


# static fields
.field public static final a:Landroidx/compose/ui/draw/i;

.field private static final b:J

.field private static final c:Landroidx/compose/ui/unit/LayoutDirection;

.field private static final d:Lo0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/i;

    invoke-direct {v0}, Landroidx/compose/ui/draw/i;-><init>()V

    sput-object v0, Landroidx/compose/ui/draw/i;->a:Landroidx/compose/ui/draw/i;

    sget-object v0, Ly/m;->b:Ly/m$a;

    invoke-virtual {v0}, Ly/m$a;->a()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/draw/i;->b:J

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    sput-object v0, Landroidx/compose/ui/draw/i;->c:Landroidx/compose/ui/unit/LayoutDirection;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Lo0/g;->a(FF)Lo0/e;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/draw/i;->d:Lo0/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensity()Lo0/e;
    .locals 1

    sget-object v0, Landroidx/compose/ui/draw/i;->d:Lo0/e;

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    sget-object v0, Landroidx/compose/ui/draw/i;->c:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public i()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/draw/i;->b:J

    return-wide v0
.end method
