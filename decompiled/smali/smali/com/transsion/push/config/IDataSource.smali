.class public interface abstract Lcom/transsion/push/config/IDataSource;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getClientId(Lcom/transsion/push/IClientIdListener;)V
.end method

.method public abstract getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;
.end method

.method public abstract getReportTime()J
.end method

.method public abstract getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getWhiteList()Lcom/transsion/push/bean/ConfigInfo$Whitelist;
.end method

.method public abstract isReported()Z
.end method

.method public abstract putSpValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract removeSpValue(Ljava/lang/String;)V
.end method

.method public abstract saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V
.end method

.method public abstract saveReportTime(J)V
.end method

.method public abstract saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V
.end method

.method public abstract subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
.end method

.method public abstract syncActive()V
.end method

.method public abstract syncSelfDestroying()V
.end method

.method public abstract unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
.end method

.method public abstract updateNewToken(Ljava/lang/String;)V
.end method
