.class public final Landroidx/compose/ui/text/font/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/text/font/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/q;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/q;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/q;->a:Landroidx/compose/ui/text/font/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/text/font/r;->a:Landroidx/compose/ui/text/font/r;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/font/r;->a(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
