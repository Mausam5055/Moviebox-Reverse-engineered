.class public final synthetic Lcom/transsion/search/fragment/hot/adapter/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/hot/adapter/h;

.field public final synthetic b:Lcom/transsion/search/bean/HotSubject;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/hot/adapter/h;Lcom/transsion/search/bean/HotSubject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/adapter/g;->a:Lcom/transsion/search/fragment/hot/adapter/h;

    iput-object p2, p0, Lcom/transsion/search/fragment/hot/adapter/g;->b:Lcom/transsion/search/bean/HotSubject;

    iput p3, p0, Lcom/transsion/search/fragment/hot/adapter/g;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/adapter/g;->a:Lcom/transsion/search/fragment/hot/adapter/h;

    iget-object v1, p0, Lcom/transsion/search/fragment/hot/adapter/g;->b:Lcom/transsion/search/bean/HotSubject;

    iget v2, p0, Lcom/transsion/search/fragment/hot/adapter/g;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/search/fragment/hot/adapter/h;->B1(Lcom/transsion/search/fragment/hot/adapter/h;Lcom/transsion/search/bean/HotSubject;ILandroid/view/View;)V

    return-void
.end method
