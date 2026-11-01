.class public final Li4/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Li4/g;

.field private final c:Li4/c;

.field private final d:Li4/g;

.field private final e:Li4/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj4/c;Li4/g;Li4/c;Li4/g;Li4/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "batteryChargingTracker"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "batteryNotLowTracker"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "storageNotLowTracker"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/n;->a:Landroid/content/Context;

    iput-object p3, p0, Li4/n;->b:Li4/g;

    iput-object p4, p0, Li4/n;->c:Li4/c;

    iput-object p5, p0, Li4/n;->d:Li4/g;

    iput-object p6, p0, Li4/n;->e:Li4/g;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lj4/c;Li4/g;Li4/c;Li4/g;Li4/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p7, 0x4

    const-string v1, "getApplicationContext(...)"

    if-eqz v0, :cond_0

    new-instance v0, Li4/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p2}, Li4/a;-><init>(Landroid/content/Context;Lj4/c;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    new-instance v0, Li4/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, p2}, Li4/c;-><init>(Landroid/content/Context;Lj4/c;)V

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-ge v0, v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Li4/i;->a(Landroid/content/Context;Lj4/c;)Li4/g;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    new-instance v0, Li4/l;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, p2}, Li4/l;-><init>(Landroid/content/Context;Lj4/c;)V

    move-object v6, v0

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Li4/n;-><init>(Landroid/content/Context;Lj4/c;Li4/g;Li4/c;Li4/g;Li4/g;)V

    return-void
.end method


# virtual methods
.method public final a()Li4/g;
    .locals 1

    iget-object v0, p0, Li4/n;->b:Li4/g;

    return-object v0
.end method

.method public final b()Li4/c;
    .locals 1

    iget-object v0, p0, Li4/n;->c:Li4/c;

    return-object v0
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Li4/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final d()Li4/g;
    .locals 1

    iget-object v0, p0, Li4/n;->d:Li4/g;

    return-object v0
.end method

.method public final e()Li4/g;
    .locals 1

    iget-object v0, p0, Li4/n;->e:Li4/g;

    return-object v0
.end method
