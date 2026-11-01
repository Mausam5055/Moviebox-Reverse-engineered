.class public final Ls/d$h0;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h0"
.end annotation


# static fields
.field public static final c:Ls/d$h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$h0;

    invoke-direct {v0}, Ls/d$h0;-><init>()V

    sput-object v0, Ls/d$h0;->c:Ls/d$h0;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 0

    invoke-interface {p2}, Landroidx/compose/runtime/f;->d()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.compose.runtime.ComposeNodeLifecycleCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/h;

    invoke-interface {p1}, Landroidx/compose/runtime/h;->onReuse()V

    return-void
.end method
