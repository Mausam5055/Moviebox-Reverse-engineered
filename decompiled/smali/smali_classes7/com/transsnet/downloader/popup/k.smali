.class public final synthetic Lcom/transsnet/downloader/popup/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/popup/k;->a:Lcom/transsnet/downloader/popup/PopupManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/popup/k;->a:Lcom/transsnet/downloader/popup/PopupManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->g(Lcom/transsnet/downloader/popup/PopupManager;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
