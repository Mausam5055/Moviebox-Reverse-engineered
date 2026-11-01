.class public final Landroidx/compose/ui/text/style/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/i;
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

    invoke-direct {p0}, Landroidx/compose/ui/text/style/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroidx/compose/ui/text/style/i;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/style/i;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/i;->e()I

    move-result v3

    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Landroidx/compose/ui/text/style/i;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/style/i;-><init>(I)V

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/text/style/i;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/text/style/i;->a()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/text/style/i;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/text/style/i;->b()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/text/style/i;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/text/style/i;->c()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    return-object v0
.end method
