.class public Lc5/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/glassfish/jersey/internal/spi/AutoDiscoverable;


# static fields
.field public static volatile a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "fastjson.auto.discoverable"

    sget-boolean v1, Lc5/a;->a:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc5/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
