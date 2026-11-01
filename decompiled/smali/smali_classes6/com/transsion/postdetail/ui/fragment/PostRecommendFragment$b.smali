.class public final Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 7

    iget-object p4, p0, Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p4}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/postdetail/ui/adapter/f;

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v0, Lsj/b;->j:Lsj/b$a;

    invoke-virtual {v0}, Lsj/b$a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exposure position  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;->V0(Lcom/transsion/postdetail/ui/fragment/PostRecommendFragment;)Lto/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/transsion/baseui/fragment/BaseListFragment;->p0()Lcom/chad/library/adapter/base/BaseQuickAdapter;

    move-result-object p4

    const-string v1, "null cannot be cast to non-null type com.transsion.postdetail.ui.adapter.PostRecommendAdapter"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/transsion/postdetail/ui/adapter/f;

    invoke-virtual {v0, p4, p1, p2, p3}, Lto/a;->a(Lcom/transsion/postdetail/ui/adapter/f;IJ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
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
