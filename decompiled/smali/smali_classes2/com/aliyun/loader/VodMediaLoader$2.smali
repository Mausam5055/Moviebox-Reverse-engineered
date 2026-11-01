.class final Lcom/aliyun/loader/VodMediaLoader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/VodMediaLoader;->nOnError(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$index:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$vid:Ljava/lang/String;

    iput p2, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$index:I

    iput p3, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$code:I

    iput-object p4, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$vid:Ljava/lang/String;

    iget v2, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$index:I

    iget v3, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$code:I

    iget-object v4, p0, Lcom/aliyun/loader/VodMediaLoader$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;->onError(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
