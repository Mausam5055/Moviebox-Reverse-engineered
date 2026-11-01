.class public final synthetic Lcom/transsion/videodetail/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;

.field public final synthetic b:Lcom/tn/lib/view/MemberGuideBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/tn/lib/view/MemberGuideBannerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/r;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/r;->b:Lcom/tn/lib/view/MemberGuideBannerView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/r;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/r;->b:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-static {v0, v1}, Lcom/transsion/videodetail/StreamDetailFragment;->w0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/tn/lib/view/MemberGuideBannerView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
