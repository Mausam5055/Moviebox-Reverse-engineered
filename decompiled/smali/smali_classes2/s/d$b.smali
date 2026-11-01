.class public final Ls/d$b;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Ls/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$b;

    invoke-direct {v0}, Ls/d$b;-><init>()V

    sput-object v0, Ls/d$b;->c:Ls/d$b;

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

    const/4 p2, 0x0

    invoke-static {p2}, Ls/d$t;->a(I)I

    move-result p2

    invoke-interface {p1, p2}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/c;

    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-interface {p1, v0}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroidx/compose/runtime/c2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/c2;

    invoke-virtual {v0}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    move-result-object v0

    invoke-interface {p4, v0}, Landroidx/compose/runtime/a2;->c(Landroidx/compose/runtime/b2;)V

    :cond_0
    invoke-virtual {p3, p2, p1}, Landroidx/compose/runtime/m2;->G(Landroidx/compose/runtime/c;Ljava/lang/Object;)V

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

    const-string p1, "anchor"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "value"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
