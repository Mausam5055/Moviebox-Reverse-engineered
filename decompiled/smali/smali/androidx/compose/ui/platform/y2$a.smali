.class public final Landroidx/compose/ui/platform/y2$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/ui/platform/y2$a;

.field private static final b:Landroidx/compose/ui/platform/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/y2$a;

    invoke-direct {v0}, Landroidx/compose/ui/platform/y2$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/y2$a;->a:Landroidx/compose/ui/platform/y2$a;

    new-instance v0, Landroidx/compose/ui/platform/x2;

    invoke-direct {v0}, Landroidx/compose/ui/platform/x2;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/y2$a;->b:Landroidx/compose/ui/platform/y2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/platform/y2$a;->b(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->c(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Landroidx/lifecycle/Lifecycle;ILjava/lang/Object;)Landroidx/compose/runtime/Recomposer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Landroidx/compose/ui/platform/y2;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/y2$a;->b:Landroidx/compose/ui/platform/y2;

    return-object v0
.end method
