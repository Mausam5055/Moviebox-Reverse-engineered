.class final Landroidx/compose/ui/platform/a2;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/platform/a2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/a2;

    invoke-direct {v0}, Landroidx/compose/ui/platform/a2;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/a2;->a:Landroidx/compose/ui/platform/a2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/RenderNode;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/RenderNode;->getAmbientShadowColor()I

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/RenderNode;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/RenderNode;->getSpotShadowColor()I

    move-result p1

    return p1
.end method

.method public final c(Landroid/view/RenderNode;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setAmbientShadowColor(I)Z

    return-void
.end method

.method public final d(Landroid/view/RenderNode;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setSpotShadowColor(I)Z

    return-void
.end method
