.class public final synthetic Ltv/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Ltv/e;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;


# direct methods
.method public synthetic constructor <init>(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/d;->a:Ltv/e;

    iput-object p2, p0, Ltv/d;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ltv/d;->a:Ltv/e;

    iget-object v1, p0, Ltv/d;->b:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Ltv/e;->a(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
