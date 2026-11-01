.class Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/audio/PlayerInstance$IPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayCallback"
.end annotation


# instance fields
.field private playerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;->this$0:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;->playerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDispatchEvent(Lcom/cloud/tmc/integration/audio/PlayerInstance$PlayType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ForegroundPlayerClient"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDispatchEvent:### id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "audioPlayerID"

    invoke-virtual {v1, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$1;->$SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "onForegroundAudioEnded"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :pswitch_1
    const-string p1, "onForegroundAudioError"

    const-string p3, "errMsg"

    invoke-virtual {v1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "onForegroundAudioWaiting"

    goto :goto_0

    :pswitch_3
    const-string p1, "onForegroundAudioSeeking"

    goto :goto_0

    :pswitch_4
    const-string p1, "onForegroundAudioSeeked"

    goto :goto_0

    :pswitch_5
    const-string p1, "onForegroundAudioPause"

    goto :goto_0

    :pswitch_6
    const-string p1, "onForegroundAudioStop"

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;->this$0:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    invoke-static {p1}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->b(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/audio/PlayerInstance;

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->c(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;Lcom/cloud/tmc/integration/audio/PlayerInstance;)V

    const-string p1, "onForegroundAudioPlay"

    goto :goto_0

    :pswitch_8
    const-string p1, "onForegroundAudioCanPlay"

    :goto_0
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p3, "data"

    invoke-virtual {p2, p3, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;->this$0:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->a(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;->this$0:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->a(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient$PlayCallback;->this$0:Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;

    invoke-static {p3}, Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;->a(Lcom/cloud/tmc/integration/audio/ForegroundPlayerClient;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p3

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {p3, p1, p2, v1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
