.class public final Landroidx/compose/ui/graphics/layer/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private c:Landroidx/collection/MutableScatterSet;

.field private d:Landroidx/collection/MutableScatterSet;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/graphics/layer/a;)Landroidx/collection/MutableScatterSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/a;->c:Landroidx/collection/MutableScatterSet;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/graphics/layer/a;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/a;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/graphics/layer/a;)Landroidx/collection/MutableScatterSet;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/a;->d:Landroidx/collection/MutableScatterSet;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/graphics/layer/a;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/a;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/graphics/layer/a;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/a;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/graphics/layer/a;Landroidx/collection/MutableScatterSet;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/a;->d:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final synthetic g(Landroidx/compose/ui/graphics/layer/a;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/a;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public static final synthetic h(Landroidx/compose/ui/graphics/layer/a;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/a;->e:Z

    return-void
.end method


# virtual methods
.method public final i(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/a;->e:Z

    if-nez v0, :cond_0

    const-string v0, "Only add dependencies during a tracking"

    invoke-static {v0}, Landroidx/compose/ui/graphics/h4;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/a;->c:Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/a;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/a;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/a;->c:Landroidx/collection/MutableScatterSet;

    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/a;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/a;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/a;->d:Landroidx/collection/MutableScatterSet;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->x(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/a;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v0, p1, :cond_4

    return v2

    :cond_4
    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/a;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 p1, 0x0

    return p1
.end method
