.class public Lcom/meituan/android/walle/WalleChannelReader;
.super Ljava/lang/Object;


# static fields
.field private static volatile sCachedFlavor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/meituan/android/walle/WalleChannelReader;->sCachedFlavor:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/meituan/android/walle/WalleChannelReader;->sCachedFlavor:Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "gp"

    return-object p0

    :cond_1
    sget v0, Lcom/transsion/subroom/R$string;->walle_flavor:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/meituan/android/walle/WalleChannelReader;->sCachedFlavor:Ljava/lang/String;

    sget-object p0, Lcom/meituan/android/walle/WalleChannelReader;->sCachedFlavor:Ljava/lang/String;

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static getChannelInfoMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
