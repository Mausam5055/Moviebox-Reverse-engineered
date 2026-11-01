.class public final Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lzx/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->h(Landroidx/fragment/app/FragmentManager;Lcom/transsion/memberapi/MemberSource;Lgo/a;Ljava/lang/String;Lzx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgo/a;

.field final synthetic b:Lzx/e;


# direct methods
.method constructor <init>(Lgo/a;Lzx/e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->a:Lgo/a;

    iput-object p2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->b:Lzx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->a:Lgo/a;

    iget-object v2, p0, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1;->b:Lzx/e;

    const/4 v3, 0x0

    invoke-direct {v4, p1, v0, v2, v3}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager$showRewardDialog$1$1$onActivate$1;-><init>(ZLgo/a;Lzx/e;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
