.class public final synthetic Llj/p0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Llj/r0;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadRange;


# direct methods
.method public synthetic constructor <init>(Llj/r0;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/p0;->a:Llj/r0;

    iput-object p2, p0, Llj/p0;->b:Lcom/transsion/baselib/db/download/DownloadRange;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/p0;->a:Llj/r0;

    iget-object v1, p0, Llj/p0;->b:Lcom/transsion/baselib/db/download/DownloadRange;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Llj/r0;->e(Llj/r0;Lcom/transsion/baselib/db/download/DownloadRange;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
