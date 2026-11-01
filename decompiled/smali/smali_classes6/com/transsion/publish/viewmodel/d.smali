.class public final Lcom/transsion/publish/viewmodel/d;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/publish/viewmodel/c;

    invoke-direct {p1}, Lcom/transsion/publish/viewmodel/c;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/d;->b:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/d;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/d;->d:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic c()Lkp/b;
    .locals 1

    invoke-static {}, Lcom/transsion/publish/viewmodel/d;->d()Lkp/b;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Lkp/b;
    .locals 1

    new-instance v0, Lkp/b;

    invoke-direct {v0}, Lkp/b;-><init>()V

    return-object v0
.end method
