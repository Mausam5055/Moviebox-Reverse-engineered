.class public final Lcom/vungle/ads/internal/task/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/task/b;


# instance fields
.field private final context:Landroid/content/Context;

.field private final pathProvider:Lcom/vungle/ads/internal/util/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/p;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/g;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/g;->pathProvider:Lcom/vungle/ads/internal/util/p;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/vungle/ads/internal/task/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/ads/internal/task/UnknownTagException;
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CleanupJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vungle/ads/internal/task/CleanupJob;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/g;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/g;->pathProvider:Lcom/vungle/ads/internal/util/p;

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/internal/task/CleanupJob;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/p;)V

    goto :goto_0

    :cond_0
    const-string v0, "ResendTpatJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/vungle/ads/internal/task/ResendTpatJob;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/g;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/g;->pathProvider:Lcom/vungle/ads/internal/util/p;

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/internal/task/ResendTpatJob;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/p;)V

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/vungle/ads/internal/task/UnknownTagException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Job Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/task/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Lcom/vungle/ads/internal/task/UnknownTagException;

    const-string v0, "Job tag is null"

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/task/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/g;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPathProvider()Lcom/vungle/ads/internal/util/p;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/g;->pathProvider:Lcom/vungle/ads/internal/util/p;

    return-object v0
.end method
