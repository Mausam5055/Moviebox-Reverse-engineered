.class Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/ApasaraExternalPlayer$OnCaptureScreenListener;


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

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureScreen(II[B)V
    .locals 6

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativeExternalPlayer$17;->this$0:Lcom/aliyun/player/nativeclass/NativeExternalPlayer;

    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;)J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->access$2000(Lcom/aliyun/player/nativeclass/NativeExternalPlayer;JII[B)V

    return-void
.end method
