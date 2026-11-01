.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnPositionUpdateListener;


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

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionUpdate(J)V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$8;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$1100(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JJ)V

    return-void
.end method
