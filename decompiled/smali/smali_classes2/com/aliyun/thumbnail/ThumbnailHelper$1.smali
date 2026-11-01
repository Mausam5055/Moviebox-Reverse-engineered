.class Lcom/aliyun/thumbnail/ThumbnailHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailHelper$1;)V

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/utils/AbsHttpHelper;->doGet(Ljava/lang/String;)V

    const-string v1, "([a-zA-Z]+://[^/]+).*[/]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    new-instance v4, Ljava/lang/String;

    iget-object v0, v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v1, v4}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v0, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    check-cast v0, [Lcom/aliyun/thumbnail/ThumbnailInfo;

    invoke-static {v1, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$300(Lcom/aliyun/thumbnail/ThumbnailHelper;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$400(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$500(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    :goto_1
    return-void
.end method
