.class Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnLoadingStatusListener"
.end annotation


# instance fields
.field private playerWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/ApsaraLiveShiftPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLoadingBegin()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$200(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    :cond_0
    return-void
.end method

.method public onLoadingEnd()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$400(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V

    :cond_0
    return-void
.end method

.method public onLoadingProgress(IF)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerOnLoadingStatusListener;->playerWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$300(Lcom/aliyun/player/ApsaraLiveShiftPlayer;IF)V

    :cond_0
    return-void
.end method
