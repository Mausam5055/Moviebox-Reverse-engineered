.class public Lcom/hisavana/mediation/config/CloudControlConfigSync$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;->m(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->a:I

    iput-object p2, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getCloudCompleteListener()Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->a:I

    iget-object v2, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;->onCloudComplete(ILjava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->releaseCloudListener()V

    :cond_0
    return-void
.end method
