.class public final Landroidx/compose/foundation/t;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/t$a;
    }
.end annotation


# static fields
.field public static final p:Landroidx/compose/foundation/t$a;

.field public static final q:I


# instance fields
.field private n:Lkotlin/jvm/functions/Function1;

.field private final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/t;->p:Landroidx/compose/foundation/t$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/t;->q:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/t;->n:Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroidx/compose/foundation/t;->p:Landroidx/compose/foundation/t$a;

    iput-object p1, p0, Landroidx/compose/foundation/t;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/t;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final D1(Landroidx/compose/ui/layout/l;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/t;->n:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/ui/node/n1;->b(Landroidx/compose/ui/node/m1;)Landroidx/compose/ui/node/m1;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/t;->D1(Landroidx/compose/ui/layout/l;)V

    :cond_0
    return-void
.end method
