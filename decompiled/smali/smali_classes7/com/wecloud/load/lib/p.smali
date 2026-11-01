.class public final Lcom/wecloud/load/lib/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/wecloud/load/lib/p;

.field private static volatile b:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wecloud/load/lib/p;

    invoke-direct {v0}, Lcom/wecloud/load/lib/p;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/p;->a:Lcom/wecloud/load/lib/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/wecloud/load/lib/p;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wecloud/load/lib/SoLoadService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final b(Lcom/wecloud/load/lib/SoLoadService;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/wecloud/load/lib/p;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/wecloud/load/lib/p;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wecloud/load/lib/SoLoadService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wecloud/load/lib/SoLoadService;->B()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/wecloud/load/lib/p;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
