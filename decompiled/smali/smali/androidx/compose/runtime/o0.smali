.class final Landroidx/compose/runtime/o0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/runtime/RecomposeScopeImpl;

.field private final b:I

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/o0;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    iput p2, p0, Landroidx/compose/runtime/o0;->b:I

    iput-object p3, p0, Landroidx/compose/runtime/o0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/o0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/o0;->b:I

    return v0
.end method

.method public final c()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/o0;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/o0;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v1, p0, Landroidx/compose/runtime/o0;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->u(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/o0;->c:Ljava/lang/Object;

    return-void
.end method
