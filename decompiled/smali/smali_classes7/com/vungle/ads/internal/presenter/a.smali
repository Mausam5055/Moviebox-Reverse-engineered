.class public Lcom/vungle/ads/internal/presenter/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/presenter/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/presenter/a$a;

.field private static final TAG:Ljava/lang/String; = "AdEventListener"


# instance fields
.field private adRewarded:Z

.field private placement:Lcom/vungle/ads/internal/model/g;

.field private final playAdCallback:Lcom/vungle/ads/internal/presenter/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/presenter/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/presenter/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/presenter/a;->Companion:Lcom/vungle/ads/internal/presenter/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/a;->placement:Lcom/vungle/ads/internal/model/g;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onFailure(Lcom/vungle/ads/VungleError;)V

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdEventListener#PlayAdCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdEventListener"

    invoke-virtual {v0, v1, p2, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdEventListener"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdStart(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "adClick"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "adLeftApplication"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdLeftApplication(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string p2, "end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdEnd(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string p2, "adViewed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdImpression(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string p2, "successfulView"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->placement:Lcom/vungle/ads/internal/model/g;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isRewardedVideo()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    iget-boolean p1, p0, Lcom/vungle/ads/internal/presenter/a;->adRewarded:Z

    if-nez p1, :cond_6

    iput-boolean p2, p0, Lcom/vungle/ads/internal/presenter/a;->adRewarded:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->playAdCallback:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdRewarded(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71fc83a1 -> :sswitch_4
        -0x6106bbf9 -> :sswitch_3
        0x188db -> :sswitch_2
        0x34264a -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method
