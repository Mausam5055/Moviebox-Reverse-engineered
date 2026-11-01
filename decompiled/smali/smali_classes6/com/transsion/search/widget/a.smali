.class public final synthetic Lcom/transsion/search/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/search/widget/AccurateSubjectView;

.field public final synthetic b:Lcom/transsion/search/bean/SearchSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/widget/AccurateSubjectView;Lcom/transsion/search/bean/SearchSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/widget/a;->a:Lcom/transsion/search/widget/AccurateSubjectView;

    iput-object p2, p0, Lcom/transsion/search/widget/a;->b:Lcom/transsion/search/bean/SearchSubject;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/widget/a;->a:Lcom/transsion/search/widget/AccurateSubjectView;

    iget-object v1, p0, Lcom/transsion/search/widget/a;->b:Lcom/transsion/search/bean/SearchSubject;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/search/widget/AccurateSubjectView;->h(Lcom/transsion/search/widget/AccurateSubjectView;Lcom/transsion/search/bean/SearchSubject;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
