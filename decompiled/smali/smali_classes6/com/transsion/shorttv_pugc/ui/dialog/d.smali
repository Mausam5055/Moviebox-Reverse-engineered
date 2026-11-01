.class public final synthetic Lcom/transsion/shorttv_pugc/ui/dialog/d;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/transsion/shorttv_pugc/ui/adapter/r;

.field public final synthetic d:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/ui/adapter/r;Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->c:Lcom/transsion/shorttv_pugc/ui/adapter/r;

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->d:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;

    iput-object p5, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->c:Lcom/transsion/shorttv_pugc/ui/adapter/r;

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->d:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;

    iget-object v4, p0, Lcom/transsion/shorttv_pugc/ui/dialog/d;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->i0(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/ui/adapter/r;Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
