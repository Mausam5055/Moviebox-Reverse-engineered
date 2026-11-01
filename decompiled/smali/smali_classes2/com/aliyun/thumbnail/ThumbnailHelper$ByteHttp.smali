.class Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;
.super Lcom/aliyun/utils/AbsHttpHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteHttp"
.end annotation


# instance fields
.field bytes:[B

.field len:I

.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;


# direct methods
.method private constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    invoke-direct {p0}, Lcom/aliyun/utils/AbsHttpHelper;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->len:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    return-void
.end method


# virtual methods
.method protected handleErrorInputStream(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method protected handleOKInputStream(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$1500(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    if-eqz p1, :cond_0

    array-length p1, p1

    iput p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->len:I

    :cond_0
    return-void
.end method
