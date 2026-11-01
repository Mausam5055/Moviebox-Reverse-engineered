.class public final synthetic Lcom/transsnet/downloader/popup/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/d;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/d;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/transsnet/downloader/popup/d;->c:Z

    iput-object p4, p0, Lcom/transsnet/downloader/popup/d;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/popup/d;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/d;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsnet/downloader/popup/d;->c:Z

    iget-object v3, p0, Lcom/transsnet/downloader/popup/d;->d:Lkotlin/jvm/functions/Function2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/popup/PopupManager;->a(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
