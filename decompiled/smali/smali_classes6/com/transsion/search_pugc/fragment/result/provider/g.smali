.class public final synthetic Lcom/transsion/search_pugc/fragment/result/provider/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;

.field public final synthetic b:Lcom/transsion/search_pugc/fragment/result/adapter/a;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic e:Lcom/transsion/search_pugc/fragment/result/provider/k;

.field public final synthetic f:Lcom/transsion/search_pugc/bean/SearchResultItem;

.field public final synthetic g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->a:Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->b:Lcom/transsion/search_pugc/fragment/result/adapter/a;

    iput-object p3, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->e:Lcom/transsion/search_pugc/fragment/result/provider/k;

    iput-object p6, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->f:Lcom/transsion/search_pugc/bean/SearchResultItem;

    iput-object p7, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->a:Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->b:Lcom/transsion/search_pugc/fragment/result/adapter/a;

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->e:Lcom/transsion/search_pugc/fragment/result/provider/k;

    iget-object v5, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->f:Lcom/transsion/search_pugc/bean/SearchResultItem;

    iget-object v6, p0, Lcom/transsion/search_pugc/fragment/result/provider/g;->g:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/transsion/search_pugc/fragment/result/provider/k;->y(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
