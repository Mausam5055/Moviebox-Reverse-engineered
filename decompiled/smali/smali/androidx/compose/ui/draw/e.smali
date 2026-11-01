.class public final Landroidx/compose/ui/draw/e;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/n;


# instance fields
.field private n:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/e;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final D1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/e;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public n(Lz/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/e;->n:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lz/c;->Y0()V

    return-void
.end method

.method public synthetic w0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method
