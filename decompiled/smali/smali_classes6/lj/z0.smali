.class public final synthetic Llj/z0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Llj/c1;

.field public final synthetic b:Lcom/transsion/baselib/db/download/SubtitleBean;


# direct methods
.method public synthetic constructor <init>(Llj/c1;Lcom/transsion/baselib/db/download/SubtitleBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/z0;->a:Llj/c1;

    iput-object p2, p0, Llj/z0;->b:Lcom/transsion/baselib/db/download/SubtitleBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/z0;->a:Llj/c1;

    iget-object v1, p0, Llj/z0;->b:Lcom/transsion/baselib/db/download/SubtitleBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Llj/c1;->i(Llj/c1;Lcom/transsion/baselib/db/download/SubtitleBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
