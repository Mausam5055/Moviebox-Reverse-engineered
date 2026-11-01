.class final Landroidx/compose/foundation/layout/m$c;
.super Landroidx/compose/foundation/layout/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final e:Landroidx/compose/foundation/layout/m$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/m$c;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/m$c;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/m$c;->e:Landroidx/compose/foundation/layout/m$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/m;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/g0;I)I
    .locals 0

    sget-object p3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
