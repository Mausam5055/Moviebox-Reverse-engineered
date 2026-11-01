.class public final Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a;->a(Lcom/transsion/memberapi/MemberCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

.field final synthetic b:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->b:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> llUnlockBtn{} --> ka\u5f00\u901a\u4f1a\u5458\u5931\u8d25 --> \u5546\u4e1a\u5316\u903b\u8f91"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->b:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v0, "getSupportFragmentManager(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/memberapi/MemberSource;->SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR:Lcom/transsion/memberapi/MemberSource;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getBean$p(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Lgo/a;

    move-result-object v5

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getPageName$p(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a$a;

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-direct {v7, v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a$a;-><init>(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->h(Landroidx/fragment/app/FragmentManager;Lcom/transsion/memberapi/MemberSource;Lgo/a;Ljava/lang/String;Lzx/e;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$unlock(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)V

    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    iget-object v1, p0, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView$a$a;->a:Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;->access$getClassTag(Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> llUnlockBtn{} --> ka\u5f00\u901a\u4f1a\u5458\u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    return-void
.end method
