.class Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/ApsaraLiveShiftPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTimeShiftUpdaterListener"
.end annotation


# instance fields
.field private playerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/player/ApsaraLiveShiftPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aliyun/player/ApsaraLiveShiftPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;->playerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onUpdater(JJJ)V
    .locals 8

    iget-object v0, p0, Lcom/aliyun/player/ApsaraLiveShiftPlayer$InnerTimeShiftUpdaterListener;->playerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;->access$500(Lcom/aliyun/player/ApsaraLiveShiftPlayer;JJJ)V

    :cond_0
    return-void
.end method
