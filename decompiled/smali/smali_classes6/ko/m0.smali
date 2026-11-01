.class public final Lko/m0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lko/m0;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lko/m0;

    invoke-direct {v0}, Lko/m0;-><init>()V

    sput-object v0, Lko/m0;->a:Lko/m0;

    const-string v0, "TnPlayerPool"

    sput-object v0, Lko/m0;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/player/orplayer/g;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroid/content/Context;)Lko/d0;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lko/d0;->m:Lko/d0$a;

    invoke-virtual {p1}, Lko/d0$a;->a()Lko/d0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Lco/h;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lco/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "getApplicationContext(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lco/h;-><init>(Landroid/content/Context;Lco/m;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final d(Landroid/content/Context;Lco/m;)Lco/h;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lco/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "getApplicationContext(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lco/h;-><init>(Landroid/content/Context;Lco/m;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
