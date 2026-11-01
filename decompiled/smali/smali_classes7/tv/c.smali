.class public final synthetic Ltv/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Ltv/e;


# direct methods
.method public synthetic constructor <init>(Ltv/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/c;->a:Ltv/e;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltv/c;->a:Ltv/e;

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;

    invoke-static {v0, p1}, Ltv/e;->b(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V

    return-void
.end method
