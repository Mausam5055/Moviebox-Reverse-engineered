.class Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/api/listener/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/adxlibrary/excuter/AdxSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;->a:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxSplash"

    const-string v2, "onTimeEnd,splash timeout"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;->a:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->f(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxSplash"

    const-string v2, "onClick click skip btn"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;->a:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->e(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    return-void
.end method
