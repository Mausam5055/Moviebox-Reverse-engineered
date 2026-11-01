.class public final Lcom/cloud/hisavana/sdk/manager/g$d;
.super Lcom/cloud/hisavana/sdk/manager/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

.field final synthetic b:Lcom/cloud/hisavana/sdk/manager/g;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g$b;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g$d;->c(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    return-void
.end method

.method private static final c(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getNext()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->e(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getNext()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->a:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    new-instance v3, Lcom/cloud/hisavana/sdk/manager/h;

    invoke-direct {v3, v1, v2}, Lcom/cloud/hisavana/sdk/manager/h;-><init>(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/g;->b(Lcom/cloud/hisavana/sdk/manager/g;)J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g$d;->b:Lcom/cloud/hisavana/sdk/manager/g;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/g;->g(Lcom/cloud/hisavana/sdk/manager/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
