.class public final synthetic Lcom/transsion/subtitle/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/l;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    iput-object p2, p0, Lcom/transsion/subtitle/l;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/subtitle/l;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/subtitle/l;->a:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    iget-object v1, p0, Lcom/transsion/subtitle/l;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/transsion/subtitle/l;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->o(Lcom/transsion/subtitle/VideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
