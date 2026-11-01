.class public final synthetic Lcom/transsnet/downloader/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/util/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/util/g;->a:Ljava/lang/String;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;->a(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
