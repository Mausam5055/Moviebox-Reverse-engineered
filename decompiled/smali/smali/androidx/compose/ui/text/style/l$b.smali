.class public final Landroidx/compose/ui/text/style/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/style/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/text/style/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/style/l$b;

    invoke-direct {v0}, Landroidx/compose/ui/text/style/l$b;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/style/l$b;->b:Landroidx/compose/ui/text/style/l$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic b(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->b(Landroidx/compose/ui/text/style/l;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->a(Landroidx/compose/ui/text/style/l;Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroidx/compose/ui/graphics/j1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method
