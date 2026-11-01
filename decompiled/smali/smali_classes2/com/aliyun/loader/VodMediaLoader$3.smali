.class final Lcom/aliyun/loader/VodMediaLoader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/loader/VodMediaLoader;->nOnCompleted(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/loader/VodMediaLoader$3;->val$vid:Ljava/lang/String;

    iput p2, p0, Lcom/aliyun/loader/VodMediaLoader$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->getInstance()Lcom/aliyun/loader/VodMediaLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/loader/VodMediaLoader;->access$000(Lcom/aliyun/loader/VodMediaLoader;)Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/aliyun/loader/VodMediaLoader$3;->val$vid:Ljava/lang/String;

    iget v2, p0, Lcom/aliyun/loader/VodMediaLoader$3;->val$index:I

    invoke-interface {v0, v1, v2}, Lcom/aliyun/loader/VodMediaLoader$OnLoadStatusListener;->onCompleted(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
