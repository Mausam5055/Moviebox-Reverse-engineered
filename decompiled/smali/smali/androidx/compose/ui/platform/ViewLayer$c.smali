.class final Landroidx/compose/ui/platform/ViewLayer$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/platform/ViewLayer$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$c;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer$c;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer$c;->a:Landroidx/compose/ui/platform/ViewLayer$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/View;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroidx/compose/ui/graphics/l0;->a(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method
