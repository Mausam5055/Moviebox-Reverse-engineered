.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/focus/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOwnerImpl$a;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/functions/Function2;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private final c:Lkotlin/jvm/functions/Function0;

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Lkotlin/jvm/functions/Function0;

.field private f:Landroidx/compose/ui/focus/FocusTargetNode;

.field private final g:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field private final h:Landroidx/compose/ui/focus/v;

.field private final i:Landroidx/compose/ui/f;

.field private j:Landroidx/collection/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->b:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {p2}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager;

    new-instance p3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;

    invoke-direct {p3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    new-instance p1, Landroidx/compose/ui/focus/v;

    invoke-direct {p1}, Landroidx/compose/ui/focus/v;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->h:Landroidx/compose/ui/focus/v;

    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    sget-object p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    invoke-static {p1, p2}, Landroidx/compose/ui/focus/l;->a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object p1

    new-instance p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;

    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    invoke-interface {p1, p2}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->i:Landroidx/compose/ui/f;

    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/focus/FocusOwnerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->r()V

    return-void
.end method

.method private final r()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final s(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;
    .locals 5

    const/16 v0, 0x400

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "visitLocalDescendants called on an unattached node"

    invoke-static {v2}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v2

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    move-object v3, p1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private final t(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    move-result-wide v0

    invoke-static {p1}, Ld0/d;->b(Landroid/view/KeyEvent;)I

    move-result p1

    sget-object v2, Ld0/c;->a:Ld0/c$a;

    invoke-virtual {v2}, Ld0/c$a;->a()I

    move-result v3

    invoke-static {p1, v3}, Ld0/c;->e(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/collection/i0;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroidx/collection/i0;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroidx/collection/i0;->l(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ld0/c$a;->b()I

    move-result v2

    invoke-static {p1, v2}, Ld0/c;->e(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v1}, Landroidx/collection/v;->a(J)Z

    move-result p1

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->j:Landroidx/collection/i0;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0, v1}, Landroidx/collection/i0;->m(J)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v4
.end method


# virtual methods
.method public a(Landroidx/compose/ui/focus/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->e(Landroidx/compose/ui/focus/c;)V

    return-void
.end method

.method public b(Landroidx/compose/ui/focus/b;Ly/i;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public c()Landroidx/compose/ui/focus/v;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->h:Landroidx/compose/ui/focus/v;

    return-object v0
.end method

.method public d(Landroid/view/KeyEvent;)Z
    .locals 10

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->b()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {p1}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const/high16 v1, 0x20000

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-static {p1}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->a1()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_7

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_6

    move-object v4, v2

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_5

    instance-of v6, v4, Landroidx/compose/ui/node/i;

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/i;

    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v6

    move v7, v0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_0

    move-object v4, v6

    goto :goto_4

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Landroidx/compose/runtime/collection/b;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v8, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v4, v3

    :cond_2
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_3
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v6

    goto :goto_3

    :cond_4
    if-ne v7, v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_0

    :cond_8
    move-object v2, v3

    goto :goto_0

    :cond_9
    invoke-static {v3}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "visitAncestors called on an unattached node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    return v0

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dispatching intercepted soft keyboard event while focus system is invalidated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(ILy/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v0, p1, v2}, Landroidx/compose/ui/focus/w;->a(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester$a;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$a;->a()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, p3}, Landroidx/compose/ui/focus/FocusRequester;->c(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    invoke-direct {v3, v0, p0, p3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/compose/ui/focus/w;->e(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Ly/i;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f(Lf0/b;)Z
    .locals 14

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->b()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string v1, "visitAncestors called on an unattached node"

    const/16 v2, 0x4000

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_c

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v7

    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v8

    invoke-static {v0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->a1()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_8

    :goto_1
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_7

    move-object v10, v5

    move-object v9, v8

    :goto_2
    if-eqz v9, :cond_7

    instance-of v11, v9, Lf0/a;

    if-eqz v11, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_6

    instance-of v11, v9, Landroidx/compose/ui/node/i;

    if-eqz v11, :cond_6

    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/node/i;

    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v11

    move v12, v4

    :goto_3
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_4

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v6, :cond_1

    move-object v9, v11

    goto :goto_4

    :cond_1
    if-nez v10, :cond_2

    new-instance v10, Landroidx/compose/runtime/collection/b;

    new-array v13, v3, [Landroidx/compose/ui/f$c;

    invoke-direct {v10, v13, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v9, v5

    :cond_3
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_3

    :cond_5
    if-ne v12, v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_0

    :cond_9
    move-object v8, v5

    goto :goto_0

    :cond_a
    move-object v9, v5

    :goto_5
    check-cast v9, Lf0/a;

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    move-object v9, v5

    :goto_6
    if-eqz v9, :cond_2e

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-static {v9}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    move-object v7, v5

    :goto_7
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->a1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_16

    :goto_8
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_15

    move-object v8, v1

    move-object v10, v5

    :goto_9
    if-eqz v8, :cond_15

    instance-of v11, v8, Lf0/a;

    if-eqz v11, :cond_e

    if-nez v7, :cond_d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_14

    instance-of v11, v8, Landroidx/compose/ui/node/i;

    if-eqz v11, :cond_14

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/node/i;

    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v11

    move v12, v4

    :goto_a
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v13

    and-int/2addr v13, v0

    if-eqz v13, :cond_12

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v6, :cond_f

    move-object v8, v11

    goto :goto_b

    :cond_f
    if-nez v10, :cond_10

    new-instance v10, Landroidx/compose/runtime/collection/b;

    new-array v13, v3, [Landroidx/compose/ui/f$c;

    invoke-direct {v10, v13, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_10
    if-eqz v8, :cond_11

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v8, v5

    :cond_11
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_12
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_a

    :cond_13
    if-ne v12, v6, :cond_14

    goto :goto_9

    :cond_14
    :goto_c
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_8

    :cond_16
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto/16 :goto_7

    :cond_17
    move-object v1, v5

    goto/16 :goto_7

    :cond_18
    if-eqz v7, :cond_1b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1b

    :goto_d
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf0/a;

    invoke-interface {v1, p1}, Lf0/a;->J0(Lf0/b;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v6

    :cond_19
    if-gez v2, :cond_1a

    goto :goto_e

    :cond_1a
    move v1, v2

    goto :goto_d

    :cond_1b
    :goto_e
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    move-object v2, v5

    :goto_f
    if-eqz v1, :cond_23

    instance-of v8, v1, Lf0/a;

    if-eqz v8, :cond_1c

    check-cast v1, Lf0/a;

    invoke-interface {v1, p1}, Lf0/a;->J0(Lf0/b;)Z

    move-result v1

    if-eqz v1, :cond_22

    return v6

    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_22

    instance-of v8, v1, Landroidx/compose/ui/node/i;

    if-eqz v8, :cond_22

    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/node/i;

    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v8

    move v10, v4

    :goto_10
    if-eqz v8, :cond_21

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_20

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v6, :cond_1d

    move-object v1, v8

    goto :goto_11

    :cond_1d
    if-nez v2, :cond_1e

    new-instance v2, Landroidx/compose/runtime/collection/b;

    new-array v11, v3, [Landroidx/compose/ui/f$c;

    invoke-direct {v2, v11, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_1e
    if-eqz v1, :cond_1f

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v1, v5

    :cond_1f
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_20
    :goto_11
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_10

    :cond_21
    if-ne v10, v6, :cond_22

    goto :goto_f

    :cond_22
    invoke-static {v2}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_f

    :cond_23
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    move-object v2, v5

    :goto_12
    if-eqz v1, :cond_2b

    instance-of v8, v1, Lf0/a;

    if-eqz v8, :cond_24

    check-cast v1, Lf0/a;

    invoke-interface {v1, p1}, Lf0/a;->X0(Lf0/b;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return v6

    :cond_24
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_2a

    instance-of v8, v1, Landroidx/compose/ui/node/i;

    if-eqz v8, :cond_2a

    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/node/i;

    invoke-virtual {v8}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v8

    move v9, v4

    :goto_13
    if-eqz v8, :cond_29

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_28

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_25

    move-object v1, v8

    goto :goto_14

    :cond_25
    if-nez v2, :cond_26

    new-instance v2, Landroidx/compose/runtime/collection/b;

    new-array v10, v3, [Landroidx/compose/ui/f$c;

    invoke-direct {v2, v10, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_26
    if-eqz v1, :cond_27

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v1, v5

    :cond_27
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_28
    :goto_14
    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_13

    :cond_29
    if-ne v9, v6, :cond_2a

    goto :goto_12

    :cond_2a
    invoke-static {v2}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_12

    :cond_2b
    if-eqz v7, :cond_2e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v4

    :goto_15
    if-ge v1, v0, :cond_2e

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf0/a;

    invoke-interface {v2, p1}, Lf0/a;->X0(Lf0/b;)Z

    move-result v2

    if-eqz v2, :cond_2c

    return v6

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    return v4

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dispatching rotary event while focus system is invalidated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->g(Landroidx/compose/ui/focus/FocusTargetNode;)V

    return-void
.end method

.method public h()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->i:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public i(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusInvalidationManager;->b()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->t(Landroid/view/KeyEvent;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v3}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    const-string v5, "visitAncestors called on an unattached node"

    const/16 v6, 0x2000

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    invoke-direct {v0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->s(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;

    move-result-object v9

    if-nez v9, :cond_1b

    :cond_1
    if-eqz v3, :cond_e

    invoke-static {v6}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v9

    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v10

    invoke-static {v3}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->a1()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_a

    :goto_1
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_9

    move-object v12, v8

    move-object v11, v10

    :goto_2
    if-eqz v11, :cond_9

    instance-of v13, v11, Ld0/e;

    if-eqz v13, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_8

    instance-of v13, v11, Landroidx/compose/ui/node/i;

    if-eqz v13, :cond_8

    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/i;

    invoke-virtual {v13}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v13

    move v14, v4

    :goto_3
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->f1()I

    move-result v15

    and-int/2addr v15, v9

    if-eqz v15, :cond_6

    add-int/2addr v14, v2

    if-ne v14, v2, :cond_3

    move-object v11, v13

    goto :goto_4

    :cond_3
    if-nez v12, :cond_4

    new-instance v12, Landroidx/compose/runtime/collection/b;

    new-array v15, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v11, v8

    :cond_5
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v13

    goto :goto_3

    :cond_7
    if-ne v14, v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v12}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_2

    :cond_9
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v10

    goto :goto_1

    :cond_a
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v10

    goto :goto_0

    :cond_b
    move-object v10, v8

    goto :goto_0

    :cond_c
    move-object v11, v8

    :goto_5
    check-cast v11, Ld0/e;

    if-eqz v11, :cond_e

    invoke-interface {v11}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v9

    goto/16 :goto_c

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v6}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v9

    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-interface {v3}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v10

    invoke-static {v3}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    :goto_6
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->a1()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_17

    :goto_7
    if-eqz v10, :cond_17

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_16

    move-object v12, v8

    move-object v11, v10

    :goto_8
    if-eqz v11, :cond_16

    instance-of v13, v11, Ld0/e;

    if-eqz v13, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_15

    instance-of v13, v11, Landroidx/compose/ui/node/i;

    if-eqz v13, :cond_15

    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/i;

    invoke-virtual {v13}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v13

    move v14, v4

    :goto_9
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->f1()I

    move-result v15

    and-int/2addr v15, v9

    if-eqz v15, :cond_13

    add-int/2addr v14, v2

    if-ne v14, v2, :cond_10

    move-object v11, v13

    goto :goto_a

    :cond_10
    if-nez v12, :cond_11

    new-instance v12, Landroidx/compose/runtime/collection/b;

    new-array v15, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v11, v8

    :cond_12
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_13
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v13

    goto :goto_9

    :cond_14
    if-ne v14, v2, :cond_15

    goto :goto_8

    :cond_15
    invoke-static {v12}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_8

    :cond_16
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v10

    goto :goto_7

    :cond_17
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v10

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v10

    goto :goto_6

    :cond_18
    move-object v10, v8

    goto :goto_6

    :cond_19
    move-object v11, v8

    :goto_b
    check-cast v11, Ld0/e;

    if-eqz v11, :cond_1a

    invoke-interface {v11}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_c

    :cond_1a
    move-object v9, v8

    :cond_1b
    :goto_c
    if-eqz v9, :cond_41

    invoke-static {v6}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-static {v9}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    move-object v10, v8

    :goto_d
    if-eqz v6, :cond_27

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->a1()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_25

    :goto_e
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_24

    move-object v11, v5

    move-object v12, v8

    :goto_f
    if-eqz v11, :cond_24

    instance-of v13, v11, Ld0/e;

    if-eqz v13, :cond_1d

    if-nez v10, :cond_1c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1d
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v13

    and-int/2addr v13, v3

    if-eqz v13, :cond_23

    instance-of v13, v11, Landroidx/compose/ui/node/i;

    if-eqz v13, :cond_23

    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/i;

    invoke-virtual {v13}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v13

    move v14, v4

    :goto_10
    if-eqz v13, :cond_22

    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->f1()I

    move-result v15

    and-int/2addr v15, v3

    if-eqz v15, :cond_21

    add-int/2addr v14, v2

    if-ne v14, v2, :cond_1e

    move-object v11, v13

    goto :goto_11

    :cond_1e
    if-nez v12, :cond_1f

    new-instance v12, Landroidx/compose/runtime/collection/b;

    new-array v15, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_1f
    if-eqz v11, :cond_20

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v11, v8

    :cond_20
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_21
    :goto_11
    invoke-virtual {v13}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v13

    goto :goto_10

    :cond_22
    if-ne v14, v2, :cond_23

    goto :goto_f

    :cond_23
    :goto_12
    invoke-static {v12}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_f

    :cond_24
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_e

    :cond_25
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto/16 :goto_d

    :cond_26
    move-object v5, v8

    goto/16 :goto_d

    :cond_27
    if-eqz v10, :cond_2b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2a

    :goto_13
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld0/e;

    invoke-interface {v5, v1}, Ld0/e;->l0(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_28

    return v2

    :cond_28
    if-gez v6, :cond_29

    goto :goto_14

    :cond_29
    move v5, v6

    goto :goto_13

    :cond_2a
    :goto_14
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2b
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    move-object v6, v8

    :goto_15
    if-eqz v5, :cond_33

    instance-of v11, v5, Ld0/e;

    if-eqz v11, :cond_2c

    check-cast v5, Ld0/e;

    invoke-interface {v5, v1}, Ld0/e;->l0(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_32

    return v2

    :cond_2c
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_32

    instance-of v11, v5, Landroidx/compose/ui/node/i;

    if-eqz v11, :cond_32

    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/node/i;

    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v11

    move v12, v4

    :goto_16
    if-eqz v11, :cond_31

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v13

    and-int/2addr v13, v3

    if-eqz v13, :cond_30

    add-int/2addr v12, v2

    if-ne v12, v2, :cond_2d

    move-object v5, v11

    goto :goto_17

    :cond_2d
    if-nez v6, :cond_2e

    new-instance v6, Landroidx/compose/runtime/collection/b;

    new-array v13, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v13, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2e
    if-eqz v5, :cond_2f

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v5, v8

    :cond_2f
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_30
    :goto_17
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_16

    :cond_31
    if-ne v12, v2, :cond_32

    goto :goto_15

    :cond_32
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_15

    :cond_33
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_34

    return v2

    :cond_34
    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v5

    move-object v6, v8

    :goto_18
    if-eqz v5, :cond_3c

    instance-of v9, v5, Ld0/e;

    if-eqz v9, :cond_35

    check-cast v5, Ld0/e;

    invoke-interface {v5, v1}, Ld0/e;->s0(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3b

    return v2

    :cond_35
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v9, :cond_3b

    instance-of v9, v5, Landroidx/compose/ui/node/i;

    if-eqz v9, :cond_3b

    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/node/i;

    invoke-virtual {v9}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v9

    move v11, v4

    :goto_19
    if-eqz v9, :cond_3a

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v12

    and-int/2addr v12, v3

    if-eqz v12, :cond_39

    add-int/2addr v11, v2

    if-ne v11, v2, :cond_36

    move-object v5, v9

    goto :goto_1a

    :cond_36
    if-nez v6, :cond_37

    new-instance v6, Landroidx/compose/runtime/collection/b;

    new-array v12, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v12, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_37
    if-eqz v5, :cond_38

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v5, v8

    :cond_38
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_39
    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_19

    :cond_3a
    if-ne v11, v2, :cond_3b

    goto :goto_18

    :cond_3b
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_18

    :cond_3c
    if-eqz v10, :cond_3f

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_1b
    if-ge v5, v3, :cond_3e

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld0/e;

    invoke-interface {v6, v1}, Ld0/e;->s0(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3d

    return v2

    :cond_3d
    add-int/2addr v5, v2

    goto :goto_1b

    :cond_3e
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_3f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1c

    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    :goto_1c
    return v4

    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dispatching key event while focus system is invalidated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j(ZZZI)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c()Landroidx/compose/ui/focus/v;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;

    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->e(Landroidx/compose/ui/focus/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/v;->b(Landroidx/compose/ui/focus/v;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->a(Landroidx/compose/ui/focus/v;)V

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/focus/v;->d(Landroidx/compose/ui/focus/v;)Landroidx/compose/runtime/collection/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_1
    if-nez p1, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1, p4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p4

    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v1, p4

    const/4 v1, 0x1

    if-eq p4, v1, :cond_2

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {p4, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    return p1

    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    throw p1
.end method

.method public k()Landroidx/compose/ui/focus/r;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    return-object v0
.end method

.method public l(Landroidx/compose/ui/focus/m;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->f(Landroidx/compose/ui/focus/m;)V

    return-void
.end method

.method public m()Ly/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/w;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/w;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Ly/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c()Landroidx/compose/ui/focus/v;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/focus/v;->e(Landroidx/compose/ui/focus/v;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0, v2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/v;->a(Landroidx/compose/ui/focus/v;)V

    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1, v2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/compose/ui/focus/v;->c(Landroidx/compose/ui/focus/v;)V

    throw v1
.end method

.method public o(Z)V
    .locals 2

    sget-object v0, Landroidx/compose/ui/focus/b;->b:Landroidx/compose/ui/focus/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/b$a;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->j(ZZZI)Z

    return-void
.end method

.method public final q()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->f:Landroidx/compose/ui/focus/FocusTargetNode;

    return-object v0
.end method
