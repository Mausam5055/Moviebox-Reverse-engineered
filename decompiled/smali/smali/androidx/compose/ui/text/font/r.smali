.class public final Landroidx/compose/ui/text/font/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/text/font/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/r;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/r;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/r;->a:Landroidx/compose/ui/text/font/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/platform/l;->a(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method
