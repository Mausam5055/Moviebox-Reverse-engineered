.class public final Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/api/listener/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;->a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxWrapperSplash"

    const-string v2, "AdxWrapperSplash --> onTimeEnd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;->a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdSkipListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/OnSkipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/OnSkipListener;->onTimeReach()V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxWrapperSplash"

    const-string v2, "AdxWrapperSplash --> onClick"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$c;->a:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdSkipListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/OnSkipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/OnSkipListener;->onClick()V

    :cond_0
    return-void
.end method
