.class public Landroidx/compose/ui/text/input/e0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/input/y;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/input/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/e0;->a:Landroidx/compose/ui/text/input/y;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/text/input/e0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
