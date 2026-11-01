.class Landroidx/media3/datasource/cronet/CronetDataSource$a;
.super Lorg/chromium/net/UrlRequest$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/datasource/cronet/CronetDataSource;->A(Lorg/chromium/net/UrlRequest;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Landroidx/media3/common/util/l;


# direct methods
.method constructor <init>([ILandroidx/media3/common/util/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->a:[I

    iput-object p2, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->b:Landroidx/media3/common/util/l;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$StatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->a:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Landroidx/media3/datasource/cronet/CronetDataSource$a;->b:Landroidx/media3/common/util/l;

    invoke-virtual {p1}, Landroidx/media3/common/util/l;->f()Z

    return-void
.end method
