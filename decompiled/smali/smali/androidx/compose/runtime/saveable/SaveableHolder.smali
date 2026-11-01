.class final Landroidx/compose/runtime/saveable/SaveableHolder;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/saveable/e;
.implements Landroidx/compose/runtime/b2;


# instance fields
.field private a:Landroidx/compose/runtime/saveable/d;

.field private b:Landroidx/compose/runtime/saveable/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;

.field private e:[Ljava/lang/Object;

.field private f:Landroidx/compose/runtime/saveable/b$a;

.field private final g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/b;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->a:Landroidx/compose/runtime/saveable/d;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->b:Landroidx/compose/runtime/saveable/b;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->e:[Ljava/lang/Object;

    new-instance p1, Landroidx/compose/runtime/saveable/SaveableHolder$valueProvider$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/saveable/SaveableHolder$valueProvider$1;-><init>(Landroidx/compose/runtime/saveable/SaveableHolder;)V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/runtime/saveable/SaveableHolder;)Landroidx/compose/runtime/saveable/d;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->a:Landroidx/compose/runtime/saveable/d;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private final e()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->b:Landroidx/compose/runtime/saveable/b;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->a(Landroidx/compose/runtime/saveable/b;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/saveable/b;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/b$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entry("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->b:Landroidx/compose/runtime/saveable/b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/b;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final d([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->e:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final f(Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/b;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->b:Landroidx/compose/runtime/saveable/b;

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->b:Landroidx/compose/runtime/saveable/b;

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->c:Ljava/lang/String;

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->a:Landroidx/compose/runtime/saveable/d;

    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->e:[Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/runtime/saveable/b$a;->unregister()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    invoke-direct {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->e()V

    :cond_3
    return-void
.end method

.method public onAbandoned()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/saveable/b$a;->unregister()V

    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->f:Landroidx/compose/runtime/saveable/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/saveable/b$a;->unregister()V

    :cond_0
    return-void
.end method

.method public onRemembered()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->e()V

    return-void
.end method
