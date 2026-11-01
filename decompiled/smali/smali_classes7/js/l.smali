.class public abstract Ljs/l;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljs/e;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final b(Ljs/e;)Z
    .locals 0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
