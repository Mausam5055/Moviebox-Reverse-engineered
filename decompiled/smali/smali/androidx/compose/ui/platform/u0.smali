.class public final Landroidx/compose/ui/platform/u0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/saveable/b;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function0;

.field private final synthetic b:Landroidx/compose/runtime/saveable/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/saveable/b;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/u0;->a:Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Landroidx/compose/ui/platform/u0;->b:Landroidx/compose/runtime/saveable/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/u0;->b:Landroidx/compose/runtime/saveable/b;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/b;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/b$a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/u0;->b:Landroidx/compose/runtime/saveable/b;

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/saveable/b;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/u0;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/u0;->b:Landroidx/compose/runtime/saveable/b;

    invoke-interface {v0}, Landroidx/compose/runtime/saveable/b;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/u0;->b:Landroidx/compose/runtime/saveable/b;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/b;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
