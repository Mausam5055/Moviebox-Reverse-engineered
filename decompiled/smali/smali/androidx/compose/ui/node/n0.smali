.class public final Landroidx/compose/ui/node/n0;
.super Ljava/lang/Object;


# static fields
.field public static final c:I


# instance fields
.field private final a:Landroidx/compose/runtime/collection/b;

.field private final b:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/collection/b;->d:I

    sput v0, Landroidx/compose/ui/node/n0;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/collection/b;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    iput-object p2, p0, Landroidx/compose/ui/node/n0;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/collection/b;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/ui/node/n0;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    return v0
.end method

.method public final f()Landroidx/compose/runtime/collection/b;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    return-object v0
.end method

.method public final g(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/node/n0;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p1
.end method
