.class Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->c:I

    return p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public athenaTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "athenaTrack -----> eventName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonalCloseAdActivity"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/16 v1, 0x223d

    invoke-static {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->P(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->c:I

    return-void
.end method

.method public closePage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance p1, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$b;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public personaliseCallback()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "PersonalCloseAdActivity"

    const-string v2, "personaliseCallback"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method
