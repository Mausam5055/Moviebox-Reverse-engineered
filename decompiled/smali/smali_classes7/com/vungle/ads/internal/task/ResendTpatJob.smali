.class public final Lcom/vungle/ads/internal/task/ResendTpatJob;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/task/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/ResendTpatJob$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/task/ResendTpatJob$a;

.field public static final TAG:Ljava/lang/String; = "ResendTpatJob"


# instance fields
.field private final context:Landroid/content/Context;

.field private final pathProvider:Lcom/vungle/ads/internal/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/task/ResendTpatJob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/ResendTpatJob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/task/ResendTpatJob;->Companion:Lcom/vungle/ads/internal/task/ResendTpatJob$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/p;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/ResendTpatJob;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/ResendTpatJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    return-void
.end method

.method private static final onRunJob$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/network/h;",
            ">;)",
            "Lcom/vungle/ads/internal/network/h;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/h;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/ResendTpatJob;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPathProvider()Lcom/vungle/ads/internal/util/p;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/ResendTpatJob;->pathProvider:Lcom/vungle/ads/internal/util/p;

    return-object v0
.end method

.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/d;)I
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "jobRunner"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object p1, p0, Lcom/vungle/ads/internal/task/ResendTpatJob;->context:Landroid/content/Context;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/internal/task/ResendTpatJob$onRunJob$$inlined$inject$1;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/task/ResendTpatJob$onRunJob$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/ads/internal/task/ResendTpatJob;->onRunJob$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/h;->resendStoredTpats$vungle_ads_release()V

    const/4 p1, 0x0

    return p1
.end method
