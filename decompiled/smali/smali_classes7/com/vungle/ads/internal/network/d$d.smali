.class public final Lcom/vungle/ads/internal/network/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/d;->enqueue(Lcom/vungle/ads/internal/network/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vungle/ads/internal/network/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/b;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/network/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/d;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/network/d;Lcom/vungle/ads/internal/network/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/d;",
            "Lcom/vungle/ads/internal/network/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/d$d;->$callback:Lcom/vungle/ads/internal/network/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final callFailure(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$d;->$callback:Lcom/vungle/ads/internal/network/b;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    invoke-interface {v0, v1, p1}, Lcom/vungle/ads/internal/network/b;->onFailure(Lcom/vungle/ads/internal/network/a;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/d$a;->access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "OkHttpCall"

    const-string v2, "Cannot pass failure to callback"

    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/vungle/ads/internal/network/d$d;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/network/d;->parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/vungle/ads/internal/network/d$d;->$callback:Lcom/vungle/ads/internal/network/b;

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$d;->this$0:Lcom/vungle/ads/internal/network/d;

    invoke-interface {p2, v0, p1}, Lcom/vungle/ads/internal/network/b;->onResponse(Lcom/vungle/ads/internal/network/a;Lcom/vungle/ads/internal/network/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    invoke-static {p2, p1}, Lcom/vungle/ads/internal/network/d$a;->access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "OkHttpCall"

    const-string v1, "Cannot pass response to callback"

    invoke-virtual {p2, v0, v1, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    sget-object p2, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    invoke-static {p2, p1}, Lcom/vungle/ads/internal/network/d$a;->access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/network/d$d;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method
