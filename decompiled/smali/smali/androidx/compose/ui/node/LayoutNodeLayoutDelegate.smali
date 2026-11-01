.class public final Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;,
        Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private b:Z

.field private c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private final r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

.field private s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

.field private t:J

.field private final u:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    new-instance p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;-><init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lo0/c;->b(IIIIILjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->t:J

    new-instance p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$performMeasureBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$performMeasureBlock$1;-><init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->u:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final T(J)V
    .locals 7

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadMeasuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->g:Z

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    new-instance v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$performLookaheadMeasure$1;

    invoke-direct {v4, p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$performLookaheadMeasure$1;-><init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;J)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->h(Landroidx/compose/ui/node/OwnerSnapshotObserver;Landroidx/compose/ui/node/LayoutNode;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->P()V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1}, Landroidx/compose/ui/node/g0;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->O()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->R()V

    :goto_0
    sget-object p1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    return-void
.end method

.method private final U(J)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "layout state is not idle before measure starts"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Z

    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->t:J

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->u:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2, v2, v3}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->g(Landroidx/compose/ui/node/LayoutNode;ZLkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->O()V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    :cond_2
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    return p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->i:Z

    return p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->j:I

    return p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->k:I

    return p0
.end method

.method public static final synthetic f(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->t:J

    return-wide v0
.end method

.method public static final synthetic g(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->T(J)V

    return-void
.end method

.method public static final synthetic h(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->U(J)V

    return-void
.end method

.method public static final synthetic i(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->b:Z

    return-void
.end method

.method public static final synthetic j(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    return-void
.end method

.method public static final synthetic k(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    return-void
.end method

.method public static final synthetic l(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;Landroidx/compose/ui/node/LayoutNode$LayoutState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    return-void
.end method

.method public static final synthetic m(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->h:Z

    return-void
.end method

.method public static final synthetic n(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->i:Z

    return-void
.end method

.method public static final synthetic o(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->j:I

    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->k:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    return v0
.end method

.method public final B()Landroidx/compose/ui/node/LayoutNode$LayoutState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    return-object v0
.end method

.method public final C()Landroidx/compose/ui/node/a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    return-object v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->o:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->h:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->g:Z

    return v0
.end method

.method public final H()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    return-object v0
.end method

.method public final I()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    return-object v0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Z

    return v0
.end method

.method public final K()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->n()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public final L()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v0

    return v0
.end method

.method public final M()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->g1()V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->c1()V

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->t1(Z)V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->m1(Z)V

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    return-void
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->h:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->i:Z

    return-void
.end method

.method public final Q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->g:Z

    return-void
.end method

.method public final R()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Z

    return-void
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->b1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->Z(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->Y(Z)V

    :cond_2
    :goto_0
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->W0()Z

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->b0(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a0(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final V()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->p()V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->p()V

    :cond_0
    return-void
.end method

.method public final W(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    iget p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    goto :goto_2

    :cond_3
    iget p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final X(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    iput p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    iget p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->X(I)V

    goto :goto_2

    :cond_3
    iget p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->X(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final Y(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->m:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->m:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:Z

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->m:Z

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->m:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a0(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->o:Z

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->X(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->o:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->X(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b0(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->o:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->o:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Z

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->X(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->X(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c0()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->r1()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/node/g0;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;-><init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    :cond_0
    return-void
.end method

.method public final r()Landroidx/compose/ui/node/a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->n:I

    return v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:I

    return v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->m:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->b:Z

    return v0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v0

    return v0
.end method

.method public final y()Lo0/b;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->a1()Lo0/b;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lo0/b;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->T0()Lo0/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
