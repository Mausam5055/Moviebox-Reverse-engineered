.class public final synthetic Llj/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Llj/l0;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public synthetic constructor <init>(Llj/l0;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/i0;->a:Llj/l0;

    iput-object p2, p0, Llj/i0;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/i0;->a:Llj/l0;

    iget-object v1, p0, Llj/i0;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Llj/l0;->i0(Llj/l0;Lcom/transsion/baselib/db/download/DownloadBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
