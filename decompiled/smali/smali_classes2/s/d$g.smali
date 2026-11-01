.class public final Ls/d$g;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final c:Ls/d$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$g;

    invoke-direct {v0}, Ls/d$g;-><init>()V

    sput-object v0, Ls/d$g;->c:Ls/d$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 1

    const/4 p4, 0x0

    invoke-static {p4}, Ls/d$t;->a(I)I

    move-result p4

    invoke-interface {p1, p4}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/internal/c;

    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-interface {p1, v0}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/c;

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1, p2}, Ls/f;->a(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/c;Landroidx/compose/runtime/f;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/internal/c;->b(I)V

    return-void
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "effectiveNodeIndexOut"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "anchor"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
