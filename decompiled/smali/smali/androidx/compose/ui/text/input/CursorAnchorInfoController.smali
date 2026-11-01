.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoController;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/input/pointer/i0;

.field private final b:Landroidx/compose/ui/text/input/r;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroidx/compose/ui/text/input/TextFieldValue;

.field private k:Landroidx/compose/ui/text/z;

.field private l:Landroidx/compose/ui/text/input/v;

.field private m:Lkotlin/jvm/functions/Function1;

.field private n:Ly/i;

.field private o:Ly/i;

.field private final p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private final q:[F

.field private final r:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/input/pointer/i0;Landroidx/compose/ui/text/input/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->a:Landroidx/compose/ui/input/pointer/i0;

    iput-object p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/r;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->c:Ljava/lang/Object;

    sget-object p1, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;->INSTANCE:Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->m:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    return-void
.end method

.method private final b()V
    .locals 12

    iget-object v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/r;

    invoke-interface {v0}, Landroidx/compose/ui/text/input/r;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->m:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    invoke-static {v1}, Landroidx/compose/ui/graphics/i4;->a([F)Landroidx/compose/ui/graphics/i4;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->a:Landroidx/compose/ui/input/pointer/i0;

    iget-object v1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    invoke-interface {v0, v1}, Landroidx/compose/ui/input/pointer/i0;->localToScreen-58bKbWc([F)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/r0;->a(Landroid/graphics/Matrix;[F)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/r;

    iget-object v1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/v;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->k:Landroidx/compose/ui/text/z;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    iget-object v6, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->n:Ly/i;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->o:Ly/i;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-boolean v8, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->f:Z

    iget-boolean v9, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->g:Z

    iget-boolean v10, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->h:Z

    iget-boolean v11, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->i:Z

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/text/input/j;->b(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/v;Landroidx/compose/ui/text/z;Landroid/graphics/Matrix;Ly/i;Ly/i;ZZZZ)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/r;->a(Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->e:Z

    return-void
.end method


# virtual methods
.method public final a(ZZZZZZ)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p3, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->f:Z

    iput-boolean p4, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->g:Z

    iput-boolean p5, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->h:Z

    iput-boolean p6, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->e:Z

    iget-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->d:Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
