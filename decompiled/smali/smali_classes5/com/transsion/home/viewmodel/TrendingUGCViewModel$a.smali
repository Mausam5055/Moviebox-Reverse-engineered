.class public final Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k()Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/lifecycle/v0$a;->e:Landroidx/lifecycle/v0$a$b;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0$a$b;->a(Landroid/app/Application;)Landroidx/lifecycle/v0$a;

    move-result-object p1

    const-class v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0$a;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    invoke-static {p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->o(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V

    :cond_0
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k()Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    move-result-object p1

    return-object p1
.end method
