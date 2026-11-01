.class public final Lcom/transsion/audio/fragment/RecentListFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/audio/adapter/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/RecentListFragment;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/fragment/RecentListFragment;

.field final synthetic b:Lcom/transsion/audio/adapter/c;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/RecentListFragment;Lcom/transsion/audio/adapter/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->b:Lcom/transsion/audio/adapter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    iget-object v1, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->b:Lcom/transsion/audio/adapter/c;

    invoke-static {v0, v1, p1}, Lcom/transsion/audio/fragment/RecentListFragment;->d0(Lcom/transsion/audio/fragment/RecentListFragment;Lcom/transsion/audio/adapter/c;Lcom/transsion/baselib/db/audio/AudioBean;)V

    return-void
.end method

.method public b(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 12

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/player/AudioPlayer;->y(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-class v4, Lcom/transsion/room/api/IAudioApi;

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/RecentListFragment;->e0(Lcom/transsion/audio/fragment/RecentListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->stop()V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/RecentListFragment;->e0(Lcom/transsion/audio/fragment/RecentListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/transsion/room/api/IAudioApi;->prepare()V

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_2
    move-wide v7, v2

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1

    :cond_3
    const-wide/16 v9, -0x1f4

    :goto_1
    cmp-long v0, v7, v9

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result v0

    const/4 v7, 0x6

    if-eq v0, v7, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/audio/AudioBean;->setReadProcess(Ljava/lang/Long;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/RecentListFragment;->e0(Lcom/transsion/audio/fragment/RecentListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1, v5}, Lcom/transsion/baselib/db/audio/AudioBean;->setStatus(I)V

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IAudioApi;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, v6}, Lcom/transsion/room/api/IAudioApi;->d(Lcom/transsion/baselib/db/audio/AudioBean;Z)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/transsion/audio/fragment/RecentListFragment$b;->a:Lcom/transsion/audio/fragment/RecentListFragment;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_8
    new-instance v1, Lao/e;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/audio/fragment/RecentListFragment;->onProgress(JLao/e;)V

    return-void
.end method
