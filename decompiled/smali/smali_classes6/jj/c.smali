.class public final synthetic Ljj/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljj/j;

.field public final synthetic b:Lcom/transsion/baselib/db/audio/AudioBean;


# direct methods
.method public synthetic constructor <init>(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj/c;->a:Ljj/j;

    iput-object p2, p0, Ljj/c;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljj/c;->a:Ljj/j;

    iget-object v1, p0, Ljj/c;->b:Lcom/transsion/baselib/db/audio/AudioBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Ljj/j;->o(Ljj/j;Lcom/transsion/baselib/db/audio/AudioBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
