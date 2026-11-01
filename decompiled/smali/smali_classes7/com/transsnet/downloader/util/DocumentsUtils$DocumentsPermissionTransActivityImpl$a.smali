.class public final Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;->d(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private static final d(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "extra_root_path"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final b()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "rootPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/util/g;

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/util/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;->b()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->T(Lcom/blankj/utilcode/util/Utils$b;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    return-void
.end method
