.class public final synthetic Lcom/transsion/player/longvideo/member/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/member/ResolutionAdView;

.field public final synthetic b:Lcom/transsion/memberapi/MemberCheckResult;

.field public final synthetic c:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/member/ResolutionAdView;Lcom/transsion/memberapi/MemberCheckResult;Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/m;->a:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/member/m;->b:Lcom/transsion/memberapi/MemberCheckResult;

    iput-object p3, p0, Lcom/transsion/player/longvideo/member/m;->c:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/m;->a:Lcom/transsion/player/longvideo/member/ResolutionAdView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/m;->b:Lcom/transsion/memberapi/MemberCheckResult;

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/m;->c:Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;->d0(Lcom/transsion/player/longvideo/member/ResolutionAdView;Lcom/transsion/memberapi/MemberCheckResult;Lcom/transsion/player/longvideo/member/ResolutionUnlockFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
