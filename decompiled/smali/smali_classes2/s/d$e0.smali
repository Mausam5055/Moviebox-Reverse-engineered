.class public final Ls/d$e0;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e0"
.end annotation


# static fields
.field public static final c:Ls/d$e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$e0;

    invoke-direct {v0}, Ls/d$e0;-><init>()V

    sput-object v0, Ls/d$e0;->c:Ls/d$e0;

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
    .locals 0

    const/4 p3, 0x0

    invoke-static {p3}, Ls/d$t;->a(I)I

    move-result p3

    invoke-interface {p1, p3}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p4}, Ls/d$t;->a(I)I

    move-result p4

    invoke-interface {p1, p4}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2}, Landroidx/compose/runtime/f;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p1, "value"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "block"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
