.class final Landroidx/compose/runtime/y2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/tooling/b;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final a:Landroidx/compose/runtime/j2;

.field private final b:I

.field private final c:Landroidx/compose/runtime/l0;

.field private final d:Landroidx/compose/runtime/x2;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/j2;ILandroidx/compose/runtime/l0;Landroidx/compose/runtime/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/y2;->a:Landroidx/compose/runtime/j2;

    iput p2, p0, Landroidx/compose/runtime/y2;->b:I

    iput-object p4, p0, Landroidx/compose/runtime/y2;->d:Landroidx/compose/runtime/x2;

    invoke-virtual {p3}, Landroidx/compose/runtime/l0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/y2;->e:Ljava/lang/Object;

    iput-object p0, p0, Landroidx/compose/runtime/y2;->f:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5

    new-instance v0, Landroidx/compose/runtime/w2;

    iget-object v1, p0, Landroidx/compose/runtime/y2;->a:Landroidx/compose/runtime/j2;

    iget v2, p0, Landroidx/compose/runtime/y2;->b:I

    iget-object v3, p0, Landroidx/compose/runtime/y2;->c:Landroidx/compose/runtime/l0;

    iget-object v4, p0, Landroidx/compose/runtime/y2;->d:Landroidx/compose/runtime/x2;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/runtime/w2;-><init>(Landroidx/compose/runtime/j2;ILandroidx/compose/runtime/l0;Landroidx/compose/runtime/x2;)V

    return-object v0
.end method
