.class public final synthetic Lsr/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

.field public final synthetic b:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

.field public final synthetic c:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/f;->a:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    iput-object p2, p0, Lsr/f;->b:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    iput-object p3, p0, Lsr/f;->c:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    iput p4, p0, Lsr/f;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lsr/f;->a:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    iget-object v1, p0, Lsr/f;->b:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    iget-object v2, p0, Lsr/f;->c:Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    iget v3, p0, Lsr/f;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->g(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V

    return-void
.end method
