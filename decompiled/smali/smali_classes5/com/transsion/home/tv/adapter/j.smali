.class public final synthetic Lcom/transsion/home/tv/adapter/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/tv/adapter/k;

.field public final synthetic b:Lcom/transsion/home/tv/bean/TvChannelItem;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/tv/adapter/k;Lcom/transsion/home/tv/bean/TvChannelItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/adapter/j;->a:Lcom/transsion/home/tv/adapter/k;

    iput-object p2, p0, Lcom/transsion/home/tv/adapter/j;->b:Lcom/transsion/home/tv/bean/TvChannelItem;

    iput-object p3, p0, Lcom/transsion/home/tv/adapter/j;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/tv/adapter/j;->a:Lcom/transsion/home/tv/adapter/k;

    iget-object v1, p0, Lcom/transsion/home/tv/adapter/j;->b:Lcom/transsion/home/tv/bean/TvChannelItem;

    iget-object v2, p0, Lcom/transsion/home/tv/adapter/j;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/tv/adapter/k;->y(Lcom/transsion/home/tv/adapter/k;Lcom/transsion/home/tv/bean/TvChannelItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
