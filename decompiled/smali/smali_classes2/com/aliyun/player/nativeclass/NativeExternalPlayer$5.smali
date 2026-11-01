.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;


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

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingEnd()V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$700(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V

    return-void
.end method

.method public onLoadingProgress(I)V
    .locals 5

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$600(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V

    return-void
.end method

.method public onLoadingStart()V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$5;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$500(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;J)V

    return-void
.end method
