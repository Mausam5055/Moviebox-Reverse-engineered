.class public final Lys/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lys/a;

.field private static b:Ltt/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lys/a;

    invoke-direct {v0}, Lys/a;-><init>()V

    sput-object v0, Lys/a;->a:Lys/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    const-string v0, "createFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lys/a;->b:Ltt/a;

    if-nez v0, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "checkCreateFactory, null create"

    const/4 v2, 0x1

    const-string v3, "ShortTv"

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltt/a;

    sput-object p1, Lys/a;->b:Ltt/a;

    :cond_0
    return-void
.end method

.method public final b()Ltt/a;
    .locals 1

    sget-object v0, Lys/a;->b:Ltt/a;

    return-object v0
.end method

.method public final c(Landroid/app/Application;Ltt/a;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lys/a;->b:Ltt/a;

    sget-object p2, Lzs/b;->a:Lzs/b;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object p2, Lkt/b;->a:Lkt/b$a;

    invoke-virtual {p2, p1}, Lkt/b$a;->c(Landroid/app/Application;)V

    sget-object p1, Lwt/b;->a:Lwt/b$a;

    invoke-virtual {p1}, Lwt/b$a;->b()Lwt/b;

    move-result-object p1

    invoke-interface {p1}, Lwt/b;->init()V

    return-void
.end method
