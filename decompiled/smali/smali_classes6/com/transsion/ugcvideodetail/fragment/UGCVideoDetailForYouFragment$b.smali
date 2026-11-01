.class public final Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 11

    iget-object p4, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$b;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p4}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->n0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;)Lcom/transsion/ugcvideodetail/adapter/f;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p4}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->o0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    move-object v0, v4

    :goto_0
    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    invoke-static {p4}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->p0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->C0()Ljava/lang/String;

    move-result-object p4

    move-object v8, p4

    goto :goto_1

    :cond_2
    move-object v8, v4

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->A0()Ljava/lang/String;

    move-result-object p4

    move-object v9, p4

    goto :goto_2

    :cond_3
    move-object v9, v4

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->z0()Ljava/lang/String;

    move-result-object p4

    move-object v10, p4

    goto :goto_3

    :cond_4
    move-object v10, v4

    :goto_3
    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v10}, Lcom/transsion/ugcvideodetail/hepler/h;->d(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-void
.end method
