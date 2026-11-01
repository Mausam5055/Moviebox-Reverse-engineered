.class public final synthetic Llj/g1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Llj/h1;

.field public final synthetic b:Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;


# direct methods
.method public synthetic constructor <init>(Llj/h1;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/g1;->a:Llj/h1;

    iput-object p2, p0, Llj/g1;->b:Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/g1;->a:Llj/h1;

    iget-object v1, p0, Llj/g1;->b:Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Llj/h1;->d(Llj/h1;Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
