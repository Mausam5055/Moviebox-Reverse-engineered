.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$CacheParseTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    iget-object v0, v0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    const/4 v0, 0x0

    throw v0
.end method
