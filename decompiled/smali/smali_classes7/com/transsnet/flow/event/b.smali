.class public final Lcom/transsnet/flow/event/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/flow/event/b;

.field public static b:Landroid/app/Application;

.field private static c:Lcom/transsnet/flow/event/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/flow/event/b;

    invoke-direct {v0}, Lcom/transsnet/flow/event/b;-><init>()V

    sput-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/transsnet/flow/event/b;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "application"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcom/transsnet/flow/event/c;
    .locals 1

    sget-object v0, Lcom/transsnet/flow/event/b;->c:Lcom/transsnet/flow/event/c;

    return-object v0
.end method

.method public final c(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/flow/event/b;->a:Lcom/transsnet/flow/event/b;

    invoke-virtual {v0, p1}, Lcom/transsnet/flow/event/b;->d(Landroid/app/Application;)V

    new-instance p1, Lcom/transsnet/flow/event/d;

    invoke-direct {p1}, Lcom/transsnet/flow/event/d;-><init>()V

    sput-object p1, Lcom/transsnet/flow/event/b;->c:Lcom/transsnet/flow/event/c;

    return-void
.end method

.method public final d(Landroid/app/Application;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsnet/flow/event/b;->b:Landroid/app/Application;

    return-void
.end method
