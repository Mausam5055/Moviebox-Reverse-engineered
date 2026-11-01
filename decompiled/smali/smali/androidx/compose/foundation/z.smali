.class final Landroidx/compose/foundation/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/draw/f;


# instance fields
.field private final b:Landroidx/compose/foundation/y;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/z;->b:Landroidx/compose/foundation/y;

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method

.method public n(Lz/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/z;->b:Landroidx/compose/foundation/y;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/y;->a(Lz/c;)V

    return-void
.end method
