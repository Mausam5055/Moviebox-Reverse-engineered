.class public final Landroidx/compose/ui/node/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/node/DepthSortedSet;

.field private final b:Landroidx/compose/ui/node/DepthSortedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/node/DepthSortedSet;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;-><init>(Z)V

    iput-object v0, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    new-instance v0, Landroidx/compose/ui/node/DepthSortedSet;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;-><init>(Z)V

    iput-object v0, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/j;)Landroidx/compose/ui/node/DepthSortedSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/j;)Landroidx/compose/ui/node/DepthSortedSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    return-object p0
.end method


# virtual methods
.method public final c(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->a(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object p2, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->a(Landroidx/compose/ui/node/LayoutNode;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->a(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final e(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_2

    iget-object p2, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    move-result p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    goto :goto_0

    :goto_1
    return p1
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/j;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final i(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/j;->a:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/node/j;->b:Landroidx/compose/ui/node/DepthSortedSet;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
