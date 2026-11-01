.class public final synthetic Lcom/cloud/tmc/miniapp/nativewebview/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/i;->a:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/i;->a:Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
