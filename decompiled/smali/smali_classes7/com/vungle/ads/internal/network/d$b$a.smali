.class public final Lcom/vungle/ads/internal/network/d$b$a;
.super Lokio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/d$b;-><init>(Lokhttp3/ResponseBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/network/d$b;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/network/d$b;Lokio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d$b$a;->this$0:Lcom/vungle/ads/internal/network/d$b;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/vungle/ads/internal/network/d$b$a;->this$0:Lcom/vungle/ads/internal/network/d$b;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/network/d$b;->setThrownException(Ljava/io/IOException;)V

    throw p1
.end method
