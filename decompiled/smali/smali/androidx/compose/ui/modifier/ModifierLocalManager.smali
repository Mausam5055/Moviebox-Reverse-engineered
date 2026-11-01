.class public final Landroidx/compose/ui/modifier/ModifierLocalManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/node/y0;

.field private final b:Landroidx/compose/runtime/collection/b;

.field private final c:Landroidx/compose/runtime/collection/b;

.field private final d:Landroidx/compose/runtime/collection/b;

.field private final e:Landroidx/compose/runtime/collection/b;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/y0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->a:Landroidx/compose/ui/node/y0;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/node/BackwardsCompatNode;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/compose/runtime/collection/b;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    new-array v1, v0, [Landroidx/compose/ui/modifier/c;

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/compose/runtime/collection/b;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    new-array v1, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/compose/runtime/collection/b;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    new-array v0, v0, [Landroidx/compose/ui/modifier/c;

    invoke-direct {p1, v0, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/compose/runtime/collection/b;

    return-void
.end method

.method private final c(Landroidx/compose/ui/f$c;Landroidx/compose/ui/modifier/c;Ljava/util/Set;)V
    .locals 12

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "visitSubtreeIf called on an unattached node"

    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroidx/compose/runtime/collection/b;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/f$c;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p1

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/f$c;

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v5

    and-int/2addr v5, v0

    if-eqz v5, :cond_b

    move-object v5, p1

    :goto_1
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    move-object v7, v5

    move-object v8, v6

    :goto_2
    if-eqz v7, :cond_a

    instance-of v9, v7, Landroidx/compose/ui/modifier/h;

    if-eqz v9, :cond_3

    check-cast v7, Landroidx/compose/ui/modifier/h;

    instance-of v9, v7, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz v9, :cond_2

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v9}, Landroidx/compose/ui/node/BackwardsCompatNode;->D1()Landroidx/compose/ui/f$b;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/ui/modifier/d;

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroidx/compose/ui/node/BackwardsCompatNode;->E1()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v7}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroidx/compose/ui/modifier/f;->a(Landroidx/compose/ui/modifier/c;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_9

    instance-of v9, v7, Landroidx/compose/ui/node/i;

    if-eqz v9, :cond_9

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/i;

    invoke-virtual {v9}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v9

    move v10, v4

    :goto_3
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_7

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v3, :cond_4

    move-object v7, v9

    goto :goto_4

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Landroidx/compose/runtime/collection/b;

    new-array v11, v2, [Landroidx/compose/ui/f$c;

    invoke-direct {v8, v11, v4}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v7, v6

    :cond_6
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_3

    :cond_8
    if-ne v10, v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {v8}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_2

    :cond_a
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto/16 :goto_1

    :cond_b
    invoke-static {v1, p1}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->f:Z

    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->a:Landroidx/compose/ui/node/y0;

    new-instance v1, Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/modifier/ModifierLocalManager$invalidate$1;-><init>(Landroidx/compose/ui/modifier/ModifierLocalManager;)V

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/y0;->registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/compose/runtime/collection/b;

    invoke-static {p1}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->b()V

    return-void
.end method

.method public final e()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->f:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    move v4, v0

    :cond_0
    aget-object v5, v2, v4

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    iget-object v6, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v6}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    check-cast v6, Landroidx/compose/ui/modifier/c;

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v5

    invoke-direct {p0, v5, v6, v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->c(Landroidx/compose/ui/f$c;Landroidx/compose/ui/modifier/c;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_0

    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v2, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    :cond_3
    aget-object v4, v2, v0

    check-cast v4, Landroidx/compose/ui/node/BackwardsCompatNode;

    iget-object v5, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v5}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    check-cast v5, Landroidx/compose/ui/modifier/c;

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v4, v5, v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->c(Landroidx/compose/ui/f$c;Landroidx/compose/ui/modifier/c;Ljava/util/Set;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_3

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->J1()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final f(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->b()V

    return-void
.end method
