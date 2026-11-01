.class Lcom/iab/omid/library/hisavana/adsession/JavaScriptSessionService$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/iab/omid/library/hisavana/adsession/e;

.field final synthetic val$tearDownHandler:Lcom/iab/omid/library/hisavana/adsession/e$a;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/hisavana/adsession/e;Lcom/iab/omid/library/hisavana/adsession/e$a;Ljava/util/Timer;)V
    .locals 0

    iput-object p3, p0, Lcom/iab/omid/library/hisavana/adsession/JavaScriptSessionService$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iab/omid/library/hisavana/adsession/e;->a(Lcom/iab/omid/library/hisavana/adsession/e;)V

    throw v0
.end method
