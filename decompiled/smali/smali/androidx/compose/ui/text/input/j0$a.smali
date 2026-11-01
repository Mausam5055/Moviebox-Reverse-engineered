.class public final Landroidx/compose/ui/text/input/j0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/input/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/ui/text/input/j0$a;

.field private static final b:Landroidx/compose/ui/text/input/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/j0$a;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/j0$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/j0$a;->a:Landroidx/compose/ui/text/input/j0$a;

    new-instance v0, Landroidx/compose/ui/text/input/i0;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/i0;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/j0$a;->b:Landroidx/compose/ui/text/input/j0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/text/input/j0;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/input/j0$a;->b:Landroidx/compose/ui/text/input/j0;

    return-object v0
.end method
