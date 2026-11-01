.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnSubtitleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->create(JLcom/aliyun/player/nativeclass/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleExtAdded(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJLjava/lang/String;)V

    return-void
.end method

.method public onSubtitleHide(IJ)V
    .locals 6

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2300(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V

    return-void
.end method

.method public onSubtitleShow(IJLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$18;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2200(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ[B)V

    return-void
.end method
