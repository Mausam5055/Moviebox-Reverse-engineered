.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/c;->a:Landroid/webkit/WebView;

    iput-wide p2, p0, Lcom/cloud/hisavana/sdk/common/util/c;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/c;->a:Landroid/webkit/WebView;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/util/c;->b:J

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/e;->a(Landroid/webkit/WebView;J)V

    return-void
.end method
