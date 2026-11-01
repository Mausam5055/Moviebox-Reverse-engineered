.class Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/AliPlayer$OnVerifyTimeExpireCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnVerifyTimeExpireCallback"
.end annotation


# instance fields
.field private avpBaseWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/ApsaraVideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aliyun/player/ApsaraVideoPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;->avpBaseWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onVerifyAuth(Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->access$100(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/VidAuth;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    return-object p1
.end method

.method public onVerifySts(Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/ApsaraVideoPlayer$InnerOnVerifyTimeExpireCallback;->avpBaseWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;->access$000(Lcom/aliyun/player/ApsaraVideoPlayer;Lcom/aliyun/player/source/StsInfo;)Lcom/aliyun/player/AliPlayer$Status;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/aliyun/player/AliPlayer$Status;->Invalid:Lcom/aliyun/player/AliPlayer$Status;

    return-object p1
.end method
