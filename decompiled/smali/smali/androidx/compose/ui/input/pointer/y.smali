.class public final Landroidx/compose/ui/input/pointer/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;

.field private final c:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/y;->a:J

    iput-object p3, p0, Landroidx/compose/ui/input/pointer/y;->b:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/ui/input/pointer/y;->c:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/y;->c:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/y;->b:Ljava/util/List;

    return-object v0
.end method
