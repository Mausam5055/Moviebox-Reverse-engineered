.class public final Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/lib_web/download_render/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e(Ljava/lang/String;)V

    return-void
.end method
