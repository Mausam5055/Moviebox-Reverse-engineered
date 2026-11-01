.class public final synthetic Lly/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lly/f;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lly/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly/d;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lly/d;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p3, p0, Lly/d;->c:Lly/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lly/d;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lly/d;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v2, p0, Lly/d;->c:Lly/f;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lly/f;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/baselib/db/download/DownloadBean;Lly/f;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
