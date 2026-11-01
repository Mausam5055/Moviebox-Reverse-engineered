.class public final Landroidx/compose/foundation/layout/FillElement$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/FillElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/FillElement$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)Landroidx/compose/foundation/layout/FillElement;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const-string v2, "fillMaxHeight"

    invoke-direct {v0, v1, p1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V

    return-object v0
.end method

.method public final b(F)Landroidx/compose/foundation/layout/FillElement;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    const-string v2, "fillMaxSize"

    invoke-direct {v0, v1, p1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V

    return-object v0
.end method

.method public final c(F)Landroidx/compose/foundation/layout/FillElement;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    const-string v2, "fillMaxWidth"

    invoke-direct {v0, v1, p1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;FLjava/lang/String;)V

    return-object v0
.end method
