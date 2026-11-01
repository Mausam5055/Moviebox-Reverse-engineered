.class final Landroidx/compose/foundation/text/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/input/v;


# instance fields
.field private final b:Landroidx/compose/ui/text/input/v;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/v;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/e;->b:Landroidx/compose/ui/text/input/v;

    iput p2, p0, Landroidx/compose/foundation/text/e;->c:I

    iput p3, p0, Landroidx/compose/foundation/text/e;->d:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/e;->b:Landroidx/compose/ui/text/input/v;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/v;->a(I)I

    move-result v0

    if-ltz p1, :cond_0

    iget v1, p0, Landroidx/compose/foundation/text/e;->c:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Landroidx/compose/foundation/text/e;->d:I

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/f;->a(III)V

    :cond_0
    return v0
.end method
