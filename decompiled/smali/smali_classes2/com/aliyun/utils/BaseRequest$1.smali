.class Lcom/aliyun/utils/BaseRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/utils/BaseRequest$OnRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/utils/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/BaseRequest;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/BaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/BaseRequest$1;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$1;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-static {v0}, Lcom/aliyun/utils/BaseRequest;->access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$1;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-static {v0}, Lcom/aliyun/utils/BaseRequest;->access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onFail(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$1;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-static {v0}, Lcom/aliyun/utils/BaseRequest;->access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/utils/BaseRequest$1;->this$0:Lcom/aliyun/utils/BaseRequest;

    invoke-static {v0}, Lcom/aliyun/utils/BaseRequest;->access$000(Lcom/aliyun/utils/BaseRequest;)Lcom/aliyun/utils/BaseRequest$OnRequestListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aliyun/utils/BaseRequest$OnRequestListener;->onSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
