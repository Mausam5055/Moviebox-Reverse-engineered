.class public abstract Ljs/b;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lcom/transsion/shorttv/bean/PreVideoAddress;)Lcom/transsion/shorttv/bean/Video;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv/bean/Video;

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getBitrate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getDefinition()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getFps()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getHeight()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getWidth()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/PreVideoAddress;->getResolution()Ljava/lang/String;

    move-result-object p0

    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/transsion/shorttv/bean/Video;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method
