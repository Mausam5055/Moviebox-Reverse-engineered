.class public final Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/audio/AudioEffectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,J\u0008\u0010-\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000b\"\u0004\u0008\u0019\u0010\rR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010 \u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000b\"\u0004\u0008\"\u0010\rR\u001c\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0006\"\u0004\u0008%\u0010\u0004R\u001e\u0010&\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\'\u0010\u001c\"\u0004\u0008(\u0010\u001e\u00a8\u0006."
    }
    d2 = {
        "Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;",
        "",
        "id",
        "",
        "(Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "leftVolume",
        "",
        "getLeftVolume",
        "()F",
        "setLeftVolume",
        "(F)V",
        "loop",
        "",
        "getLoop",
        "()I",
        "setLoop",
        "(I)V",
        "priority",
        "getPriority",
        "setPriority",
        "rate",
        "getRate",
        "setRate",
        "resId",
        "getResId",
        "()Ljava/lang/Integer;",
        "setResId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "rightVolume",
        "getRightVolume",
        "setRightVolume",
        "src",
        "getSrc",
        "setSrc",
        "streamId",
        "getStreamId",
        "setStreamId",
        "convertParam",
        "",
        "jsonObject",
        "Lcom/google/gson/JsonObject;",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private leftVolume:F

.field private loop:I

.field private priority:I

.field private rate:F

.field private resId:Ljava/lang/Integer;

.field private rightVolume:F

.field private src:Ljava/lang/String;

.field private streamId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->id:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->leftVolume:F

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rightVolume:F

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rate:F

    return-void
.end method


# virtual methods
.method public final convertParam(Lcom/google/gson/JsonObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "rate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rate:F

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :sswitch_1
    const-string v3, "src"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->src:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const-string v3, "volume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v3

    iput v3, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->leftVolume:F

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    iput v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rightVolume:F

    goto :goto_0

    :cond_7
    :goto_2
    return v0

    :sswitch_3
    const-string v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    if-gez v2, :cond_9

    return v0

    :cond_9
    iput v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->priority:I

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->src:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->src:Ljava/lang/String;

    if-eqz p1, :cond_c

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "http"

    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    return v1

    :cond_c
    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4577865c -> :sswitch_3
        -0x305518e6 -> :sswitch_2
        0x1bde4 -> :sswitch_1
        0x354ce0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLeftVolume()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->leftVolume:F

    return v0
.end method

.method public final getLoop()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->loop:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->priority:I

    return v0
.end method

.method public final getRate()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rate:F

    return v0
.end method

.method public final getResId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->resId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRightVolume()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rightVolume:F

    return v0
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->src:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->streamId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->id:Ljava/lang/String;

    return-void
.end method

.method public final setLeftVolume(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->leftVolume:F

    return-void
.end method

.method public final setLoop(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->loop:I

    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->priority:I

    return-void
.end method

.method public final setRate(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rate:F

    return-void
.end method

.method public final setResId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->resId:Ljava/lang/Integer;

    return-void
.end method

.method public final setRightVolume(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rightVolume:F

    return-void
.end method

.method public final setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->src:Ljava/lang/String;

    return-void
.end method

.method public final setStreamId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->streamId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->id:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->loop:I

    iget v2, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->leftVolume:F

    iget v3, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rightVolume:F

    iget-object v4, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->src:Ljava/lang/String;

    iget v5, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->rate:F

    iget v6, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->priority:I

    iget-object v7, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->resId:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/cloud/tmc/integration/audio/AudioEffectClient$PlayConfig;->streamId:Ljava/lang/Integer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PlayConfig(id=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', loop="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", leftVolume="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", rightVolume="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", src="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rate="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streamId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
