.class final Landroidx/compose/ui/platform/y1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/platform/y1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/y1;

    invoke-direct {v0}, Landroidx/compose/ui/platform/y1;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/y1;->a:Landroidx/compose/ui/platform/y1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/RenderNode;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/RenderNode;->destroyDisplayListData()V

    return-void
.end method
