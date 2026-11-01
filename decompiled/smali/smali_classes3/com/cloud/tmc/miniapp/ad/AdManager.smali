.class public final Lcom/cloud/tmc/miniapp/ad/AdManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/ad/IAdManagerProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;,
        Lcom/cloud/tmc/miniapp/ad/AdManager$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ad/AdManager$OooO0O0;

.field public static final TAG:Ljava/lang/String; = "AdManager"


# instance fields
.field public final OooO00o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO0O0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO0O0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ad/AdManager;->Companion:Lcom/cloud/tmc/miniapp/ad/AdManager$OooO0O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$clearCache(Lcom/cloud/tmc/miniapp/ad/AdManager;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V

    return-void
.end method

.method public static final synthetic access$fillingInterstitialFail(Lcom/cloud/tmc/miniapp/ad/AdManager;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$showInterstitialFail(Lcom/cloud/tmc/miniapp/ad/AdManager;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V
    .locals 14

    move-object v0, p0

    move-object v11, p1

    move-object/from16 v5, p4

    move-object/from16 v12, p5

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    move-object/from16 v4, p3

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    new-instance v13, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/tmc/ad/bean/response/NativeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/tmc/ad/bean/response/NativeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/tmc/ad/bean/response/NativeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/bean/response/NativeBean;->getButtonText()Ljava/lang/String;

    move-result-object v8

    move-object v1, v13

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string v1, "\u5e7f\u544a\u56fe\u7247\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p1, v12, v1}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v1, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-virtual {p0, p1, v12, v1}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0Oo()V

    :cond_1
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_4

    iput-object v0, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    :cond_4
    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p2, :cond_8

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0oO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillingInterstitialFail -> errMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AdManager"

    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/ad/interface/AdFillingEventListener;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0}, Lcom/cloud/tmc/ad/interface/AdFillingEventListener;->fillingResult(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V

    return-void
.end method

.method public final OooO0O0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInterstitialFail -> errMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdManager"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p2 .. p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    if-eqz v2, :cond_0

    new-instance v15, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    move-object/from16 v4, v18

    invoke-interface {v2, v0, v3, v4}, Lcom/cloud/tmc/ad/interface/AdShowEventListener;->showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V

    return-void
.end method

.method public applicationDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO00o:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/ad/AdManager;->onDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 3

    const-string v0, "triggerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    const-string v0, "AdManager"

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0oO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    if-eqz p2, :cond_0

    iput-boolean v2, p2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o0:Z

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5173\u95ed\u5931\u8d25 -> html\u5f62\u5f0f\u5b9e\u4f8b\u4e0d\u5b58\u5728triggerId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    if-eqz p2, :cond_2

    iput-boolean v2, p2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o0:Z

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5173\u95ed\u5931\u8d25 -> json\u5f62\u5f0f\u5b9e\u4f8b\u4e0d\u5b58\u5728triggerId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5173\u95ed\u5931\u8d25 -> \u672a\u66dd\u5149triggerId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public fillingInterstitial(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/interface/AdFillingEventListener;)V
    .locals 11

    move-object v8, p0

    move-object v6, p1

    move-object/from16 v7, p5

    move-object/from16 v0, p6

    const-string v1, "triggerId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adsDTO"

    move-object v2, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "app"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/interface/AdFillingEventListener;

    :cond_1
    :goto_0
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/cloud/tmc/miniapp/ad/OooO00o;

    invoke-direct {v1, p0, v7}, Lcom/cloud/tmc/miniapp/ad/OooO00o;-><init>(Lcom/cloud/tmc/miniapp/ad/AdManager;Lcom/cloud/tmc/integration/structure/App;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/interface/AdEventListener;

    :cond_3
    :goto_1
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/ad/interface/AdEventListener;

    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\u8bf7\u5148\u521d\u59cb\u5316"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    :goto_4
    const-string v0, "\u975e\u63d2\u5c4f\u7c7b\u578b"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "fromTypeJson"

    const-string v4, "fromTypeHtml"

    if-nez v0, :cond_8

    move-object v0, v4

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "adm\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v10, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v3

    const-string v0, "adsDTO.adm"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "adsDTO.scales[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v0, v10

    move-object v2, p1

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    iget-object v0, v8, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface/range {p5 .. p5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    goto/16 :goto_9

    :cond_b
    const-string v0, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    :goto_6
    const-string v0, "\u4ee3\u7801\u4e3a\u6bd4\u4f8b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p3, :cond_15

    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v1, "I1107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_7

    :cond_e
    new-instance v10, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v10, v5, v5, v5, v5}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    goto/16 :goto_8

    :sswitch_1
    const-string v1, "I1106"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_7

    :cond_f
    new-instance v10, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v10, v3, v3, v5, v3}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    goto/16 :goto_8

    :sswitch_2
    const-string v1, "I1103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_7

    :cond_10
    new-instance v10, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v10, v3, v3, v5, v3}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    goto/16 :goto_8

    :sswitch_3
    const-string v1, "I1102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_7

    :cond_11
    new-instance v10, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v10, v3, v5, v3, v3}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    goto :goto_8

    :sswitch_4
    const-string v1, "I1101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    new-instance v10, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v10, v3, v3, v3, v3}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    goto :goto_8

    :sswitch_5
    const-string v1, "FA14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    new-instance v10, Lcom/cloud/tmc/ad/bean/AdStyleBean;

    invoke-direct {v10, v3, v3, v3, v3}, Lcom/cloud/tmc/ad/bean/AdStyleBean;-><init>(ZZZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/AdStyleBean;Lcom/cloud/tmc/ad/interface/AdEventListener;)V

    goto :goto_8

    :cond_14
    :goto_7
    const-string v0, "\u975eadm materialStyle \u4e0d\u7b26\u5408"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_15
    const-string v0, "\u5e7f\u544a\u56fe\u7247\u4e0d\u5b58\u5728"

    invoke-virtual {p0, p1, v7, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u586b\u5145 -> triggerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u4e0d\u5b58\u5728\u7684\u5e7f\u544a\u5f62\u5f0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x20cc1e -> :sswitch_5
        0x41bb7ea -> :sswitch_4
        0x41bb7eb -> :sswitch_3
        0x41bb7ec -> :sswitch_2
        0x41bb7ef -> :sswitch_1
        0x41bb7f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAdSdkFrameworkVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    move-result-object v0

    const-string v1, "ad_sdk_version"

    invoke-virtual {v0, v1}, Lcom/transsion/core/utils/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getAdSdkFrameworkVersionInt()J
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0OO:Ljava/lang/Long;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->INSTANCE:Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/AdxPreferencesHelper;->getInstance()Lcom/transsion/core/utils/f;

    move-result-object v0

    const-string v1, "ad_sdk_version_int"

    invoke-virtual {v0, v1}, Lcom/transsion/core/utils/f;->g(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0OO:Ljava/lang/Long;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0OO:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public onCreate(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 12

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getExistAppIds()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    iget-object v2, v2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO00o:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->onDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app.appId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    const/16 v11, 0x7e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentLinkedQueue;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onDestroy(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0Oo()V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    if-eqz v3, :cond_3

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iput-object v2, v1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialJsonAllStyleView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0oO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_6
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/interface/AdShowEventListener;)V
    .locals 3

    const-string v0, "triggerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsDTO"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-ne p3, v1, :cond_4

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    goto :goto_1

    :cond_3
    const-string p3, "html\u5e7f\u544a\u586b\u5145\u5b9e\u4f8b\u4e3anull"

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-ne p3, v1, :cond_7

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    if-eqz p3, :cond_5

    iget-object p3, p3, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    goto :goto_1

    :cond_6
    const-string p3, "json\u5e7f\u544a\u586b\u5145\u5b9e\u4f8b\u4e3anull"

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p3, "\u4e0d\u5b58\u5728\u5e7f\u544a\u5f62\u5f0f"

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ad/AdManager;->OooO0O0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
