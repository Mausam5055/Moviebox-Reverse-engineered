.class public final synthetic Lcom/transsnet/downloader/core/thread/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/core/thread/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/core/thread/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/core/thread/a;->a:Lcom/transsnet/downloader/core/thread/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/core/thread/a;->a:Lcom/transsnet/downloader/core/thread/b;

    invoke-static {v0}, Lcom/transsnet/downloader/core/thread/b;->a(Lcom/transsnet/downloader/core/thread/b;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
