.class final Landroidx/compose/ui/graphics/k0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/a4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/k0$a;,
        Landroidx/compose/ui/graphics/k0$b;
    }
.end annotation


# static fields
.field public static final e:Landroidx/compose/ui/graphics/k0$a;

.field private static f:Z


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Ljava/lang/Object;

.field private c:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

.field private final d:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/k0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/k0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/k0;->e:Landroidx/compose/ui/graphics/k0$a;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/graphics/k0;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/k0;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/graphics/k0;->d:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method private final c(Landroid/view/View;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/graphics/k0$b;->a(Landroid/view/View;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private final d(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/k0;->c:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/graphics/layer/view/ViewLayerContainer;

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/layer/view/ViewLayerContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/compose/ui/graphics/k0;->c:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 12

    iget-object v0, p0, Landroidx/compose/ui/graphics/k0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroidx/compose/ui/graphics/k0;->c(Landroid/view/View;)J

    move-result-wide v10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/layer/c0;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-wide v3, v10

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/graphics/layer/c0;-><init>(JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-boolean v1, Landroidx/compose/ui/graphics/k0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Landroidx/compose/ui/graphics/layer/e;

    iget-object v3, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-wide v4, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/e;-><init>(Landroid/view/View;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Landroidx/compose/ui/graphics/k0;->f:Z

    new-instance v1, Landroidx/compose/ui/graphics/layer/d0;

    iget-object v2, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/k0;->d(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    move-result-object v3

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-wide v4, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/d0;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/compose/ui/graphics/layer/d0;

    iget-object v2, p0, Landroidx/compose/ui/graphics/k0;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/k0;->d(Landroid/view/ViewGroup;)Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    move-result-object v3

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-wide v4, v10

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/layer/d0;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    new-instance v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;Landroidx/compose/ui/graphics/layer/e0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/k0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->H()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
