.class public Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field private static sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/logger/DefaultLogger;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/logger/DefaultLogger;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static disable()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static enable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    return v0
.end method

.method public static redirect(Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->sLogger:Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
