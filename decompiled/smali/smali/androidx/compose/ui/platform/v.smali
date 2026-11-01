.class final Landroidx/compose/ui/platform/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/platform/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/v;

    invoke-direct {v0}, Landroidx/compose/ui/platform/v;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/v;->a:Landroidx/compose/ui/platform/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewStructure;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    return-void
.end method
