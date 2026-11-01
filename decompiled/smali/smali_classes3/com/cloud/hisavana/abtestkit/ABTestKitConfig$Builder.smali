.class public final Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0004J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;",
        "",
        "()V",
        "mHttpRequestTimeInterval",
        "",
        "mInitCompleteListener",
        "Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;",
        "mUseTestEnvironment",
        "",
        "build",
        "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;",
        "setHttpRequestTimeInterval",
        "httpRequestTimeInterval",
        "setInitCompleteListener",
        "initCompleteListener",
        "setUseTestEnvironment",
        "useTestEnvironment",
        "abtestkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private mHttpRequestTimeInterval:J

.field private mInitCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

.field private mUseTestEnvironment:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mHttpRequestTimeInterval:J

    return-void
.end method


# virtual methods
.method public final build()Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;
    .locals 7

    new-instance v6, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mUseTestEnvironment:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->setUseTestEnvironment(Ljava/lang/Boolean;)V

    iget-wide v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mHttpRequestTimeInterval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->setHttpRequestTimeInterval(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mInitCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    invoke-virtual {v6, v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->setInitCompleteListener(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    return-object v6
.end method

.method public final setHttpRequestTimeInterval(J)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mHttpRequestTimeInterval:J

    return-object p0
.end method

.method public final setInitCompleteListener(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mInitCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    return-object p0
.end method

.method public final setUseTestEnvironment(Z)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->mUseTestEnvironment:Z

    return-object p0
.end method
