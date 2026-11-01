.class public final synthetic Lcom/transsion/postdetail/ui/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/expand/ExpandView;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field public final synthetic e:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/k;->a:Lcom/tn/lib/view/expand/ExpandView;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/k;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/k;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/transsion/postdetail/ui/view/k;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iput-object p5, p0, Lcom/transsion/postdetail/ui/view/k;->e:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/k;->a:Lcom/tn/lib/view/expand/ExpandView;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/k;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/k;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/k;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/k;->e:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    move-object v5, p1

    check-cast v5, Landroid/view/View;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
