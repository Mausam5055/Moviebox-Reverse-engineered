.class public final Landroidx/compose/ui/draganddrop/DragAndDropNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/m1;
.implements Landroidx/compose/ui/draganddrop/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/draganddrop/DragAndDropNode$a;
    }
.end annotation


# static fields
.field public static final r:Landroidx/compose/ui/draganddrop/DragAndDropNode$a;

.field public static final s:I


# instance fields
.field private final n:Lkotlin/jvm/functions/Function1;

.field private final o:Ljava/lang/Object;

.field private p:Landroidx/compose/ui/draganddrop/d;

.field private q:Landroidx/compose/ui/draganddrop/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/draganddrop/DragAndDropNode$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNode$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->r:Landroidx/compose/ui/draganddrop/DragAndDropNode$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->s:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->n:Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroidx/compose/ui/draganddrop/DragAndDropNode$a$a;->a:Landroidx/compose/ui/draganddrop/DragAndDropNode$a$a;

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->o:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic E1(Landroidx/compose/ui/draganddrop/DragAndDropNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->n:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/ui/draganddrop/DragAndDropNode;)Landroidx/compose/ui/draganddrop/f;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    return-object p0
.end method

.method public static final synthetic G1(Landroidx/compose/ui/draganddrop/DragAndDropNode;Landroidx/compose/ui/draganddrop/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    return-void
.end method

.method public static final synthetic H1(Landroidx/compose/ui/draganddrop/DragAndDropNode;Landroidx/compose/ui/draganddrop/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    return-void
.end method


# virtual methods
.method public B(Landroidx/compose/ui/draganddrop/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->B(Landroidx/compose/ui/draganddrop/b;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->B(Landroidx/compose/ui/draganddrop/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public C(Landroidx/compose/ui/draganddrop/b;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/draganddrop/h;->a(Landroidx/compose/ui/draganddrop/b;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/draganddrop/e;->a(Landroidx/compose/ui/draganddrop/d;J)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;

    invoke-direct {v2, v1, p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/draganddrop/DragAndDropNode;Landroidx/compose/ui/draganddrop/b;)V

    invoke-static {p0, v2}, Landroidx/compose/ui/node/n1;->e(Landroidx/compose/ui/node/m1;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/m1;

    :goto_0
    check-cast v1, Landroidx/compose/ui/draganddrop/d;

    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {v1, p1}, Landroidx/compose/ui/draganddrop/e;->b(Landroidx/compose/ui/draganddrop/f;Landroidx/compose/ui/draganddrop/b;)V

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->L(Landroidx/compose/ui/draganddrop/b;)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-eqz v2, :cond_3

    invoke-static {v2, p1}, Landroidx/compose/ui/draganddrop/e;->b(Landroidx/compose/ui/draganddrop/f;Landroidx/compose/ui/draganddrop/b;)V

    :cond_3
    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->L(Landroidx/compose/ui/draganddrop/b;)V

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    invoke-static {v1, p1}, Landroidx/compose/ui/draganddrop/e;->b(Landroidx/compose/ui/draganddrop/f;Landroidx/compose/ui/draganddrop/b;)V

    :cond_5
    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->L(Landroidx/compose/ui/draganddrop/b;)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Landroidx/compose/ui/draganddrop/f;->C(Landroidx/compose/ui/draganddrop/b;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->C(Landroidx/compose/ui/draganddrop/b;)V

    :cond_8
    :goto_2
    iput-object v1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    return-void
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public D1(Landroidx/compose/ui/draganddrop/b;)Z
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Landroidx/compose/ui/draganddrop/DragAndDropNode$acceptDragAndDropTransfer$1;

    invoke-direct {v1, p1, p0, v0}, Landroidx/compose/ui/draganddrop/DragAndDropNode$acceptDragAndDropTransfer$1;-><init>(Landroidx/compose/ui/draganddrop/b;Landroidx/compose/ui/draganddrop/DragAndDropNode;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/draganddrop/e;->c(Landroidx/compose/ui/node/m1;Lkotlin/jvm/functions/Function1;)V

    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p1
.end method

.method public L(Landroidx/compose/ui/draganddrop/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->L(Landroidx/compose/ui/draganddrop/b;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->L(Landroidx/compose/ui/draganddrop/b;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    return-void
.end method

.method public Z0(Landroidx/compose/ui/draganddrop/b;)V
    .locals 1

    new-instance v0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onEnded$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode$onEnded$1;-><init>(Landroidx/compose/ui/draganddrop/b;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/draganddrop/e;->c(Landroidx/compose/ui/node/m1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public a0(Landroidx/compose/ui/draganddrop/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->a0(Landroidx/compose/ui/draganddrop/b;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->a0(Landroidx/compose/ui/draganddrop/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k0(Landroidx/compose/ui/draganddrop/b;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->k0(Landroidx/compose/ui/draganddrop/b;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/draganddrop/f;->k0(Landroidx/compose/ui/draganddrop/b;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public o1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->q:Landroidx/compose/ui/draganddrop/f;

    iput-object v0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->p:Landroidx/compose/ui/draganddrop/d;

    return-void
.end method
