.class public Lcom/transsion/athena/attribution/AttrLog;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AthenaAttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AthenaAttr"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "AthenaAttr"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
