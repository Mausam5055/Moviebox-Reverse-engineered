.class final Lcom/vungle/ads/internal/util/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final adOpenCallback:Lcom/vungle/ads/internal/ui/b;

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deepLinkOverrideIntent:Landroid/content/Intent;

.field private final defaultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Lcom/vungle/ads/internal/ui/b;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/util/a$c;Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;ILjava/lang/Object;)Lcom/vungle/ads/internal/util/a$c;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/a$c;->copy(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Lcom/vungle/ads/internal/util/a$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component2()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final component3()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final component4()Lcom/vungle/ads/internal/ui/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Lcom/vungle/ads/internal/util/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Lcom/vungle/ads/internal/ui/b;",
            ")",
            "Lcom/vungle/ads/internal/util/a$c;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/util/a$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/a$c;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/util/a$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/util/a$c;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    iget-object p1, p1, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAdOpenCallback()Lcom/vungle/ads/internal/ui/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    return-object v0
.end method

.method public final getContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getDeepLinkOverrideIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getDefaultIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetActivityInfo(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deepLinkOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->deepLinkOverrideIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->defaultIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adOpenCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/a$c;->adOpenCallback:Lcom/vungle/ads/internal/ui/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
