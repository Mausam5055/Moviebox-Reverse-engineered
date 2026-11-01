.class public final synthetic Lry/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lry/e;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lry/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lry/d;->a:Lry/e;

    iput-object p2, p0, Lry/d;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lry/d;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lry/d;->a:Lry/e;

    iget-object v1, p0, Lry/d;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, p0, Lry/d;->c:Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lry/e;->c(Lry/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
