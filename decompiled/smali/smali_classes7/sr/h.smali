.class public final synthetic Lsr/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;Landroid/view/View;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/h;->a:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

    iput-object p2, p0, Lsr/h;->b:Landroid/view/View;

    iput-object p3, p0, Lsr/h;->c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    iput-object p4, p0, Lsr/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lsr/h;->a:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

    iget-object v1, p0, Lsr/h;->b:Landroid/view/View;

    iget-object v2, p0, Lsr/h;->c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    iget-object v3, p0, Lsr/h;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;->a(Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;Landroid/view/View;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
