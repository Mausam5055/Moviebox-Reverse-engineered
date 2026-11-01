.class public final Lcom/danikula/videocache/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/danikula/videocache/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Download_VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/danikula/videocache/q;->a:Z

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/danikula/videocache/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Download_VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/danikula/videocache/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Download_VideoCache"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
