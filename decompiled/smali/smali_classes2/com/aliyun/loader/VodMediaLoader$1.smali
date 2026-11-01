.class final Lcom/aliyun/loader/VodMediaLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/VodMediaLoader;->nOnPrepared(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/loader/VodMediaLoader$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/loader/VodMediaLoader$1;->val$object:Ljava/lang/Object;

    check-cast v1, Lcom/aliyun/player/nativeclass/MediaInfo;

    invoke-interface {v0, v1}, Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    :cond_0
    return-void
.end method
