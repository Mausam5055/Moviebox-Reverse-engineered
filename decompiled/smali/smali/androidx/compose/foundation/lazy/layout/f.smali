.class public final Landroidx/compose/foundation/lazy/layout/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/modifier/j;
.implements Landroidx/compose/ui/layout/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/f$b;,
        Landroidx/compose/foundation/lazy/layout/f$c;
    }
.end annotation


# static fields
.field public static final g:Landroidx/compose/foundation/lazy/layout/f$b;

.field private static final h:Landroidx/compose/foundation/lazy/layout/f$a;


# instance fields
.field private final b:Landroidx/compose/foundation/lazy/layout/h;

.field private final c:Landroidx/compose/foundation/lazy/layout/e;

.field private final d:Z

.field private final e:Landroidx/compose/ui/unit/LayoutDirection;

.field private final f:Landroidx/compose/foundation/gestures/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/f;->g:Landroidx/compose/foundation/lazy/layout/f$b;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/f$a;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/f$a;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/f;->h:Landroidx/compose/foundation/lazy/layout/f$a;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/h;Landroidx/compose/foundation/lazy/layout/e;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/f;->c:Landroidx/compose/foundation/lazy/layout/e;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/f;->e:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/layout/f;->f:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public static final synthetic i(Landroidx/compose/foundation/lazy/layout/f;Landroidx/compose/foundation/lazy/layout/e$a;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/f;->l(Landroidx/compose/foundation/lazy/layout/e$a;I)Z

    move-result p0

    return p0
.end method

.method private final j(Landroidx/compose/foundation/lazy/layout/e$a;I)Landroidx/compose/foundation/lazy/layout/e$a;
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/e$a;->b()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/e$a;->a()I

    move-result p1

    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/layout/f;->m(I)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/f;->c:Landroidx/compose/foundation/lazy/layout/e;

    invoke-virtual {p2, v0, p1}, Landroidx/compose/foundation/lazy/layout/e;->a(II)Landroidx/compose/foundation/lazy/layout/e$a;

    move-result-object p1

    return-object p1
.end method

.method private final l(Landroidx/compose/foundation/lazy/layout/e$a;I)Z
    .locals 2

    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/layout/f;->o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/layout/f;->m(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/e$a;->a()I

    move-result p1

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/h;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_2

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/e$a;->b()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private final m(I)Z
    .locals 5

    sget-object v0, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->c()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :goto_0
    move v2, v3

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->d()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    if-nez p1, :cond_9

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_6

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->e:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/foundation/lazy/layout/f$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_5

    if-ne p1, v4, :cond_4

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    if-nez p1, :cond_9

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->f()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->e:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/foundation/lazy/layout/f$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_8

    if-ne p1, v4, :cond_7

    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    goto :goto_1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/f;->d:Z

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    return v2

    :cond_a
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/g;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final o(I)Z
    .locals 4

    sget-object v0, Landroidx/compose/ui/layout/d$b;->a:Landroidx/compose/ui/layout/d$b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->d()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->f:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_1

    goto :goto_4

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->e()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->f()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->f:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->c()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/d$b$a;->b()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/d$b;->h(II)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_6

    goto :goto_1

    :goto_4
    return v2

    :cond_6
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/g;->a()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/h;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/f;->m(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/h;->d()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/h;->c()I

    move-result v0

    :goto_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/f;->c:Landroidx/compose/foundation/lazy/layout/e;

    invoke-virtual {v2, v0, v0}, Landroidx/compose/foundation/lazy/layout/e;->a(II)Landroidx/compose/foundation/lazy/layout/e$a;

    move-result-object v0

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-direct {p0, v2, p1}, Landroidx/compose/foundation/lazy/layout/f;->l(Landroidx/compose/foundation/lazy/layout/e$a;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/layout/f;->j(Landroidx/compose/foundation/lazy/layout/e$a;I)Landroidx/compose/foundation/lazy/layout/e$a;

    move-result-object v0

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/f;->c:Landroidx/compose/foundation/lazy/layout/e;

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/layout/e;->e(Landroidx/compose/foundation/lazy/layout/e$a;)V

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/h;->a()V

    new-instance v0, Landroidx/compose/foundation/lazy/layout/f$d;

    invoke-direct {v0, p0, v1, p1}, Landroidx/compose/foundation/lazy/layout/f$d;-><init>(Landroidx/compose/foundation/lazy/layout/f;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->c:Landroidx/compose/foundation/lazy/layout/e;

    iget-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/layout/e;->e(Landroidx/compose/foundation/lazy/layout/e$a;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/f;->b:Landroidx/compose/foundation/lazy/layout/h;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/h;->a()V

    return-object v0

    :cond_3
    :goto_2
    sget-object p1, Landroidx/compose/foundation/lazy/layout/f;->h:Landroidx/compose/foundation/lazy/layout/f$a;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

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

.method public getKey()Landroidx/compose/ui/modifier/l;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->a()Landroidx/compose/ui/modifier/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/f;->k()Landroidx/compose/ui/layout/d;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/compose/ui/layout/d;
    .locals 0

    return-object p0
.end method
