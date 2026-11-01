.class public final Landroidx/window/layout/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/window/layout/x$a;

.field private static final b:Ljava/lang/String;

.field private static c:Landroidx/window/layout/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/x$a;

    invoke-direct {v0}, Landroidx/window/layout/x$a;-><init>()V

    sput-object v0, Landroidx/window/layout/x$a;->a:Landroidx/window/layout/x$a;

    const-class v0, Landroidx/window/layout/x;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/layout/x$a;->b:Ljava/lang/String;

    sget-object v0, Landroidx/window/layout/m;->a:Landroidx/window/layout/m;

    sput-object v0, Landroidx/window/layout/x$a;->c:Landroidx/window/layout/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/window/layout/x;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl;

    sget-object v1, Landroidx/window/layout/f0;->a:Landroidx/window/layout/f0;

    invoke-virtual {p0, p1}, Landroidx/window/layout/x$a;->b(Landroid/content/Context;)Landroidx/window/layout/v;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/window/layout/WindowInfoTrackerImpl;-><init>(Landroidx/window/layout/c0;Landroidx/window/layout/v;)V

    sget-object p1, Landroidx/window/layout/x$a;->c:Landroidx/window/layout/y;

    invoke-interface {p1, v0}, Landroidx/window/layout/y;->a(Landroidx/window/layout/x;)Landroidx/window/layout/x;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/window/layout/v;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-virtual {v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->m()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/window/layout/p;

    invoke-direct {v2, v1}, Landroidx/window/layout/p;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :catchall_0
    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Landroidx/window/layout/t;->c:Landroidx/window/layout/t$a;

    invoke-virtual {v0, p1}, Landroidx/window/layout/t$a;->a(Landroid/content/Context;)Landroidx/window/layout/t;

    move-result-object v0

    :cond_1
    return-object v0
.end method
