.class public final Lcom/transsion/ugcvideodetail/hepler/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/g;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lsj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->g:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 11

    iget-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->a:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->f:Ljava/lang/String;

    iget-object v10, p0, Lcom/transsion/ugcvideodetail/hepler/g$a;->g:Ljava/lang/Boolean;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->a0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->e0(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v10}, Lcom/transsion/ugcvideodetail/hepler/h;->g(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
