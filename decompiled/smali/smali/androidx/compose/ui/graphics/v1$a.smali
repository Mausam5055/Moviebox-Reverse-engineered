.class public final Landroidx/compose/ui/graphics/v1$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/v1;
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

    invoke-direct {p0}, Landroidx/compose/ui/graphics/v1$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Landroidx/compose/ui/graphics/v1$a;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/v1;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/c1$a;->z()I

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/v1$a;->a(JI)Landroidx/compose/ui/graphics/v1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JI)Landroidx/compose/ui/graphics/v1;
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/ui/graphics/d1;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
