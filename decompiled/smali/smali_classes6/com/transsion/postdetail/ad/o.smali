.class public final synthetic Lcom/transsion/postdetail/ad/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hisavana/mediation/ad/TMediaView;

.field public final synthetic b:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ad/o;->a:Lcom/hisavana/mediation/ad/TMediaView;

    iput-object p2, p0, Lcom/transsion/postdetail/ad/o;->b:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ad/o;->a:Lcom/hisavana/mediation/ad/TMediaView;

    iget-object v1, p0, Lcom/transsion/postdetail/ad/o;->b:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    return-void
.end method
