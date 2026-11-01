.class public final Ls/d$n;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# static fields
.field public static final c:Ls/d$n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$n;

    invoke-direct {v0}, Ls/d$n;-><init>()V

    sput-object v0, Ls/d$n;->c:Ls/d$n;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Ls/d;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 2

    const/4 p4, 0x0

    invoke-static {p4}, Ls/d$t;->a(I)I

    move-result v0

    invoke-interface {p1, v0}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ls/d$t;->a(I)I

    move-result v1

    invoke-interface {p1, v1}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/c;

    invoke-static {p4}, Ls/d$q;->a(I)I

    move-result p4

    invoke-interface {p1, p4}, Ls/e;->b(I)I

    move-result p1

    const-string p4, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0}, Landroidx/compose/runtime/m2;->s1(Landroidx/compose/runtime/c;Ljava/lang/Object;)V

    invoke-interface {p2, p1, v0}, Landroidx/compose/runtime/f;->g(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/f;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ls/d$q;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$q;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "insertIndex"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ls/d;->e(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "factory"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "groupAnchor"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
