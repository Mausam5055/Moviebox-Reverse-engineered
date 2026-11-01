.class final Landroidx/compose/ui/layout/d0;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/p;


# instance fields
.field private n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/d0;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final D1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/d0;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/d0;->n:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
