.class public final Landroidx/compose/ui/platform/ViewCompositionStrategy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/ui/platform/ViewCompositionStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$a;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$a;->a:Landroidx/compose/ui/platform/ViewCompositionStrategy$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/platform/ViewCompositionStrategy;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;->b:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;

    return-object v0
.end method
